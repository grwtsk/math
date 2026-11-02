/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSExcitationIntertwining
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceTranslation
import Mathlib

/-!
# Literal twice-time Wilson OS transport and the exact positive defect square

Local mathematical attribution: grwtsk contributors.

At the actual six-slice four-dimensional SU(2) Wilson period, the original
positive-time TWO-STEP supported observable F has its literal first AND
second translations inside the positive-time observable algebra. The source
proves the second translated reflection norm is EXACTLY that of F.

We descend the twice-translated observable through the SAME ORIGINAL null
radical and extend it by isometry from the actual supported quotient to
the full complex OS Hilbert. The result is a new SOURCE-DEFINED
second-time isometry J₂ : K_supported -> H_OS, not a fictitious semigroup
endomorphism or an assumed boundary correction.

The ORIGINAL supported inclusion J : K_supported -> H_OS is also an
isometry. The original one-time Wilson translation A retains the exact
two-slot source identity

    <J x, J₂ y> = <A x, A y>

on ALL completed supported classes. Consequently, with original source
defect D = I - A† A, the complete one-time OS loss is

    ||x||² - ||A x||² = (1/2) ||J x - J₂ x||².

This provides a fully source-identified, positive norm-square witness.
Strict one-state contraction is equivalent to the ORIGINAL first and
second source embeddings being unequal; no strictly positive uniform
bound on ALL vacuum-orthogonal supported excitations is asserted.
The original full-positive-time boundary sectors, full OS Hamiltonian,
and continuum Yang--Mills remain outside this supported-map identity.

SOURCE_PROOF_CANDIDATE; LEAN_COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; EXPECTED_TYPES_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSTwiceShift

open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSVacuum
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSExcitationIntertwining

variable (β : ℝ) (hβ : 0 ≤ β)

private theorem hTwo : (2 : ℕ) ≤ 3 := by decide
private theorem hThree : (3 : ℕ) ≤ 3 := by decide

/-- The existing ACTUAL reflected second-shift source identity returns
the entire original real reflection diagonal, including both temporal
crossing layers of the normalized finite Wilson measure. -/
theorem twice_diagonal_eq (F : twoStepDomain 3) :
    (positiveReflectionForm 3 hTwo β
        (translateTwicePositive 3 hThree F)
        (translateTwicePositive 3 hThree F)).re =
      (positiveReflectionForm 3 hTwo β F.val F.val).re := by
  have h := congrArg Complex.re (translateTwice_diagonal_conjugate β F)
  simpa only [Complex.conj_re] using h

/-- A genuine null original supported observable remains null after the
LITERAL second shift. The source's full null radical is used unchanged. -/
theorem twice_null (F : twoStepDomain 3)
    (hF : F.val ∈ nullSubmodule 3 hTwo β hβ) :
    translateTwicePositive 3 hThree F ∈
      nullSubmodule 3 hTwo β hβ := by
  apply (mem_nullSubmodule_iff 3 hTwo β hβ _).mpr
  rw [twice_diagonal_eq β F]
  exact (mem_nullSubmodule_iff 3 hTwo β hβ F.val).mp hF

/-- THE actual source twice-pullback, followed by the existing algebraic
reflection-quotient map. Unlike the first shift, its class norm is unchanged. -/
def twiceClass : twoStepDomain 3 →ₗ[ℂ]
    AlgebraicOSSpace 3 hTwo β hβ :=
  (nullSubmodule 3 hTwo β hβ).mkQ.comp
    (translateTwicePositive 3 hThree)

/-- Source factorization through the SAME original quotient kernel:
no new quotient relation or arbitrary representative is introduced. -/
theorem ker_classMap_le_ker_twiceClass :
    LinearMap.ker (classMap 3 hThree β hβ) ≤
      LinearMap.ker (twiceClass β hβ) := by
  intro F hF
  have hn : F.val ∈ nullSubmodule 3 hTwo β hβ := by
    apply Submodule.Quotient.mk_eq_zero.mp
    exact hF
  change (Submodule.Quotient.mk
    (translateTwicePositive 3 hThree F) :
      AlgebraicOSSpace 3 hTwo β hβ) = 0
  exact Submodule.Quotient.mk_eq_zero.mpr (twice_null β hβ F hn)

/-- The established first-isomorphism quotient used by the original
restrictedTranslation source is reused for this genuine second shift. -/
def twiceLift :
    (twoStepDomain 3 ⧸ LinearMap.ker (classMap 3 hThree β hβ)) →ₗ[ℂ]
      AlgebraicOSSpace 3 hTwo β hβ :=
  (LinearMap.ker (classMap 3 hThree β hβ)).liftQ
    (twiceClass β hβ) (ker_classMap_le_ker_twiceClass β hβ)

/-- An actual second-time map on every algebraic supported OS class,
with the COMPLETE full OS quotient as target. -/
def twiceTransport : SupportedClasses β hβ →ₗ[ℂ]
    AlgebraicOSSpace 3 hTwo β hβ :=
  (twiceLift β hβ).comp
    (classMap 3 hThree β hβ).quotKerEquivRange.symm.toLinearMap

theorem twiceTransport_class (F : twoStepDomain 3) :
    twiceTransport β hβ
      ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩ =
        (Submodule.Quotient.mk
          (translateTwicePositive 3 hThree F) :
          AlgebraicOSSpace 3 hTwo β hβ) := by
  change twiceLift β hβ
    ((classMap 3 hThree β hβ).quotKerEquivRange.symm
      ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩) = _
  rw [LinearMap.quotKerEquivRange_symm_apply_image]
  rfl

/-- The TRUE source T=3 second shift is an ISOMETRY on the ORIGINAL
supported quotient, not merely a new abstract Hilbert embedding. -/
theorem twiceTransport_norm (q : SupportedClasses β hβ) :
    ‖twiceTransport β hβ q‖ = ‖q‖ := by
  obtain ⟨F, hF⟩ := q.prop
  have hq : q =
      ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩ :=
    Subtype.ext hF.symm
  rw [hq]
  have hnorm :
      ‖twiceTransport β hβ
        ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩‖ ^ 2 =
      ‖(⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩ :
        SupportedClasses β hβ)‖ ^ 2 := by
    rw [twiceTransport_class, norm_sq_eq_re_inner,
      norm_sq_eq_re_inner]
    change (positiveReflectionForm 3 hTwo β
        (translateTwicePositive 3 hThree F)
        (translateTwicePositive 3 hThree F)).re =
      (positiveReflectionForm 3 hTwo β F.val F.val).re
    exact twice_diagonal_eq β F
  nlinarith [norm_nonneg
    (twiceTransport β hβ
      ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩),
    norm_nonneg
      (⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩ :
        SupportedClasses β hβ)]

/-- The ACTUAL algebraic second-shift map is bounded by one, as a direct
consequence of the proved source isometry. -/
def twiceTransportCLM : SupportedClasses β hβ →L[ℂ]
    AlgebraicOSSpace 3 hTwo β hβ :=
  (twiceTransport β hβ).mkContinuous 1 (by
    intro q
    simpa only [one_mul] using
      (twiceTransport_norm β hβ q).le)

/-- Extend the REAL original source second shift, including all its
positive-time crossing contributions, to the COMPLETE supported Hilbert. -/
def twiceTransportComplete : SupportedHilbert β hβ →L[ℂ]
    FullOSHilbert β hβ :=
  (twiceTransportCLM β hβ).completion

theorem twiceTransportComplete_class (q : SupportedClasses β hβ) :
    twiceTransportComplete β hβ
        (q : SupportedHilbert β hβ) =
      ((twiceTransport β hβ q : AlgebraicOSSpace 3 hTwo β hβ) :
        FullOSHilbert β hβ) :=
  ContinuousLinearMap.completion_apply_coe
    (twiceTransportCLM β hβ) q

/-- The second shift is a true isometry even AFTER completion. There is
NO claim its image equals the entire completed OS Hilbert. -/
theorem twiceTransportComplete_norm (x : SupportedHilbert β hβ) :
    ‖twiceTransportComplete β hβ x‖ = ‖x‖ := by
  apply UniformSpace.Completion.induction_on x
    (isClosed_eq
      (continuous_norm.comp (twiceTransportComplete β hβ).continuous)
      continuous_norm)
  intro q
  rw [twiceTransportComplete_class,
    UniformSpace.Completion.norm_coe,
    UniformSpace.Completion.norm_coe]
  exact twiceTransport_norm β hβ q

/-- The canonical inclusion of the ACTUAL old supported quotient into the
ACTUAL full OS quotient, completed without changing its complex norm. -/
def originalEmbedding : SupportedHilbert β hβ →L[ℂ]
    FullOSHilbert β hβ :=
  ((SupportedClasses β hβ).subtypeL).completion

theorem originalEmbedding_class (q : SupportedClasses β hβ) :
    originalEmbedding β hβ (q : SupportedHilbert β hβ) =
      ((q : AlgebraicOSSpace 3 hTwo β hβ) :
        FullOSHilbert β hβ) :=
  ContinuousLinearMap.completion_apply_coe
    ((SupportedClasses β hβ).subtypeL) q

theorem originalEmbedding_norm (x : SupportedHilbert β hβ) :
    ‖originalEmbedding β hβ x‖ = ‖x‖ := by
  apply UniformSpace.Completion.induction_on x
    (isClosed_eq
      (continuous_norm.comp (originalEmbedding β hβ).continuous)
      continuous_norm)
  intro q
  rw [originalEmbedding_class, UniformSpace.Completion.norm_coe,
    UniformSpace.Completion.norm_coe]
  rfl

/-- EXACT two-slot time-translation equality from the original complete
six-layer Wilson measure, not an assumed semigroup intertwining. -/
theorem original_mixed_shift (F G : twoStepDomain 3) :
    positiveReflectionForm 3 hTwo β
        (translatePositive 3 hThree F)
        (translatePositive 3 hThree G) =
      positiveReflectionForm 3 hTwo β F.val
        (translateTwicePositive 3 hThree G) := by
  letI : NeZero 6 := ⟨by decide⟩
  exact reflectionForm_translate_left 6 β F.val.val
    (translateObservable G.val.val)

/-- Two-slot source pairing, at every ORIGINAL actual supported Wilson
class, with no omitted complex signed or boundary cross term. -/
theorem original_mixed_class_pair
    (q r : SupportedClasses β hβ) :
    inner ℂ
      (originalEmbedding β hβ (q : SupportedHilbert β hβ))
      (twiceTransportComplete β hβ (r : SupportedHilbert β hβ)) =
    inner ℂ
      (actualSupportedTransfer β hβ (q : SupportedHilbert β hβ))
      (actualSupportedTransfer β hβ (r : SupportedHilbert β hβ)) := by
  obtain ⟨F, hF⟩ := q.prop
  obtain ⟨G, hG⟩ := r.prop
  have eqF : q = ⟨classMap 3 hThree β hβ F, ⟨F, rfl⟩⟩ :=
    Subtype.ext hF.symm
  have eqG : r = ⟨classMap 3 hThree β hβ G, ⟨G, rfl⟩⟩ :=
    Subtype.ext hG.symm
  rw [eqF, eqG]
  rw [originalEmbedding_class,
    twiceTransportComplete_class,
    completedRestrictedTranslation_class,
    completedRestrictedTranslation_class,
    UniformSpace.Completion.inner_coe,
    UniformSpace.Completion.inner_coe,
    twiceTransport_class, restrictedTranslation_class,
    restrictedTranslation_class]
  change positiveReflectionForm 3 hTwo β F.val
      (translateTwicePositive 3 hThree G) =
    positiveReflectionForm 3 hTwo β
      (translatePositive 3 hThree F) (translatePositive 3 hThree G)
  exact (original_mixed_shift β F G).symm

/-- Dense passage of the genuine original two-slot equality to EVERY
complex state in the full supported OS Hilbert completion. -/
theorem completed_mixed_pair (x y : SupportedHilbert β hβ) :
    inner ℂ (originalEmbedding β hβ x)
      (twiceTransportComplete β hβ y) =
    inner ℂ (actualSupportedTransfer β hβ x)
      (actualSupportedTransfer β hβ y) := by
  apply UniformSpace.Completion.induction_on₂ x y
    (isClosed_eq (by fun_prop) (by fun_prop))
  intro q r
  exact original_mixed_class_pair β hβ q r

/-- The complete actual one-step OS contraction defect is HALF the square
of the difference between the two SOURCE-DEFINED isometries.
This is a genuinely new source-preserving quantitative identity, not a
free deficit term or a finite residue quadratic. -/
theorem exact_loss_as_twice_shift_distance (x : SupportedHilbert β hβ) :
    ‖x‖ ^ 2 - ‖actualSupportedTransfer β hβ x‖ ^ 2 =
      (1 / 2 : ℝ) *
        ‖originalEmbedding β hβ x - twiceTransportComplete β hβ x‖ ^ 2 := by
  have h1 := originalEmbedding_norm β hβ x
  have h2 := twiceTransportComplete_norm β hβ x
  have hm := congrArg Complex.re (completed_mixed_pair β hβ x x)
  have hmix :
      (inner ℂ (originalEmbedding β hβ x)
        (twiceTransportComplete β hβ x)).re =
      ‖actualSupportedTransfer β hβ x‖ ^ 2 := by
    exact hm.trans (norm_sq_eq_re_inner (𝕜 := ℂ)
      (actualSupportedTransfer β hβ x)).symm
  have hpolar := norm_sub_sq
    (originalEmbedding β hβ x) (twiceTransportComplete β hβ x)
  rw [h1, h2, hmix] at hpolar
  linarith

/-- A true strict one-state contraction is exactly the obstruction that
the original Wilson source class differs from its actual twice shift
IN THE COMPLETE FULL REFLECTION HILBERT, not merely pointwise. -/
theorem strict_contraction_iff_twice_shift_distinct
    (x : SupportedHilbert β hβ) :
    ‖actualSupportedTransfer β hβ x‖ < ‖x‖ ↔
      originalEmbedding β hβ x ≠ twiceTransportComplete β hβ x := by
  have hloss := exact_loss_as_twice_shift_distance β hβ x
  constructor
  · intro h hx
    rw [hx, sub_self, norm_zero, zero_pow (by decide), mul_zero] at hloss
    nlinarith [norm_nonneg (actualSupportedTransfer β hβ x), norm_nonneg x]
  · intro h
    have hd : 0 < ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ ^ 2 := by
      have hz : originalEmbedding β hβ x -
          twiceTransportComplete β hβ x ≠ 0 := sub_ne_zero.mpr h
      exact sq_pos_of_pos (norm_pos_iff.mpr hz)
    nlinarith [norm_nonneg (actualSupportedTransfer β hβ x), norm_nonneg x]

/-- EXACT source-specific criterion for a UNIFORM strict deficit, with
the original twice-shift difference supplying the entire quadratic.
The positive numerical lower bound itself is NOT proved here. -/
theorem uniform_contraction_iff_twice_shift_separation (delta : ℝ) :
    (∀ x : supportedExcitationSpace β hβ,
      ‖actualSupportedTransfer β hβ (x : SupportedHilbert β hβ)‖ ^ 2 ≤
        (1 - delta) * ‖(x : SupportedHilbert β hβ)‖ ^ 2) ↔
    (∀ x : supportedExcitationSpace β hβ,
      2 * delta * ‖(x : SupportedHilbert β hβ)‖ ^ 2 ≤
        ‖originalEmbedding β hβ (x : SupportedHilbert β hβ) -
          twiceTransportComplete β hβ (x : SupportedHilbert β hβ)‖ ^ 2) := by
  constructor
  · intro h x
    have hd := exact_loss_as_twice_shift_distance β hβ
      (x : SupportedHilbert β hβ)
    have hb := h x
    linarith
  · intro h x
    have hd := exact_loss_as_twice_shift_distance β hβ
      (x : SupportedHilbert β hβ)
    have hb := h x
    linarith

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSTwiceShift
