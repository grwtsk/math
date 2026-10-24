/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedQuartetBudget
import GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

set_option autoImplicit false

/-!
# Both-sign quartet budgets and conjugation-closed exhaustion

The old canonical divisor, region head, analytic weights and remainder are
unchanged. Actual conjugation and critical reflection supply four DISTINCT
points only off the line and off the real axis. The existing sourced Mellin
real-axis exclusion supplies the second condition. An occurrence list or a
formal quartic is not used as an analytic multiplicity certificate.

Both region symmetries are essential to the threshold four. The known line
subset need not be conjugation-closed for quartet exclusion. In contrast, the
separate threshold-two ENUMERATION theorem explicitly needs known-set closure.
No parity theorem, concrete count, zero packet or all-height supplier is given.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED; imported proof obligations persist.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ConjugateQuartetBudget

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedQuartetBudget
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier
open GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget
open scoped ComplexConjugate

noncomputable section

/-- The SAME canonical point type, with the existing actual zero-conjugation proof. -/
def conjugated (z : ZeroPoint) : ZeroPoint := ⟨zeroConjugate z.1, z.2.conjugate⟩

@[simp] theorem conjugated_re (z : ZeroPoint) : (conjugated z).1.re = z.1.re := by
  simp [conjugated, zeroConjugate]

@[simp] theorem conjugated_im (z : ZeroPoint) : (conjugated z).1.im = -z.1.im := by
  simp [conjugated, zeroConjugate]

@[simp] theorem conjugated_involutive (z : ZeroPoint) : conjugated (conjugated z) = z := by
  apply Subtype.ext
  simp [conjugated, zeroConjugate]

@[simp] theorem height_conjugated (z : ZeroPoint) : height (conjugated z) = height z := by
  simp [height]

/-- Reuse the source-derived EXTENDED order equality before natural conversion. -/
@[simp] theorem multiplicity_conjugated (z : ZeroPoint) :
    multiplicity (conjugated z) = multiplicity z := by
  change (analyticOrderAt riemannZeta (conj z.1)).toNat =
    (analyticOrderAt riemannZeta z.1).toNat
  exact congrArg (fun n : ℕ∞ => n.toNat) (zeta_order_conjugate z)

/-- No new real-axis nonvanishing premise: consume the existing sourced theorem. -/
theorem nonreal (z : ZeroPoint) : z.1.im ≠ 0 :=
  CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2

/-- Conjugation has no fixed point in the actual canonical zero type. -/
theorem conjugated_ne_self (z : ZeroPoint) : conjugated z ≠ z := by
  intro same
  have him := congrArg (fun w : ZeroPoint => w.1.im) same
  simp only [conjugated_im] at him
  exact nonreal z (by linarith)

/-- Conjugation-stable region membership retains the SAME absolute-height cutoff. -/
theorem conjugated_mem_regionHead (T : ℝ) (U : Set ℂ) (z : ZeroPoint)
    (member : z ∈ regionHead T U) (stable : ∀ s ∈ U, zeroConjugate s ∈ U) :
    conjugated z ∈ regionHead T U := by
  rcases (mem_regionHead T U z).mp member with ⟨heightBound, regionMember⟩
  apply (mem_regionHead T U (conjugated z)).mpr
  exact ⟨by simpa only [height_conjugated] using heightBound, stable z.1 regionMember⟩

/-- Six inequalities, not four labels: the line and real-axis degeneracies are excluded. -/
theorem quartet_distinct (z : ZeroPoint) (offLine : z.1.re ≠ 1 / 2) :
    z ≠ reflected z ∧ z ≠ conjugated z ∧ z ≠ reflected (conjugated z) ∧
      reflected z ≠ conjugated z ∧ reflected z ≠ reflected (conjugated z) ∧
      conjugated z ≠ reflected (conjugated z) := by
  refine ⟨distinct_of_off_line z offLine, Ne.symm (conjugated_ne_self z), ?_, ?_, ?_, ?_⟩
  · intro same
    have hre := congrArg (fun w : ZeroPoint => w.1.re) same
    simp [reflected, conjugated, criticalReflection, zeroConjugate] at hre
    exact offLine (by linarith)
  · intro same
    have hre := congrArg (fun w : ZeroPoint => w.1.re) same
    simp [reflected, conjugated, criticalReflection, zeroConjugate] at hre
    exact offLine (by linarith)
  · intro same
    have him := congrArg (fun w : ZeroPoint => w.1.im) same
    simp [reflected, conjugated, criticalReflection, zeroConjugate] at him
    exact nonreal z (by linarith)
  · exact distinct_of_off_line (conjugated z) (by simpa only [conjugated_re] using offLine)

/-- Every off-line quartet lies outside the known LINE subset. Its four weights
are identified by the preceding actual-source conjugation/reflection suppliers. -/
theorem known_add_fourfold_le_count_of_off_line (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (offLine : z.1.re ≠ 1 / 2) :
    mass known multiplicity + 4 * multiplicity z ≤ regionCount T U := by
  classical
  have cMember := conjugated_mem_regionHead T U z member conjugateStable
  have rMember := reflected_mem_regionHead T U z member reflectStable
  have rcMember := reflected_mem_regionHead T U (conjugated z) cMember reflectStable
  have cOff : (conjugated z).1.re ≠ 1 / 2 := by simpa only [conjugated_re] using offLine
  have outside (w : ZeroPoint) (hw : w.1.re ≠ 1 / 2) : w ∉ known :=
    fun h => hw (knownLine w h)
  rcases quartet_distinct z offLine with ⟨hab, hac, had, hbc, hbd, hcd⟩
  have bound := known_add_four_le_mass (regionHead T U) known multiplicity subset
    z (reflected z) (conjugated z) (reflected (conjugated z))
    member rMember cMember rcMember
    (outside z offLine) (outside (reflected z) (reflected_off_line z offLine))
    (outside (conjugated z) cOff)
    (outside (reflected (conjugated z)) (reflected_off_line (conjugated z) cOff))
    hab hac had hbc hbd hcd
  simp only [multiplicity_reflected, multiplicity_conjugated] at bound
  change mass known multiplicity + 4 * multiplicity z ≤
    mass (regionHead T U) multiplicity
  omega

/-- A selected lower multiplicity m costs FOUR copies, only in a both-stable region. -/
theorem critical_line_of_known_quartet_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (z : ZeroPoint) (member : z ∈ regionHead T U) (lower knownLower upper : ℕ)
    (rootBound : lower ≤ multiplicity z) (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (strict : upper < knownLower + 4 * lower) :
    z.1.re = 1 / 2 := by
  by_contra offLine
  have bound := known_add_fourfold_le_count_of_off_line T U known subset knownLine
    reflectStable conjugateStable z member offLine
  have lowerTotal := Nat.add_le_add knownBound (Nat.mul_le_mul_left 4 rootBound)
  exact (not_le_of_gt strict) (lowerTotal.trans (bound.trans countBound))

/-- Positivity makes the threshold four a uniform line-classification criterion. -/
theorem all_on_line_of_known_quartet_budget (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : regionCount T U ≤ upper) (strict : upper < knownLower + 4) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  intro z hz
  exact critical_line_of_known_quartet_budget T U known subset knownLine reflectStable
    conjugateStable z hz 1 knownLower upper (multiplicity_pos z) knownBound countBound
    (by simpa using strict)

/-- Remaining multiplicity below four classifies all points; it does NOT enumerate them. -/
theorem all_on_line_of_remaining_lt_four (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (reflectStable : ∀ s ∈ U, criticalReflection s ∈ U)
    (conjugateStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (small : remainingCount T U known < 4) :
    ∀ z ∈ regionHead T U, z.1.re = 1 / 2 := by
  have partition := remaining_add_known T U known subset
  exact all_on_line_of_known_quartet_budget T U known subset knownLine reflectStable
    conjugateStable (mass known multiplicity) (regionCount T U) le_rfl le_rfl (by omega)

/-- Both signs are already present in the OLD complete head. No new zero inventory. -/
theorem rhThrough_of_height_known_quartet_budget (N : ℕ) (known : Finset ZeroPoint)
    (subset : known ⊆ heightHead (N : ℝ))
    (knownLine : ∀ z ∈ known, z.1.re = 1 / 2) (knownLower upper : ℕ)
    (knownBound : knownLower ≤ mass known multiplicity)
    (countBound : heightCount (N : ℝ) ≤ upper) (strict : upper < knownLower + 4) :
    RHThrough N := by
  have allLine := all_on_line_of_known_quartet_budget (N : ℝ) Set.univ known
    (by simpa using subset) knownLine (fun _ _ => Set.mem_univ _)
    (fun _ _ => Set.mem_univ _) knownLower upper knownBound (by simpa using countBound) strict
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  exact allLine z ((mem_regionHead _ _ _).mpr ⟨heightBound, Set.mem_univ _⟩)

/-- Additional known-set conjugation closure upgrades a below-two remainder to
EXACT enumeration. Reflection stability and known-line status are not needed here. -/
theorem known_eq_regionHead_of_conjugate_closed_remaining_lt_two (T : ℝ) (U : Set ℂ)
    (known : Finset ZeroPoint) (subset : known ⊆ regionHead T U)
    (regionStable : ∀ s ∈ U, zeroConjugate s ∈ U)
    (knownStable : ∀ z ∈ known, conjugated z ∈ known)
    (small : remainingCount T U known < 2) : known = regionHead T U := by
  classical
  exact eq_of_remaining_lt_two_of_involution (regionHead T U) known multiplicity conjugated
    conjugated_involutive subset
    (fun z hz => conjugated_mem_regionHead T U z hz regionStable) knownStable
    (fun z _ => conjugated_ne_self z) (fun z _ => multiplicity_pos z) small

/-- Synthetic geometry: real-axis reflection partners collapse to two points.
Neither point is asserted to be an actual zeta zero. -/
theorem real_axis_collapse_fixture :
    zeroConjugate (1 / 4 : ℂ) = (1 / 4 : ℂ) ∧
      criticalReflection (1 / 4 : ℂ) = (3 / 4 : ℂ) := by
  norm_num [zeroConjugate, criticalReflection]

/-- Positive-height regions cannot borrow the both-sign threshold four. -/
theorem positive_half_plane_not_conjugate_stable_fixture :
    (0 : ℝ) < (Complex.I).im ∧ ¬ (0 : ℝ) < (zeroConjugate Complex.I).im := by
  norm_num [zeroConjugate]

end
end GRWTSK.NumberTheory.Zeta.Riemann.ConjugateQuartetBudget
