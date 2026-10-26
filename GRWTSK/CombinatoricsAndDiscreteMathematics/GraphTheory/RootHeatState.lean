/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Rat.BigOperators
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false

/-!
# Root aggregation and finite rational heat

A supplied root map is the mathematical input to root compression. Aggregate
weights are exact fiber sums. Finite heat is a supplied column-stochastic
rational kernel; mass and nonnegativity are proved, including at every iterate.
No discovery of graph roots, continuum heat limit or spectral-gap assumption is
hidden in the definitions. Priority compares current root heat, so a scheduling
implementation must retain the current state as well as the root identities.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState

open scoped BigOperators

variable {Vertex Root : Type*}

section Aggregation

variable [Fintype Vertex] [Fintype Root] [DecidableEq Root]

/-- Push each vertex weight to its supplied root, without losing fiber mass. -/
def aggregate (root : Vertex → Root) (weight : Vertex → ℚ) (r : Root) : ℚ :=
  ∑ vertex, if root vertex = r then weight vertex else 0

omit [Fintype Root] in
theorem aggregate_nonneg (root : Vertex → Root) (weight : Vertex → ℚ)
    (nonnegative : ∀ vertex, 0 ≤ weight vertex) (r : Root) :
    0 ≤ aggregate root weight r := by
  apply Finset.sum_nonneg
  intro vertex _
  split_ifs <;> simp_all

/-- Replacing a forest by its roots preserves total weight exactly. -/
theorem aggregate_mass (root : Vertex → Root) (weight : Vertex → ℚ) :
    ∑ r, aggregate root weight r = ∑ vertex, weight vertex := by
  unfold aggregate
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro vertex _
  simp

end Aggregation

/-- Nonnegative rational transport with one unit of outgoing mass per source. -/
structure HeatKernel (Root : Type*) [Fintype Root] where
  transition : Root → Root → ℚ
  nonnegative : ∀ target source, 0 ≤ transition target source
  stochastic : ∀ source, ∑ target, transition target source = 1

namespace HeatKernel

variable [Fintype Root]

/-- One exact finite Markov heat step. The first kernel index is the target. -/
def step (kernel : HeatKernel Root) (heat : Root → ℚ) (target : Root) : ℚ :=
  ∑ source, kernel.transition target source * heat source

theorem step_nonneg (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root) (target : Root) :
    0 ≤ kernel.step heat target := by
  exact Finset.sum_nonneg (fun source _ =>
    mul_nonneg (kernel.nonnegative target source) (nonnegative source))

/-- No heat is lost or created by a stochastic update. -/
theorem step_mass (kernel : HeatKernel Root) (heat : Root → ℚ) :
    ∑ target, kernel.step heat target = ∑ source, heat source := by
  unfold step
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro source _
  rw [← Finset.sum_mul, kernel.stochastic, one_mul]

/-- The exact state at a discrete heat time. -/
def evolve (kernel : HeatKernel Root) (initial : Root → ℚ) : Nat → Root → ℚ
  | 0 => initial
  | time + 1 => kernel.step (kernel.evolve initial time)

theorem evolve_nonneg (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root) (time : Nat) :
    ∀ root, 0 ≤ kernel.evolve initial time root := by
  induction time with
  | zero => exact nonnegative
  | succ time previous => exact kernel.step_nonneg _ previous

theorem evolve_mass (kernel : HeatKernel Root) (initial : Root → ℚ) (time : Nat) :
    ∑ root, kernel.evolve initial time root = ∑ root, initial root := by
  induction time with
  | zero => rfl
  | succ time previous => exact (kernel.step_mass _).trans previous

end HeatKernel

/-!
## Finite weighted diffusion and type coverage

Here a type is a separately selected label on the finite heat-state carrier.
Type completeness means positive *aggregated* heat in each declared type.
A transition is a supplied stochastic kernel, not automatically a number-
theoretic sieve. Quantitative steering below is an explicit incoming-edge
lower bound; it is not derived from K₀, radical support, or asymptotic mixing.
-/

section TypeDiffusion

variable {Kind : Type*} [Fintype Root] [Fintype Kind] [DecidableEq Kind]

/-- Every selected type receives strictly positive current heat. -/
def TypeCompleteAt (typeOf : Root → Kind) (heat : Root → ℚ) : Prop :=
  ∀ kind, 0 < aggregate typeOf heat kind

/-- An actual weighted transition contributes its exact product to the
type-aggregated heat at its destination. Nonnegative other contributions
are retained rather than discarded without an inequality. -/
theorem aggregate_step_lower_of_edge
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (source target : Root) :
    kernel.transition target source * heat source ≤
      aggregate typeOf (kernel.step heat) (typeOf target) := by
  have hstep :
      kernel.transition target source * heat source ≤ kernel.step heat target := by
    unfold HeatKernel.step
    exact Finset.single_le_sum
      (fun root _ => mul_nonneg (kernel.nonnegative target root) (nonnegative root))
      (Finset.mem_univ source)
  have htype :
      kernel.step heat target ≤ aggregate typeOf (kernel.step heat) (typeOf target) := by
    have hsum :
        (if typeOf target = typeOf target then kernel.step heat target else 0) ≤
          ∑ root, if typeOf root = typeOf target then kernel.step heat root else 0 := by
      exact Finset.single_le_sum
        (fun root _ => by
          split_ifs
          · exact kernel.step_nonneg heat nonnegative root
          · exact le_refl 0)
        (Finset.mem_univ target)
    simpa [aggregate] using hsum
  exact le_trans hstep htype

/-- A selected incoming edge with bounded weighted heat for every type.
This is a supplier condition, not a theorem derived from an arbitrary sieve. -/
def HasWeightedSteeringBound
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (typeOf : Root → Kind) (epsilon : ℚ) : Prop :=
  ∀ kind, ∃ source target, typeOf target = kind ∧
    epsilon ≤ kernel.transition target source * heat source

/-- Quantitative type-mass lower bound from the actual selected transition
and current heat, with a nonnegative remainder on all other states. -/
theorem type_mass_lower_of_steering
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (epsilon : ℚ)
    (steering : HasWeightedSteeringBound kernel heat typeOf epsilon)
    (kind : Kind) :
    epsilon ≤ aggregate typeOf (kernel.step heat) kind := by
  obtain ⟨source, target, hkind, hbound⟩ := steering kind
  calc
    epsilon ≤ kernel.transition target source * heat source := hbound
    _ ≤ aggregate typeOf (kernel.step heat) (typeOf target) :=
      aggregate_step_lower_of_edge kernel heat nonnegative typeOf source target
    _ = aggregate typeOf (kernel.step heat) kind := by rw [hkind]

/-- A uniform strictly positive steering bound proves one-step coverage of
every type. No unproved spectral or analytic mixing result is used. -/
theorem type_complete_at_of_steering
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (epsilon : ℚ) (epsilon_pos : 0 < epsilon)
    (steering : HasWeightedSteeringBound kernel heat typeOf epsilon) :
    TypeCompleteAt typeOf (kernel.step heat) := by
  intro kind
  exact lt_of_lt_of_le epsilon_pos
    (type_mass_lower_of_steering kernel heat nonnegative typeOf epsilon steering kind)

/-- If a uniform steering budget is supplied at every sufficiently late
time, every *subsequent* time has complete positive type support.
Proving the steering budget for a concrete weighted sieve is still open. -/
theorem eventually_type_complete_of_steering
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (epsilon : ℚ) (epsilon_pos : 0 < epsilon)
    (start : Nat)
    (steering : ∀ time, start ≤ time →
      HasWeightedSteeringBound kernel (kernel.evolve initial time) typeOf epsilon) :
    ∀ time, start ≤ time →
      TypeCompleteAt typeOf (kernel.evolve initial (time + 1)) := by
  intro time htime
  change TypeCompleteAt typeOf (kernel.step (kernel.evolve initial time))
  exact type_complete_at_of_steering kernel (kernel.evolve initial time)
    (kernel.evolve_nonneg initial nonnegative time)
    typeOf epsilon epsilon_pos (steering time htime)

/-- A label absent from the finite state carrier cannot acquire mass merely
by iterating a kernel on that same carrier. -/
theorem not_type_complete_of_missing_label
    (typeOf : Root → Kind) (heat : Root → ℚ)
    (missing : Kind) (absent : ∀ root, typeOf root ≠ missing) :
    ¬ TypeCompleteAt typeOf heat := by
  intro complete
  have hzero : aggregate typeOf heat missing = 0 := by
    simp [aggregate, absent]
  have hpos : 0 < aggregate typeOf heat missing := complete missing
  rw [hzero] at hpos
  exact (lt_irrefl (0 : ℚ)) hpos

/-- Exact type completeness requires surjectivity of the type labeling.
It does not assert a converse without a positive-heat supplier. -/
theorem surjective_of_type_complete
    (typeOf : Root → Kind) (heat : Root → ℚ)
    (complete : TypeCompleteAt typeOf heat) :
    Function.Surjective typeOf := by
  intro kind
  by_contra notCovered
  have absent : ∀ root, typeOf root ≠ kind := by
    intro root same
    exact notCovered ⟨root, same⟩
  exact (not_type_complete_of_missing_label typeOf heat kind absent) complete

end TypeDiffusion

/-! ### Explicit rational minorization supplier

This is a sufficient condition on the actual rational kernel, not a
number-theoretic weighted-sieve theorem or a claim about real Gibbs kernels.
-/

section UniformMinorization

variable {Kind : Type*} [Fintype Root] [Fintype Kind] [DecidableEq Kind]

/-- A Doeblin-style lower bound for every target coordinate. -/
def UniformMinorization (kernel : HeatKernel Root) (delta : ℚ) : Prop :=
  ∀ target source, delta ≤ kernel.transition target source

/-- Pointwise minorization implies a lower bound at every target. -/
theorem step_lower_of_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (delta : ℚ) (minor : UniformMinorization kernel delta)
    (target : Root) :
    delta * (∑ source, heat source) ≤ kernel.step heat target := by
  unfold HeatKernel.step
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro source _
  exact mul_le_mul_of_nonneg_right (minor target source) (nonnegative source)

/-- If total heat is positive and each type has a representative, a
strictly positive uniform kernel minorization gives positive heat in
every type after one step. -/
theorem type_complete_of_uniform_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (surj : Function.Surjective typeOf)
    (delta : ℚ) (delta_pos : 0 < delta)
    (mass_pos : 0 < ∑ root, heat root)
    (minor : UniformMinorization kernel delta) :
    TypeCompleteAt typeOf (kernel.step heat) := by
  intro kind
  obtain ⟨target, htarget⟩ := surj kind
  have hpoint := step_lower_of_minorization kernel heat nonnegative delta minor target
  have htype := aggregate_step_lower_of_edge kernel heat nonnegative typeOf target target
  have hpositive : 0 < kernel.step heat target :=
    lt_of_lt_of_le (mul_pos delta_pos mass_pos) hpoint
  have hsum : kernel.step heat target ≤
      aggregate typeOf (kernel.step heat) (typeOf target) := by
    have hsingle :
        (if typeOf target = typeOf target then kernel.step heat target else 0) ≤
          ∑ root, if typeOf root = typeOf target then kernel.step heat root else 0 := by
      exact Finset.single_le_sum
        (fun root _ => by
          split_ifs
          · exact kernel.step_nonneg heat nonnegative root
          · exact le_refl 0)
        (Finset.mem_univ target)
    simpa [aggregate] using hsingle
  rw [htarget] at hsum
  exact lt_of_lt_of_le hpositive hsum

/-- A positive uniform kernel minorization and conserved positive total heat
supply type completeness after every positive diffusion time, without
postulating a new steering witness at each time. The uniform minorization
of the actual kernel remains an explicit, unproved arithmetic supplier. -/
theorem eventually_type_complete_of_uniform_minorization
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (surj : Function.Surjective typeOf)
    (delta : ℚ) (delta_pos : 0 < delta)
    (mass_pos : 0 < ∑ root, initial root)
    (minor : UniformMinorization kernel delta)
    (time : Nat) :
    TypeCompleteAt typeOf (kernel.evolve initial (time + 1)) := by
  change TypeCompleteAt typeOf (kernel.step (kernel.evolve initial time))
  apply type_complete_of_uniform_minorization kernel
    (kernel.evolve initial time)
    (kernel.evolve_nonneg initial nonnegative time)
    typeOf surj delta delta_pos
  · rw [kernel.evolve_mass initial time]
    exact mass_pos
  · exact minor

/-!
### Type-representative minorization

This is weaker than uniform positivity of every matrix entry: only one
representative destination per declared type needs a common positive
incoming bound from every source.
-/

/-- A designated target in each type receives at least delta from each
source. Other targets may have zero incoming transition weights. -/
def RepresentativeMinorization
    (kernel : HeatKernel Root) (typeOf : Root → Kind) (delta : ℚ) : Prop :=
  ∀ kind, ∃ target, typeOf target = kind ∧
    ∀ source, delta ≤ kernel.transition target source

/-- The lower bound at a single target only requires that target's row,
not the entire kernel, to be minorized. -/
theorem step_lower_of_target_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (delta : ℚ) (target : Root)
    (minor : ∀ source, delta ≤ kernel.transition target source) :
    delta * (∑ source, heat source) ≤ kernel.step heat target := by
  unfold HeatKernel.step
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro source _
  exact mul_le_mul_of_nonneg_right (minor source) (nonnegative source)

/-- A representative destination per type is enough for positive
type mass after one step. No source-to-type decoding is inferred. -/
theorem type_complete_of_representative_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind)
    (delta : ℚ) (delta_pos : 0 < delta)
    (mass_pos : 0 < ∑ root, heat root)
    (minor : RepresentativeMinorization kernel typeOf delta) :
    TypeCompleteAt typeOf (kernel.step heat) := by
  intro kind
  obtain ⟨target, htarget, hminor⟩ := minor kind
  have hpoint := step_lower_of_target_minorization kernel heat
    nonnegative delta target hminor
  have hpositive : 0 < kernel.step heat target :=
    lt_of_lt_of_le (mul_pos delta_pos mass_pos) hpoint
  have hsum : kernel.step heat target ≤
      aggregate typeOf (kernel.step heat) (typeOf target) := by
    have hsingle :
        (if typeOf target = typeOf target then kernel.step heat target else 0) ≤
          ∑ root, if typeOf root = typeOf target then kernel.step heat root else 0 := by
      exact Finset.single_le_sum
        (fun root _ => by
          split_ifs
          · exact kernel.step_nonneg heat nonnegative root
          · exact le_refl 0)
        (Finset.mem_univ target)
    simpa [aggregate] using hsingle
  rw [htarget] at hsum
  exact lt_of_lt_of_le hpositive hsum

/-- A fixed representative minorization gives coverage after every
positive time, by conservation of total heat. -/
theorem eventually_type_complete_of_representative_minorization
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind)
    (delta : ℚ) (delta_pos : 0 < delta)
    (mass_pos : 0 < ∑ root, initial root)
    (minor : RepresentativeMinorization kernel typeOf delta)
    (time : Nat) :
    TypeCompleteAt typeOf (kernel.evolve initial (time + 1)) := by
  change TypeCompleteAt typeOf (kernel.step (kernel.evolve initial time))
  apply type_complete_of_representative_minorization kernel
    (kernel.evolve initial time)
    (kernel.evolve_nonneg initial nonnegative time)
    typeOf delta delta_pos
  · rw [kernel.evolve_mass initial time]
    exact mass_pos
  · exact minor

/-! ### Single-source steering with retained anchor heat

Unlike representative minorization, only transitions from one selected source
need to reach each type. The quantitative lower bound on heat at that source
is a separate supplier and cannot follow from conservation alone.
-/

/-- A single source has a uniformly positive outgoing edge into each type. -/
def AnchorTypeMinorization
    (kernel : HeatKernel Root) (typeOf : Root → Kind)
    (anchor : Root) (delta : ℚ) : Prop :=
  ∀ kind, ∃ target, typeOf target = kind ∧
    delta ≤ kernel.transition target anchor

/-- An anchor with retained positive heat turns outgoing type-edge bounds
into the previously defined weighted steering certificate. -/
theorem steering_of_anchor_type_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (anchor : Root)
    (delta massFloor : ℚ)
    (minor : AnchorTypeMinorization kernel typeOf anchor delta)
    (floor : massFloor ≤ heat anchor)
    (delta_nonneg : 0 ≤ delta) :
    HasWeightedSteeringBound kernel heat typeOf (delta * massFloor) := by
  intro kind
  obtain ⟨target, hkind, hdelta⟩ := minor kind
  refine ⟨anchor, target, hkind, ?_⟩
  calc
    delta * massFloor ≤ delta * heat anchor :=
      mul_le_mul_of_nonneg_left floor delta_nonneg
    _ ≤ kernel.transition target anchor * heat anchor :=
      mul_le_mul_of_nonneg_right hdelta (nonnegative anchor)

/-- Type coverage from one positively weighted source and a type-spanning
set of its outgoing transitions. -/
theorem type_complete_of_anchor_type_minorization
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (typeOf : Root → Kind) (anchor : Root)
    (delta massFloor : ℚ)
    (delta_pos : 0 < delta) (massFloor_pos : 0 < massFloor)
    (minor : AnchorTypeMinorization kernel typeOf anchor delta)
    (floor : massFloor ≤ heat anchor) :
    TypeCompleteAt typeOf (kernel.step heat) := by
  exact type_complete_at_of_steering kernel heat nonnegative typeOf
    (delta * massFloor) (mul_pos delta_pos massFloor_pos)
    (steering_of_anchor_type_minorization kernel heat nonnegative
      typeOf anchor delta massFloor minor floor (le_of_lt delta_pos))

/-- Eventual coverage requires the selected anchor to retain a positive
mass floor at all sufficiently late times. This is the missing
asymptotic-steering supplier, not a consequence of mass conservation. -/
theorem eventually_type_complete_of_anchor_type_minorization
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (delta massFloor : ℚ)
    (delta_pos : 0 < delta) (massFloor_pos : 0 < massFloor)
    (minor : AnchorTypeMinorization kernel typeOf anchor delta)
    (start : Nat)
    (retained : ∀ time, start ≤ time →
      massFloor ≤ kernel.evolve initial time anchor) :
    ∀ time, start ≤ time →
      TypeCompleteAt typeOf (kernel.evolve initial (time + 1)) := by
  intro time htime
  change TypeCompleteAt typeOf (kernel.step (kernel.evolve initial time))
  exact type_complete_of_anchor_type_minorization kernel
    (kernel.evolve initial time)
    (kernel.evolve_nonneg initial nonnegative time)
    typeOf anchor delta massFloor delta_pos massFloor_pos
    minor (retained time htime)

/-!
### Persistent positive anchor without a uniform mass floor

A positive self-loop prevents an initially positive anchor from becoming
exactly zero at any finite time. This proves positive type support at every
positive finite time but supplies no time-uniform quantitative lower bound.
-/

/-- A positive anchor self-loop preserves strict positivity for one step. -/
theorem anchor_positive_step_of_self_loop
    (kernel : HeatKernel Root) (heat : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ heat root)
    (anchor : Root)
    (self_pos : 0 < kernel.transition anchor anchor)
    (anchor_pos : 0 < heat anchor) :
    0 < kernel.step heat anchor := by
  have hsingle :
      kernel.transition anchor anchor * heat anchor ≤ kernel.step heat anchor := by
    unfold HeatKernel.step
    exact Finset.single_le_sum
      (fun source _ => mul_nonneg
        (kernel.nonnegative anchor source) (nonnegative source))
      (Finset.mem_univ anchor)
  exact lt_of_lt_of_le (mul_pos self_pos anchor_pos) hsingle

/-- Strict anchor positivity persists through every finite diffusion time
when the anchor has a strictly positive self-loop. -/
theorem anchor_positive_evolve_of_self_loop
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (anchor : Root)
    (self_pos : 0 < kernel.transition anchor anchor)
    (anchor_pos : 0 < initial anchor) :
    ∀ time, 0 < kernel.evolve initial time anchor := by
  intro time
  induction time with
  | zero =>
      simpa [HeatKernel.evolve] using anchor_pos
  | succ time ih =>
      change 0 < kernel.step (kernel.evolve initial time) anchor
      exact anchor_positive_step_of_self_loop kernel
        (kernel.evolve initial time)
        (kernel.evolve_nonneg initial nonnegative time)
        anchor self_pos ih

/-- A self-loop and type-spanning outgoing anchor edges give complete
type support after every positive finite time. No uniform-in-time lower
bound is claimed: the anchor heat may tend to zero asymptotically. -/
theorem all_positive_times_type_complete_of_anchor_self_loop
    (kernel : HeatKernel Root) (initial : Root → ℚ)
    (nonnegative : ∀ root, 0 ≤ initial root)
    (typeOf : Root → Kind) (anchor : Root)
    (delta : ℚ) (delta_pos : 0 < delta)
    (minor : AnchorTypeMinorization kernel typeOf anchor delta)
    (self_pos : 0 < kernel.transition anchor anchor)
    (anchor_pos : 0 < initial anchor) :
    ∀ time, TypeCompleteAt typeOf (kernel.evolve initial (time + 1)) := by
  intro time
  change TypeCompleteAt typeOf (kernel.step (kernel.evolve initial time))
  have hpos : 0 < kernel.evolve initial time anchor :=
    anchor_positive_evolve_of_self_loop kernel initial nonnegative
      anchor self_pos anchor_pos time
  exact type_complete_of_anchor_type_minorization kernel
    (kernel.evolve initial time)
    (kernel.evolve_nonneg initial nonnegative time)
    typeOf anchor delta (kernel.evolve initial time anchor)
    delta_pos hpos minor (le_refl _)

end UniformMinorization

/-- Root names plus the current exact heat are the retained prioritization state. -/
structure State (Root : Type*) where
  heat : Root → ℚ
  nonnegative : ∀ root, 0 ≤ heat root

namespace State

variable [Fintype Root]

/-- Heat updates do not alter the root carrier. -/
def advance (state : State Root) (kernel : HeatKernel Root) : State Root where
  heat := kernel.step state.heat
  nonnegative := kernel.step_nonneg _ state.nonnegative

/-- Higher current heat has higher priority; ties remain explicit. -/
def Prioritizes (state : State Root) (first second : Root) : Prop :=
  state.heat second ≤ state.heat first

omit [Fintype Root] in
theorem prioritizes_total (state : State Root) (first second : Root) :
    state.Prioritizes first second ∨ state.Prioritizes second first :=
  le_total _ _

omit [Fintype Root] in
theorem prioritizes_trans (state : State Root) {first middle last : Root}
    (firstMiddle : state.Prioritizes first middle)
    (middleLast : state.Prioritizes middle last) : state.Prioritizes first last :=
  le_trans middleLast firstMiddle

/-- Zero entries may be omitted from the current sparse heat representation. -/
def active (state : State Root) : Finset Root :=
  Finset.univ.filter (fun root => state.heat root ≠ 0)

/-- Sparse support pruning preserves the exact current heat at every root. -/
theorem active_heat [DecidableEq Root] (state : State Root) (root : Root) :
    (if root ∈ state.active then state.heat root else 0) = state.heat root := by
  by_cases nonzero : state.heat root = 0 <;> simp [active, nonzero]

/-- Only zero mass is omitted when current heat is stored on its active roots. -/
theorem active_mass (state : State Root) :
    ∑ root ∈ state.active, state.heat root = ∑ root, state.heat root := by
  rw [active, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro root _
  by_cases zero : state.heat root = 0 <;> simp [zero]

/-- Every currently active root has positive heat. This is a current-state fact;
future diffusion can give a previously zero root positive heat. -/
theorem active_iff_positive (state : State Root) (root : Root) :
    root ∈ state.active ↔ 0 < state.heat root := by
  simp only [active, Finset.mem_filter, Finset.mem_univ, true_and]
  exact ne_comm.trans (state.nonnegative root).lt_iff_ne.symm

/-- Aggregating a finite forest gives a valid nonnegative root state. -/
def ofForest [Fintype Vertex] [DecidableEq Root] (root : Vertex → Root)
    (weight : Vertex → ℚ) (nonnegative : ∀ vertex, 0 ≤ weight vertex) : State Root where
  heat := aggregate root weight
  nonnegative := aggregate_nonneg root weight nonnegative

/-- Root compression followed by any finite heat time preserves forest mass. -/
theorem forest_evolve_mass [Fintype Vertex] [DecidableEq Root]
    (root : Vertex → Root) (weight : Vertex → ℚ)
    (kernel : HeatKernel Root) (time : Nat) :
    ∑ r, kernel.evolve (aggregate root weight) time r = ∑ vertex, weight vertex :=
  (kernel.evolve_mass _ _).trans (aggregate_mass root weight)

end State

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
