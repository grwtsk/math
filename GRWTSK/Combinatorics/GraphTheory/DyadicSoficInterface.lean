/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.Combinatorics.GraphTheory.ComplexProbeSoficReturn
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DyadicHeatRefinement

/-!
# Dyadic certified sofic interfaces with complete source-error accounting

At depth n there are exactly 2^n certified transitions. An edge allowance
epsilon*2^(-n) therefore sums to epsilon, independently of the depth. This
normalization does NOT imply epsilon tends to zero. Initial source defects,
physical readout changes, measurement errors and heat conversion errors must
still be supplied by their own source theorems.

This module reuses the original CertifiedTrace and SourceAnchored return,
and the complex all-unit-phase word theorem. A refinement theorem replaces
each certified edge by two genuinely certified edges with no larger allowance.
The length doubles, while the exact signed endpoint defect is unchanged.
Neither the existence nor the price of the two-child route is inferred from
binary labels. The theorem applies to finite words; no global finite-state
presentation or complete infinite language is claimed.

Consumers include the finite thermal-steering witness and its actual Hodge
heat source. Hodge heat and the idealized thermal stroke remain different
maps, related only through their explicit observed correlation. No CPTP
channel, quantum dynamical realization, engine net-work law, or RH consequence
is inferred from the dyadic clock or from graph refinement.

Primary argument: exact source telescoping, existing word-length bound,
2^n*2^(-n)=1, and induction using CertifiedTrace.append. Complex probes retain
the full unit circle. These are elementary interface theorems sharing their
source estimates, not independent proofs of an arithmetic or physical claim.
Human direction: grwtsk contributors; AI-assisted candidate construction.
Novelty NOT_ASSESSED. Compilation, kernel replay, transitive axiom audit and
independent external mathematical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DyadicSoficInterface

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComplexProbeSoficReturn
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.DyadicHeatRefinement

universe u v w

/-- A dyadic trace exposes its literal length, not just an index called depth. -/
def IsDyadicLength {Label : Type v} (n : ℕ) (word : List Label) : Prop :=
  word.length = 2 ^ n

/-- The existing signed trace return with its exact dyadic total allowance. -/
theorem dyadic_real_error_bound
    {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) (n : ℕ)
    {source target : Vertex} {word : List Label} {d b ε : ℝ}
    (trace : CertifiedTrace M source word target d b)
    (length : word.length = 2 ^ n)
    (edgeBound : ∀ {s t : Vertex} {label : Label},
      M.sandwich.lower s label t →
        M.edgeAllowance s label t ≤ ε * dyadicStep n) :
    |M.readout source - M.readout target| ≤ ε := by
  have sourceReturn := trace.exact_and_bounded
  have defectEq : M.readout source - M.readout target = d := by
    linarith [sourceReturn.1]
  have bound := CertifiedTrace.allowance_le_length edgeBound trace
  have mass : (word.length : ℝ) * dyadicStep n = 1 := by
    rw [length]
    exact nat_two_pow_mul_dyadicStep n
  calc
    |M.readout source - M.readout target| = |d| := by rw [defectEq]
    _ ≤ b := sourceReturn.2.2
    _ ≤ (word.length : ℝ) * (ε * dyadicStep n) := bound
    _ = ε * ((word.length : ℝ) * dyadicStep n) := by ring
    _ = ε := by rw [mass, mul_one]

/-- The immutable source first pays its initial defect, then the dyadic path. -/
theorem dyadic_source_return
    {Source : Type w} {Vertex : Type u} {Label : Type v}
    (A : SourceAnchored Source Vertex Label) (x : Source) (n : ℕ)
    {target : Vertex} {word : List Label} {d b ε : ℝ}
    (trace : CertifiedTrace A.system (A.encode x) word target d b)
    (length : word.length = 2 ^ n)
    (edgeBound : ∀ {s t : Vertex} {label : Label},
      A.system.sandwich.lower s label t →
        A.system.edgeAllowance s label t ≤ ε * dyadicStep n) :
    |A.original x - A.system.readout target| ≤ A.initialAllowance x + ε := by
  have pathBound := dyadic_real_error_bound A.system n trace length edgeBound
  have identity : A.original x - A.system.readout target =
      A.initialDefect x + (A.system.readout (A.encode x) - A.system.readout target) := by
    rw [A.initialReturn x]
    ring
  rw [identity]
  exact (abs_add_le _ _).trans (add_le_add (A.initialBound x) pathBound)

/-- The SAME preexisting word is fixed before all point and unit-phase probes. -/
theorem dyadic_complex_error_bound
    {Vertex : Type u} {Label : Type v} {Point : Type w}
    (M : ProbeSoficSystem Vertex Label (Point × UnitPhase))
    (observation : Vertex → Point → ℂ)
    (hvalue : ∀ (p : Point × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1)) (n : ℕ)
    {source target : Vertex} {word : List Label} {ε : Point → ℝ}
    (path : WordPath M.sandwich.lower source word target)
    (length : word.length = 2 ^ n)
    (edgeBound : ∀ (p : Point × UnitPhase) {s t : Vertex} {label : Label},
      M.sandwich.lower s label t →
        M.allowance p s label t ≤ ε p.1 * dyadicStep n) :
    ∀ s : Point, ‖observation source s - observation target s‖ ≤ ε s := by
  have returned := word_error_bound M observation hvalue path edgeBound
  intro s
  have mass : (word.length : ℝ) * dyadicStep n = 1 := by
    rw [length]
    exact nat_two_pow_mul_dyadicStep n
  refine (returned s).trans_eq ?_
  calc
    (word.length : ℝ) * (ε s * dyadicStep n) =
        ε s * ((word.length : ℝ) * dyadicStep n) := by ring
    _ = ε s := by rw [mass, mul_one]

/-- The price and validity of every two-child replacement must be established. -/
def BinaryRefinable {Vertex : Type u} {Label : Type v}
    (M : DefectSoficSystem Vertex Label) : Prop :=
  ∀ {source target : Vertex} {label : Label},
    M.sandwich.lower source label target →
      ∃ (left right : Label) (d b : ℝ),
        CertifiedTrace M source [left, right] target d b ∧
          b ≤ M.edgeAllowance source label target

/-- A genuine two-child refinement doubles the word length and retains every
signed source contribution. Smaller allowance is a proved hypothesis. -/
theorem refine_certified_trace
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    (refinable : BinaryRefinable M)
    {source target : Vertex} {word : List Label} {d b : ℝ}
    (trace : CertifiedTrace M source word target d b) :
    ∃ (refined : List Label) (d' b' : ℝ),
      CertifiedTrace M source refined target d' b' ∧
        refined.length = 2 * word.length ∧ b' ≤ b ∧ d' = d := by
  induction trace with
  | nil vertex =>
    exact ⟨[], 0, 0, CertifiedTrace.nil vertex, by simp, le_rfl, rfl⟩
  | @cons source middle target label word defect allowance edge tail ih =>
    obtain ⟨left, right, firstDefect, firstBudget, first, firstBound⟩ := refinable edge
    obtain ⟨refined, tailDefect, tailBudget, rest, restLength, restBound, restDefect⟩ := ih
    have composed := first.append rest
    have firstExact : firstDefect = M.edgeDefect source label middle := by
      have actual := M.edgeReturn edge
      have replacement := first.exact_and_bounded.1
      linarith
    refine ⟨[left, right] ++ refined, firstDefect + tailDefect,
      firstBudget + tailBudget, composed, ?_, add_le_add firstBound restBound, ?_⟩
    · simp only [List.length_append, List.length_cons, List.length_nil]
      omega
    · rw [firstExact, restDefect]

/-- One established binary refinement advances a literal dyadic depth. -/
theorem refine_dyadic_trace
    {Vertex : Type u} {Label : Type v}
    {M : DefectSoficSystem Vertex Label}
    (refinable : BinaryRefinable M) (n : ℕ)
    {source target : Vertex} {word : List Label} {d b : ℝ}
    (trace : CertifiedTrace M source word target d b)
    (length : word.length = 2 ^ n) :
    ∃ (refined : List Label) (d' b' : ℝ),
      CertifiedTrace M source refined target d' b' ∧
        refined.length = 2 ^ (n + 1) ∧ b' ≤ b ∧ d' = d := by
  obtain ⟨refined, d', b', refinedTrace, refinedLength, budget, defect⟩ :=
    refine_certified_trace refinable trace
  refine ⟨refined, d', b', refinedTrace, ?_, budget, defect⟩
  rw [refinedLength, length, pow_succ]
  omega

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DyadicSoficInterface
