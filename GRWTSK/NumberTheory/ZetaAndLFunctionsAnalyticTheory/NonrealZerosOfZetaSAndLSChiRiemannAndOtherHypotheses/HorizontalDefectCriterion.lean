/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.HeightCollisionLift
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Exact finite horizontal-defect criterion and conditional trace return

This module specializes `HeightCollisionLift.horizontalDefect` to the constant
nonnegative test. At a fixed absolute-height cutoff, its vanishing is equivalent
to every actual nontrivial zeta zero in the canonical closed height head lying
on the critical line. The proof uses the repository's exact zero subtype and
analytic multiplicities: each summand is a positive multiplicity times a square,
so no cancellation or numerical zero inventory is available.

The all-height vanishing statement is therefore equivalent to the unchanged
Mathlib `_root_.RiemannHypothesis`. Vanishing on any cofinal family of cutoffs is
also sufficient, because each actual zero enters one of those finite heads.

`FiniteTraceSignCertificate` is a deliberately conditional consumer interface.
A supplier must prove one exact balance involving this source-fixed defect and
must retain continuous, cusp, and boundary/truncation terms. Nonnegativity of
those terms together with a nonpositive geometric side forces the defect to
vanish. This file does not construct a Selberg trace formula, identify geometric
orbits, establish any of the sign fields, or derive a prism or cohomological
comparison.

Analytical disposition:

* Actual objects: the canonical finite zero head, source analytic multiplicity,
  and squared centered real offset.
* Primary argument: a finite sum of nonnegative terms is zero exactly when each
  term is zero; positive multiplicity then removes the weight.
* Hostile boundaries: negative cutoffs give the empty head; repeated roots keep
  one complex point with positive analytic weight; reflection pairs reinforce
  rather than cancel because the horizontal offset is squared.
* Consumer and return: bounded critical-line control, cofinal exhaustion, and
  finally the canonical RH proposition. The unresolved trace identity and sign
  premises remain explicit structure fields.
* Independent comparison: canonical RH immediately annihilates every finite
  defect. No second independent proof of the converse is claimed.

SOURCE_ONLY / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.HorizontalDefectCriterion

open scoped BigOperators

noncomputable section

/-- Reuse the exact source point type; multiplicity is not part of point equality. -/
abbrev ZeroPoint := HeightCollisionLift.ZeroPoint

/-- The constant-test horizontal defect on the complete canonical height head. -/
def unitHorizontalDefect (T : ℝ) : ℝ :=
  ∑ z ∈ CanonicalZeroDivisor.heightHead T,
    (CanonicalZeroDivisor.multiplicity z : ℝ) *
      HeightCollisionLift.centeredOffset z ^ 2

/-- The new scalar is exactly the existing test-function defect at test one. -/
@[simp]
theorem horizontalDefect_one (T : ℝ) :
    HeightCollisionLift.horizontalDefect T (fun _ => (1 : ℝ)) =
      unitHorizontalDefect T := by
  simp [HeightCollisionLift.horizontalDefect, unitHorizontalDefect]

/-- Every summand is nonnegative, so the finite defect is nonnegative. -/
theorem unitHorizontalDefect_nonneg (T : ℝ) :
    0 ≤ unitHorizontalDefect T := by
  unfold unitHorizontalDefect
  apply Finset.sum_nonneg
  intro z member
  exact mul_nonneg (by positivity)
    (sq_nonneg (HeightCollisionLift.centeredOffset z))

/-- Enlarging the closed height head can only add nonnegative source terms. -/
theorem unitHorizontalDefect_mono {T V : ℝ} (hTV : T ≤ V) :
    unitHorizontalDefect T ≤ unitHorizontalDefect V := by
  unfold unitHorizontalDefect
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (CanonicalZeroDivisor.heightHead_mono hTV)
    (fun z _ _ => mul_nonneg (by positivity)
      (sq_nonneg (HeightCollisionLift.centeredOffset z)))

/-- A negative cutoff has an empty canonical head and hence zero defect. -/
theorem unitHorizontalDefect_eq_zero_of_neg {T : ℝ} (hT : T < 0) :
    unitHorizontalDefect T = 0 := by
  unfold unitHorizontalDefect
  rw [CanonicalZeroDivisor.heightHead_eq_empty_of_neg hT]
  simp

/-- Exact bounded statement: all source zeros through the cutoff are critical. -/
def CriticalLineThroughHeight (T : ℝ) : Prop :=
  ∀ z : ZeroPoint,
    CanonicalZeroDivisor.height z ≤ T → z.1.re = 1 / 2

/-- Zero total defect forces the centered offset of every included source point
individually to vanish. Positive analytic multiplicity is essential here. -/
theorem centeredOffset_eq_zero_of_mem_head
    {T : ℝ} {z : ZeroPoint}
    (member : z ∈ CanonicalZeroDivisor.heightHead T)
    (zeroDefect : unitHorizontalDefect T = 0) :
    HeightCollisionLift.centeredOffset z = 0 := by
  have nonnegative :
      ∀ w ∈ CanonicalZeroDivisor.heightHead T,
        0 ≤ (CanonicalZeroDivisor.multiplicity w : ℝ) *
          HeightCollisionLift.centeredOffset w ^ 2 := by
    intro w hw
    exact mul_nonneg (by positivity)
      (sq_nonneg (HeightCollisionLift.centeredOffset w))
  have total :
      (∑ w ∈ CanonicalZeroDivisor.heightHead T,
        (CanonicalZeroDivisor.multiplicity w : ℝ) *
          HeightCollisionLift.centeredOffset w ^ 2) = 0 := by
    simpa only [unitHorizontalDefect] using zeroDefect
  have term :
      (CanonicalZeroDivisor.multiplicity z : ℝ) *
          HeightCollisionLift.centeredOffset z ^ 2 = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg nonnegative).mp total z member
  have nonzeroMultiplicity :
      (CanonicalZeroDivisor.multiplicity z : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr
      (Nat.ne_of_gt (CanonicalZeroDivisor.multiplicity_pos z))
  have squareZero : HeightCollisionLift.centeredOffset z ^ 2 = 0 :=
    (mul_eq_zero.mp term).resolve_left nonzeroMultiplicity
  exact sq_eq_zero_iff.mp squareZero

/-- Vanishing of the finite defect gives bounded critical-line control. -/
theorem criticalLineThroughHeight_of_unitHorizontalDefect_eq_zero
    {T : ℝ} (zeroDefect : unitHorizontalDefect T = 0) :
    CriticalLineThroughHeight T := by
  intro z heightBound
  have member : z ∈ CanonicalZeroDivisor.heightHead T :=
    (CanonicalZeroDivisor.mem_heightHead T z).mpr heightBound
  have offsetZero : HeightCollisionLift.centeredOffset z = 0 :=
    centeredOffset_eq_zero_of_mem_head member zeroDefect
  dsimp only [HeightCollisionLift.centeredOffset] at offsetZero
  linarith

/-- If every included source zero is critical, every finite defect summand vanishes. -/
theorem unitHorizontalDefect_eq_zero_of_criticalLineThroughHeight
    {T : ℝ} (critical : CriticalLineThroughHeight T) :
    unitHorizontalDefect T = 0 := by
  unfold unitHorizontalDefect
  apply Finset.sum_eq_zero
  intro z member
  have heightBound : CanonicalZeroDivisor.height z ≤ T :=
    (CanonicalZeroDivisor.mem_heightHead T z).mp member
  have line : z.1.re = 1 / 2 := critical z heightBound
  have offsetZero : HeightCollisionLift.centeredOffset z = 0 := by
    unfold HeightCollisionLift.centeredOffset
    linarith
  rw [offsetZero]
  simp

/-- Exact finite criterion, with closed-height endpoint and multiplicity retained. -/
theorem unitHorizontalDefect_eq_zero_iff_criticalLineThroughHeight (T : ℝ) :
    unitHorizontalDefect T = 0 ↔ CriticalLineThroughHeight T := by
  constructor
  · exact criticalLineThroughHeight_of_unitHorizontalDefect_eq_zero
  · exact unitHorizontalDefect_eq_zero_of_criticalLineThroughHeight

/-- Canonical RH supplies bounded critical-line control at every cutoff. -/
theorem criticalLineThroughHeight_of_riemannHypothesis
    (hRH : _root_.RiemannHypothesis) (T : ℝ) :
    CriticalLineThroughHeight T := by
  intro z heightBound
  exact hRH z.1 z.2.1 z.2.2.1 z.2.2.2

/-- Canonical RH annihilates the constant-test finite defect. -/
theorem unitHorizontalDefect_eq_zero_of_riemannHypothesis
    (hRH : _root_.RiemannHypothesis) (T : ℝ) :
    unitHorizontalDefect T = 0 :=
  unitHorizontalDefect_eq_zero_of_criticalLineThroughHeight
    (criticalLineThroughHeight_of_riemannHypothesis hRH T)

/-- Vanishing of the source-fixed defect at every real cutoff is equivalent to
canonical RH. The reverse implication selects each zero's own finite head. -/
theorem riemannHypothesis_iff_unitHorizontalDefect_zero_all :
    _root_.RiemannHypothesis ↔
      ∀ T : ℝ, unitHorizontalDefect T = 0 := by
  constructor
  · intro hRH T
    exact unitHorizontalDefect_eq_zero_of_riemannHypothesis hRH T
  · intro zeroAll
    intro s hs htrivial hpole
    let z : ZeroPoint := ⟨s, ⟨hs, htrivial, hpole⟩⟩
    have critical :
        CriticalLineThroughHeight (CanonicalZeroDivisor.height z) :=
      criticalLineThroughHeight_of_unitHorizontalDefect_eq_zero
        (zeroAll (CanonicalZeroDivisor.height z))
    simpa only [z] using critical z le_rfl

/-- It is enough to annihilate the finite defect on any cofinal family of
cutoffs; no affine-density or gap bound is needed for this exact divisor route. -/
theorem riemannHypothesis_of_cofinal_unitHorizontalDefect_zero
    (cutoff : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (zeroDefect : ∀ n : ℕ, unitHorizontalDefect (cutoff n) = 0) :
    _root_.RiemannHypothesis := by
  intro s hs htrivial hpole
  let z : ZeroPoint := ⟨s, ⟨hs, htrivial, hpole⟩⟩
  obtain ⟨n, hn⟩ := cofinal (CanonicalZeroDivisor.height z)
  have critical : CriticalLineThroughHeight (cutoff n) :=
    criticalLineThroughHeight_of_unitHorizontalDefect_eq_zero (zeroDefect n)
  simpa only [z] using critical z hn

/-- Conditional trace-side sign certificate at one finite cutoff.

The balance and all sign fields are mathematical obligations. In particular,
this structure does not manufacture a trace identity from arbitrary numbers:
a consumer may use it only after a source-specific supplier proves every field. -/
structure FiniteTraceSignCertificate (T : ℝ) where
  continuousTerm : ℝ
  cuspTerm : ℝ
  boundaryTerm : ℝ
  geometricTerm : ℝ
  balance :
    unitHorizontalDefect T + continuousTerm + cuspTerm + boundaryTerm =
      geometricTerm
  continuous_nonneg : 0 ≤ continuousTerm
  cusp_nonneg : 0 ≤ cuspTerm
  boundary_nonneg : 0 ≤ boundaryTerm
  geometric_nonpos : geometricTerm ≤ 0

/-- The trace balance and sign package forces the exact finite spectral defect
to vanish; it does not prove that any such package exists. -/
theorem unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate
    {T : ℝ} (certificate : FiniteTraceSignCertificate T) :
    unitHorizontalDefect T = 0 := by
  have totalNonpos :
      unitHorizontalDefect T + certificate.continuousTerm +
          certificate.cuspTerm + certificate.boundaryTerm ≤ 0 := by
    rw [certificate.balance]
    exact certificate.geometric_nonpos
  have defectNonneg : 0 ≤ unitHorizontalDefect T :=
    unitHorizontalDefect_nonneg T
  linarith [certificate.continuous_nonneg, certificate.cusp_nonneg,
    certificate.boundary_nonneg]

/-- Conversely, an already-vanishing defect gives the degenerate all-zero
certificate. This theorem exposes the interface's logical strength: the generic
structure is only a consumer contract, and a genuine trace advance must build
its fields from an independently defined source identity rather than from the
conclusion it is intended to prove. -/
def finiteTraceSignCertificate_of_unitHorizontalDefect_eq_zero
    {T : ℝ} (zeroDefect : unitHorizontalDefect T = 0) :
    FiniteTraceSignCertificate T where
  continuousTerm := 0
  cuspTerm := 0
  boundaryTerm := 0
  geometricTerm := 0
  balance := by simp [zeroDefect]
  continuous_nonneg := le_rfl
  cusp_nonneg := le_rfl
  boundary_nonneg := le_rfl
  geometric_nonpos := le_rfl

/-- The abstract sign-certificate type itself is equivalent to finite defect
vanishing. Mathematical content enters only through a source-bound construction
of a certificate that does not assume that vanishing. -/
theorem nonempty_finiteTraceSignCertificate_iff (T : ℝ) :
    Nonempty (FiniteTraceSignCertificate T) ↔
      unitHorizontalDefect T = 0 := by
  constructor
  · rintro ⟨certificate⟩
    exact unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate certificate
  · intro zeroDefect
    exact ⟨finiteTraceSignCertificate_of_unitHorizontalDefect_eq_zero zeroDefect⟩

/-- A finite trace certificate returns bounded critical-line control. -/
theorem criticalLineThroughHeight_of_finiteTraceSignCertificate
    {T : ℝ} (certificate : FiniteTraceSignCertificate T) :
    CriticalLineThroughHeight T :=
  criticalLineThroughHeight_of_unitHorizontalDefect_eq_zero
    (unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate certificate)

/-- Cofinal trace certificates would imply canonical RH. Their existence,
source identity, and signs remain the substantive unresolved supplier. -/
theorem riemannHypothesis_of_cofinal_finiteTraceSignCertificates
    (cutoff : ℕ → ℝ)
    (cofinal : ∀ t : ℝ, ∃ n : ℕ, t ≤ cutoff n)
    (certificates : ∀ n : ℕ, FiniteTraceSignCertificate (cutoff n)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cofinal_unitHorizontalDefect_zero cutoff cofinal
    (fun n => unitHorizontalDefect_eq_zero_of_finiteTraceSignCertificate
      (certificates n))

end
end GRWTSK.RiemannHypothesis.HorizontalDefectCriterion
