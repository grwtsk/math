/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Finite admissible Gibbs sampler and path support

A finite directed transition relation, nonnegative cost, and a witnessed
outgoing edge at every vertex define an actual normalized finite Markov
kernel. Positive-weight sample paths follow admissible edges.

Nothing here says that a sampled path is closed, null-homotopic,
minimum-length, or a geometric geodesic. A probability-one statement about
a measure on complete paths would require a separately selected path-space
measure; the present theorem proves the finite positive-support property.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

universe u
variable {V : Type u} [Fintype V]

structure Sampler (V : Type u) [Fintype V] where
  allowed : V → V → Bool
  arcCost : V → V → ℝ
  beta : ℝ
  beta_nonneg : 0 ≤ beta
  arcCost_nonneg : ∀ i j, 0 ≤ arcCost i j
  outgoing : ∀ i, ∃ j, allowed i j = true

namespace Sampler

/-- A forbidden step gets weight zero, and an admitted step gets positive
Gibbs weight. -/
def weight (S : Sampler V) (i j : V) : ℝ :=
  if S.allowed i j = true then Real.exp (-S.beta * S.arcCost i j) else 0

theorem weight_nonneg (S : Sampler V) (i j : V) :
    0 ≤ S.weight i j := by
  unfold weight
  split_ifs
  · exact (Real.exp_pos _).le
  · exact le_refl 0

theorem weight_pos_of_allowed (S : Sampler V) (i j : V)
    (h : S.allowed i j = true) :
    0 < S.weight i j := by
  simp [weight, h, Real.exp_pos]

/-- The normalizing partition function for the actual outgoing row. -/
def partition (S : Sampler V) (i : V) : ℝ :=
  ∑ j, S.weight i j

theorem partition_pos (S : Sampler V) (i : V) :
    0 < S.partition i := by
  obtain ⟨j, hj⟩ := S.outgoing i
  have hle : S.weight i j ≤ S.partition i := by
    unfold partition
    exact Finset.single_le_sum
      (fun k _ => S.weight_nonneg i k) (Finset.mem_univ j)
  exact lt_of_lt_of_le (S.weight_pos_of_allowed i j hj) hle

def probability (S : Sampler V) (i j : V) : ℝ :=
  S.weight i j / S.partition i

theorem probability_nonneg (S : Sampler V) (i j : V) :
    0 ≤ S.probability i j :=
  div_nonneg (S.weight_nonneg i j) (S.partition_pos i).le

/-- No supplied stochasticity axiom: each row sum is calculated from its
actual positive partition function. -/
theorem probability_row_sum_one (S : Sampler V) (i : V) :
    (∑ j, S.probability i j) = 1 := by
  calc
    (∑ j, S.probability i j) =
        (∑ j, S.weight i j) / S.partition i := by
          simp [probability, Finset.sum_div]
    _ = 1 := by
      change S.partition i / S.partition i = 1
      exact div_self (ne_of_gt (S.partition_pos i))

theorem probability_zero_of_forbidden (S : Sampler V) (i j : V)
    (h : S.allowed i j = false) :
    S.probability i j = 0 := by
  simp [probability, weight, h]

theorem probability_pos_of_allowed (S : Sampler V) (i j : V)
    (h : S.allowed i j = true) :
    0 < S.probability i j :=
  div_pos (S.weight_pos_of_allowed i j h) (S.partition_pos i)

/-- Every positive-probability edge is an actually admissible edge. -/
theorem allowed_of_probability_pos (S : Sampler V) (i j : V)
    (hp : 0 < S.probability i j) :
    S.allowed i j = true := by
  cases h : S.allowed i j
  · have hz := S.probability_zero_of_forbidden i j h
    rw [hz] at hp
    exact False.elim ((lt_irrefl (0 : ℝ)) hp)
  · rfl

/-- Positive-weight finite paths use the selected kernel, not an invented
closed-orbit structure. -/
inductive PositivePath (S : Sampler V) : V → V → ℕ → Prop where
  | refl (i : V) : PositivePath S i i 0
  | step {i j k : V} {n : ℕ}
      (hij : 0 < S.probability i j)
      (tail : PositivePath S j k n) : PositivePath S i k (n + 1)

/-- Independently typed admissible directed paths. -/
inductive AllowedPath (S : Sampler V) : V → V → ℕ → Prop where
  | refl (i : V) : AllowedPath S i i 0
  | step {i j k : V} {n : ℕ}
      (hij : S.allowed i j = true)
      (tail : AllowedPath S j k n) : AllowedPath S i k (n + 1)

/-- The finite sample-support theorem: every path whose chosen edges
have positive transition probability is a path in the admissible graph. -/
theorem PositivePath.toAllowed (S : Sampler V) {i j : V} {n : ℕ}
    (p : PositivePath S i j n) : AllowedPath S i j n := by
  induction p with
  | refl i =>
      exact AllowedPath.refl i
  | step hprob tail ih =>
      exact AllowedPath.step (S.allowed_of_probability_pos _ _ hprob) ih

/-!
## Exact Gibbs support-to-admissibility comparison

The Gibbs weights are real, not rational. These theorems identify their
positive support with the actual declared admissible edges and paths,
without introducing a rational coercion or a new artificial edge.
-/

/-- An edge has positive Gibbs probability exactly when it is allowed. -/
theorem probability_pos_iff_allowed (S : Sampler V) (source target : V) :
    0 < S.probability source target ↔ S.allowed source target = true := by
  constructor
  · exact S.allowed_of_probability_pos source target
  · exact S.probability_pos_of_allowed source target

/-- Every allowed finite path has positive Gibbs probability along each
chosen edge. This is the converse to `PositivePath.toAllowed`. -/
theorem AllowedPath.toPositive (S : Sampler V)
    {source target : V} {length : ℕ}
    (path : AllowedPath S source target length) :
    PositivePath S source target length := by
  induction path with
  | refl source =>
      exact PositivePath.refl source
  | step hedge tail ih =>
      exact PositivePath.step (S.probability_pos_of_allowed _ _ hedge) ih

/-- Positive-probability and admissible finite paths have identical
support at every fixed length. -/
theorem positivePath_iff_allowedPath (S : Sampler V)
    (source target : V) (length : ℕ) :
    PositivePath S source target length ↔
      AllowedPath S source target length := by
  constructor
  · intro path
    exact PositivePath.toAllowed S path
  · intro path
    exact AllowedPath.toPositive S path

/-!
## Real Gibbs diffusion and typed support

The Gibbs sampler is row-stochastic over real weights. Its action on
column heat vectors uses the transposed indexing
`probability source target`; no rational-kernel identification is made.
-/

section TypeHeat

variable {Kind : Type*} [DecidableEq Kind]

/-- One real-valued diffusion step using the actual normalized Gibbs
probabilities, with the source index first. -/
def realStep (S : Sampler V) (heat : V → ℝ) (target : V) : ℝ :=
  ∑ source, S.probability source target * heat source

/-- Aggregate real heat over the vertices of one selected type. -/
def realTypeMass (typeOf : V → Kind) (heat : V → ℝ) (kind : Kind) : ℝ :=
  ∑ target, if typeOf target = kind then heat target else 0

/-- One positive-heat source and one actually allowed edge suffice to
give strictly positive mass to the destination's declared type. -/
theorem realTypeMass_step_pos_of_allowed
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ source, 0 ≤ heat source)
    (typeOf : V → Kind) (source target : V)
    (source_pos : 0 < heat source)
    (allowed : S.allowed source target = true) :
    0 < realTypeMass typeOf (S.realStep heat) (typeOf target) := by
  have hterm :
      S.probability source target * heat source ≤ S.realStep heat target := by
    unfold realStep
    exact Finset.single_le_sum
      (fun other _ => mul_nonneg (S.probability_nonneg other target)
        (nonnegative other))
      (Finset.mem_univ source)
  have hstep_nonneg : ∀ v, 0 ≤ S.realStep heat v := by
    intro v
    unfold realStep
    exact Finset.sum_nonneg (fun source _ =>
      mul_nonneg (S.probability_nonneg source v) (nonnegative source))
  have htype :
      S.realStep heat target ≤
        realTypeMass typeOf (S.realStep heat) (typeOf target) := by
    have hsingle :
        (if typeOf target = typeOf target then S.realStep heat target else 0) ≤
          ∑ v, if typeOf v = typeOf target then S.realStep heat v else 0 := by
      exact Finset.single_le_sum
        (fun v _ => by
          split_ifs
          · exact hstep_nonneg v
          · exact le_refl 0)
        (Finset.mem_univ target)
    simpa [realTypeMass] using hsingle
  exact lt_of_lt_of_le
    (mul_pos (S.probability_pos_of_allowed source target allowed) source_pos)
    (le_trans hterm htype)

/-- A type-spanning family of admissible edges from currently positive
sources proves one-step coverage for the actual real Gibbs sampler. -/
theorem real_type_complete_of_supported_allowed_edges
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ source, 0 ≤ heat source)
    (typeOf : V → Kind)
    (supported : ∀ kind, ∃ source target,
      typeOf target = kind ∧
      0 < heat source ∧
      S.allowed source target = true) :
    ∀ kind, 0 < realTypeMass typeOf (S.realStep heat) kind := by
  intro kind
  obtain ⟨source, target, hkind, hsource, hedge⟩ := supported kind
  have hpos := realTypeMass_step_pos_of_allowed S heat nonnegative
    typeOf source target hsource hedge
  simpa [hkind] using hpos

/-! Exact negative support boundary for the real Gibbs sampler. -/

/-- A type with no admissible incoming edge from any positive-heat source
has exactly zero heat after one real Gibbs diffusion step. -/
theorem realTypeMass_step_eq_zero_of_no_supported_allowed_edge
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ source, 0 ≤ heat source)
    (typeOf : V → Kind) (kind : Kind)
    (noEdge : ∀ source target, typeOf target = kind →
      0 < heat source → S.allowed source target = false) :
    realTypeMass typeOf (S.realStep heat) kind = 0 := by
  have htarget : ∀ target, typeOf target = kind →
      S.realStep heat target = 0 := by
    intro target hkind
    unfold realStep
    apply Finset.sum_eq_zero
    intro source _
    by_cases hzero : heat source = 0
    · simp [hzero]
    · have hpositive : 0 < heat source :=
        lt_of_le_of_ne (nonnegative source) (Ne.symm hzero)
      rw [S.probability_zero_of_forbidden source target
        (noEdge source target hkind hpositive)]
      ring
  unfold realTypeMass
  apply Finset.sum_eq_zero
  intro target _
  by_cases hkind : typeOf target = kind
  · simp [hkind, htarget target hkind]
  · simp [hkind]

/-- The one-step real Gibbs type-coverage criterion is equivalent to
having a positive-heat admissible incoming edge for every type. -/
theorem real_type_complete_iff_supported_allowed_edges
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ source, 0 ≤ heat source)
    (typeOf : V → Kind) :
    (∀ kind, 0 < realTypeMass typeOf (S.realStep heat) kind) ↔
      (∀ kind, ∃ source target,
        typeOf target = kind ∧ 0 < heat source ∧
        S.allowed source target = true) := by
  constructor
  · intro complete kind
    by_contra noReach
    have noEdge : ∀ source target, typeOf target = kind →
        0 < heat source → S.allowed source target = false := by
      intro source target hkind hpositive
      cases h : S.allowed source target
      · rfl
      · exfalso
        exact noReach ⟨source, target, hkind, hpositive, h⟩
    have hzero := realTypeMass_step_eq_zero_of_no_supported_allowed_edge
      S heat nonnegative typeOf kind noEdge
    have hpos := complete kind
    rw [hzero] at hpos
    exact (lt_irrefl (0 : ℝ)) hpos
  · exact real_type_complete_of_supported_allowed_edges S heat nonnegative typeOf

/-!
## Finite-length admissible reachability for the real Gibbs kernel

Unlike one-step support, a positive initial state may reach a type only
after multiple admissible edges. These are exact finite-time statements.
They neither introduce artificial transitions nor assert a uniform-in-time
lower bound on mass.
-/

/-- Real Gibbs diffusion preserves nonnegative heat. -/
theorem realStep_nonneg (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v) :
    ∀ target, 0 ≤ S.realStep heat target := by
  intro target
  unfold realStep
  exact Finset.sum_nonneg (fun source _ =>
    mul_nonneg (S.probability_nonneg source target) (nonnegative source))

/-- The real Gibbs heat after a finite number of transitions.
The recursion exposes the first transition, matching `AllowedPath.step`. -/
def realEvolve (S : Sampler V) (heat : V → ℝ) : ℕ → V → ℝ
  | 0 => heat
  | n + 1 => S.realEvolve (S.realStep heat) n

/-- Nonnegative real heat remains nonnegative after any finite path length. -/
theorem realEvolve_nonneg (S : Sampler V)
    (heat : V → ℝ) (nonnegative : ∀ v, 0 ≤ heat v) :
    ∀ n v, 0 ≤ S.realEvolve heat n v := by
  intro n
  induction n generalizing heat with
  | zero =>
      intro v
      simpa [realEvolve] using nonnegative v
  | succ n ih =>
      intro v
      change 0 ≤ S.realEvolve (S.realStep heat) n v
      exact ih (S.realStep heat) (S.realStep_nonneg heat nonnegative) v

/-- An allowed edge transfers strictly positive source heat to its target. -/
theorem realStep_pos_of_allowed (S : Sampler V)
    (heat : V → ℝ) (nonnegative : ∀ v, 0 ≤ heat v)
    (source target : V)
    (source_pos : 0 < heat source)
    (allowed : S.allowed source target = true) :
    0 < S.realStep heat target := by
  have hbound :
      S.probability source target * heat source ≤ S.realStep heat target := by
    unfold realStep
    exact Finset.single_le_sum
      (fun v _ => mul_nonneg (S.probability_nonneg v target) (nonnegative v))
      (Finset.mem_univ source)
  exact lt_of_lt_of_le
    (mul_pos (S.probability_pos_of_allowed source target allowed) source_pos)
    hbound

/-- Any admissible path carries positive initial source heat to its
destination after exactly its length, without a mixing hypothesis. -/
theorem realEvolve_pos_of_allowedPath (S : Sampler V)
    {source target : V} {length : ℕ}
    (path : AllowedPath S source target length) :
    ∀ (heat : V → ℝ), (∀ v, 0 ≤ heat v) →
      0 < heat source → 0 < S.realEvolve heat length target := by
  induction path with
  | refl i =>
      intro heat nonnegative source_pos
      simpa [realEvolve] using source_pos
  | @step i j k n hij tail ih =>
      intro heat nonnegative source_pos
      change 0 < S.realEvolve (S.realStep heat) n k
      exact ih (S.realStep heat)
        (S.realStep_nonneg heat nonnegative)
        (S.realStep_pos_of_allowed heat nonnegative i j source_pos hij)

/-- One strictly positive vertex gives positive aggregate mass to its type. -/
theorem realTypeMass_pos_of_vertex
    (typeOf : V → Kind) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (target : V) (positive : 0 < heat target) :
    0 < realTypeMass typeOf heat (typeOf target) := by
  have hbound :
      heat target ≤ realTypeMass typeOf heat (typeOf target) := by
    have hsingle :
        (if typeOf target = typeOf target then heat target else 0) ≤
          ∑ v, if typeOf v = typeOf target then heat v else 0 := by
      exact Finset.single_le_sum
        (fun v _ => by
          split_ifs
          · exact nonnegative v
          · exact le_refl 0)
        (Finset.mem_univ target)
    simpa [realTypeMass] using hsingle
  exact lt_of_lt_of_le positive hbound

/-- Type coverage at a fixed finite horizon follows from actual allowed
paths of that length from positive-heat sources. No rational kernel or
artificial edge is introduced. -/
theorem real_type_complete_of_allowed_paths
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (typeOf : V → Kind) (length : ℕ)
    (reach : ∀ kind, ∃ source target,
      typeOf target = kind ∧ 0 < heat source ∧
      AllowedPath S source target length) :
    ∀ kind, 0 < realTypeMass typeOf (S.realEvolve heat length) kind := by
  intro kind
  obtain ⟨source, target, hkind, hsource, path⟩ := reach kind
  have hpos := S.realEvolve_pos_of_allowedPath path heat nonnegative hsource
  have hmass := realTypeMass_pos_of_vertex typeOf
    (S.realEvolve heat length)
    (fun v => S.realEvolve_nonneg heat nonnegative length v)
    target hpos
  simpa [hkind] using hmass

/-!
## Exact total-mass conservation for real Gibbs diffusion

This uses the actual normalized outgoing Gibbs rows. It establishes
conservation for real-valued heat and all finite path lengths, without
identifying the Gibbs sampler with a rational kernel or deriving type
coverage from conservation alone.
-/

/-- One real Gibbs diffusion step preserves the sum of all heat values. -/
theorem realStep_mass (S : Sampler V) (heat : V → ℝ) :
    (∑ target, S.realStep heat target) = ∑ source, heat source := by
  simp only [realStep]
  rw [Finset.sum_comm]
  calc
    (∑ source, ∑ target, S.probability source target * heat source) =
        ∑ source, (∑ target, S.probability source target) * heat source := by
      apply Finset.sum_congr rfl
      intro source _
      rw [Finset.sum_mul]
    _ = ∑ source, heat source := by
      simp [S.probability_row_sum_one]

/-- Total real Gibbs heat is preserved at every finite evolution time. -/
theorem realEvolve_mass (S : Sampler V) (heat : V → ℝ) :
    ∀ n, (∑ target, S.realEvolve heat n target) = ∑ source, heat source := by
  intro n
  induction n generalizing heat with
  | zero =>
      rfl
  | succ n ih =>
      change (∑ target, S.realEvolve (S.realStep heat) n target) =
        ∑ source, heat source
      rw [ih (S.realStep heat), S.realStep_mass heat]

/-- A positive total initial mass remains positive at each finite time.
This alone does not imply that every type has positive mass. -/
theorem realEvolve_total_mass_pos (S : Sampler V) (heat : V → ℝ)
    (mass_pos : 0 < ∑ source, heat source) (n : ℕ) :
    0 < ∑ target, S.realEvolve heat n target := by
  rw [S.realEvolve_mass heat n]
  exact mass_pos

/-!
## Missing-type obstruction at every finite horizon

Finite diffusion can redistribute heat among existing vertices but cannot
manufacture a vertex carrying an absent type label. This is independent
of the Gibbs weights, admissible paths, and initial heat distribution.
-/

/-- If no vertex carries a selected type, its real aggregate mass is zero
for any heat function. -/
theorem realTypeMass_eq_zero_of_absent_type
    (typeOf : V → Kind) (heat : V → ℝ) (kind : Kind)
    (absent : ∀ v, typeOf v ≠ kind) :
    realTypeMass typeOf heat kind = 0 := by
  simp [realTypeMass, absent]

/-- Complete positive real type mass forces every declared type to have
an actual representative in the finite vertex carrier. -/
theorem surjective_of_real_type_complete
    (typeOf : V → Kind) (heat : V → ℝ)
    (complete : ∀ kind, 0 < realTypeMass typeOf heat kind) :
    Function.Surjective typeOf := by
  intro kind
  by_contra notSurjective
  have absent : ∀ v, typeOf v ≠ kind := by
    intro v hv
    exact notSurjective ⟨v, hv⟩
  have hzero := realTypeMass_eq_zero_of_absent_type typeOf heat kind absent
  have hpos := complete kind
  rw [hzero] at hpos
  exact (lt_irrefl (0 : ℝ)) hpos

/-- A type missing from the finite carrier remains absent at every finite
Gibbs diffusion time. No Markov mixing condition can remove this
carrier-level obstruction. -/
theorem not_real_type_complete_of_absent_type
    (S : Sampler V) (heat : V → ℝ)
    (typeOf : V → Kind) (kind : Kind)
    (absent : ∀ v, typeOf v ≠ kind) (n : ℕ) :
    ¬ (∀ label, 0 < realTypeMass typeOf (S.realEvolve heat n) label) := by
  intro complete
  have hzero := realTypeMass_eq_zero_of_absent_type
    typeOf (S.realEvolve heat n) kind absent
  have hpos := complete kind
  rw [hzero] at hpos
  exact (lt_irrefl (0 : ℝ)) hpos

/-!
## Converse finite-path support extraction

These lemmas extract an actual admissible path from strictly positive
real Gibbs heat. They use nonnegativity of the summands and the fact
that forbidden transitions have exactly zero probability. No new
transition or mixing hypothesis is introduced.
-/

/-- Positive next-step heat has a positive-heat predecessor connected by
an actually admissible edge. -/
theorem realStep_pos_has_allowed_source
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (target : V) (positive : 0 < S.realStep heat target) :
    ∃ source, 0 < heat source ∧ S.allowed source target = true := by
  by_contra noSource
  have hzero : S.realStep heat target = 0 := by
    unfold realStep
    apply Finset.sum_eq_zero
    intro source _
    by_cases hheat : heat source = 0
    · simp [hheat]
    · have hpositive : 0 < heat source :=
        lt_of_le_of_ne (nonnegative source) (Ne.symm hheat)
      cases hallowed : S.allowed source target
      · rw [S.probability_zero_of_forbidden source target hallowed]
        ring
      · exact False.elim (noSource ⟨source, hpositive, hallowed⟩)
  rw [hzero] at positive
  exact (lt_irrefl (0 : ℝ)) positive

/-- Every strictly positive heat value after a finite number of steps
comes from an initially positive source along an allowed path of exactly
that length. -/
theorem realEvolve_pos_has_allowedPath (S : Sampler V) :
    ∀ (length : ℕ) (heat : V → ℝ) (target : V),
      (∀ v, 0 ≤ heat v) →
      0 < S.realEvolve heat length target →
      ∃ source, 0 < heat source ∧
        AllowedPath S source target length := by
  intro length
  induction length with
  | zero =>
      intro heat target nonnegative positive
      refine ⟨target, ?_, AllowedPath.refl target⟩
      simpa [realEvolve] using positive
  | succ length ih =>
      intro heat target nonnegative positive
      have htail : 0 < S.realEvolve (S.realStep heat) length target := by
        simpa [realEvolve] using positive
      obtain ⟨middle, hmiddle, tail⟩ := ih
        (S.realStep heat) target
        (S.realStep_nonneg heat nonnegative) htail
      obtain ⟨source, hsource, hedge⟩ :=
        S.realStep_pos_has_allowed_source heat nonnegative middle hmiddle
      exact ⟨source, hsource, AllowedPath.step hedge tail⟩

/-- Exact finite-time support equivalence for the real Gibbs sampler.
The witness path has precisely the queried number of transitions. -/
theorem realEvolve_pos_iff_allowedPath (S : Sampler V)
    (heat : V → ℝ) (nonnegative : ∀ v, 0 ≤ heat v)
    (length : ℕ) (target : V) :
    0 < S.realEvolve heat length target ↔
      ∃ source, 0 < heat source ∧
        AllowedPath S source target length := by
  constructor
  · exact S.realEvolve_pos_has_allowedPath length heat target nonnegative
  · rintro ⟨source, hsource, path⟩
    exact S.realEvolve_pos_of_allowedPath path heat nonnegative hsource

/-! Exact finite-horizon type-support criterion for the actual real Gibbs sampler. -/

/-- Positive aggregate type mass has a positive-heat vertex witness. -/
theorem realTypeMass_pos_has_vertex
    (typeOf : V → Kind) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (kind : Kind) (positive : 0 < realTypeMass typeOf heat kind) :
    ∃ target, typeOf target = kind ∧ 0 < heat target := by
  by_contra noTarget
  have hzero : realTypeMass typeOf heat kind = 0 := by
    unfold realTypeMass
    apply Finset.sum_eq_zero
    intro target _
    by_cases hkind : typeOf target = kind
    · have hheat : heat target = 0 := by
        by_contra hnonzero
        have hpos : 0 < heat target :=
          lt_of_le_of_ne (nonnegative target) (Ne.symm hnonzero)
        exact noTarget ⟨target, hkind, hpos⟩
      simp [hkind, hheat]
    · simp [hkind]
  rw [hzero] at positive
  exact (lt_irrefl (0 : ℝ)) positive

/-- Type completeness at exactly n Gibbs steps is equivalent to an
admissible length-n path from positive initial heat into every type. -/
theorem real_type_complete_iff_allowed_paths
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (typeOf : V → Kind) (length : ℕ) :
    (∀ kind, 0 < realTypeMass typeOf (S.realEvolve heat length) kind) ↔
      (∀ kind, ∃ source target,
        typeOf target = kind ∧ 0 < heat source ∧
        AllowedPath S source target length) := by
  constructor
  · intro complete kind
    obtain ⟨target, hkind, hpositive⟩ :=
      realTypeMass_pos_has_vertex typeOf
        (S.realEvolve heat length)
        (fun v => S.realEvolve_nonneg heat nonnegative length v)
        kind (complete kind)
    obtain ⟨source, hsource, path⟩ :=
      S.realEvolve_pos_has_allowedPath length heat target
        nonnegative hpositive
    exact ⟨source, target, hkind, hsource, path⟩
  · exact S.real_type_complete_of_allowed_paths heat nonnegative typeOf length

/-!
## Eventual type support from finite paths and genuine self-loops

The self-loops below must be actually admitted by the source graph. No
artificial sink completion or uniform asymptotic mass lower bound is
inferred. Paths are padded only at their witnessed destination.
-/

/-- Append two actually admissible paths. -/
theorem AllowedPath.append (S : Sampler V)
    {a b c : V} {m n : ℕ}
    (first : AllowedPath S a b m)
    (second : AllowedPath S b c n) :
    AllowedPath S a c (m + n) := by
  induction first with
  | refl a =>
      simpa using second
  | step hedge tail ih =>
      simpa [Nat.succ_add] using
        (AllowedPath.step hedge (ih second))

/-- A genuine self-loop at the destination pads an admissible path to
any greater finite length. -/
theorem AllowedPath.pad_at_target (S : Sampler V)
    {source target : V} {length : ℕ}
    (path : AllowedPath S source target length)
    (loop : S.allowed target target = true) :
    ∀ extra, AllowedPath S source target (length + extra) := by
  intro extra
  induction extra with
  | zero =>
      simpa using path
  | succ extra ih =>
      have step : AllowedPath S target target 1 :=
        AllowedPath.step loop (AllowedPath.refl target)
      have extended := AllowedPath.append S ih step
      simpa [Nat.add_succ] using extended

/-- Actual admissible paths of one common length into every type,
ending at genuine self-loops, give type support at every later finite
time. No quantitative lower bound uniform in time is asserted. -/
theorem eventually_real_type_complete_of_padded_allowed_paths
    (S : Sampler V) (heat : V → ℝ)
    (nonnegative : ∀ v, 0 ≤ heat v)
    (typeOf : V → Kind) (start : ℕ)
    (reach : ∀ kind, ∃ source target,
      typeOf target = kind ∧ 0 < heat source ∧
      AllowedPath S source target start ∧
      S.allowed target target = true) :
    ∀ extra kind,
      0 < realTypeMass typeOf (S.realEvolve heat (start + extra)) kind := by
  intro extra
  apply S.real_type_complete_of_allowed_paths heat nonnegative
    typeOf (start + extra)
  intro kind
  obtain ⟨source, target, hkind, hsource, path, loop⟩ := reach kind
  exact ⟨source, target, hkind, hsource,
    AllowedPath.pad_at_target S path loop extra⟩

end TypeHeat

end Sampler

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
