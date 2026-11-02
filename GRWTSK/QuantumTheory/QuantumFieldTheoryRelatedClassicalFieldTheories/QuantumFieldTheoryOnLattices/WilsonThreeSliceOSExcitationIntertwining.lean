/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSDefect
import Mathlib

/-!
# Exact Wilson OS vacuum and full supported-excitation intertwining

Local mathematical attribution: grwtsk contributors.

For the true period-six Wilson reflection-positive quotient, the original
positive-time translation is bounded ONLY from the completion of its
two-step-supported quotient classes K into the whole complex OS Hilbert H.
It is not an all-H endomorphism.

The SOURCE normalized constant observable gives unit vacua omega in K and
Omega in H. The old quotient Hermitian time-translation identity proves
<Omega,Aq> = <omega,q> for EVERY ORIGINAL supported class q. Continuity
and actual density, not an assumed global map, extend that identity to ALL
K. Thus A.adjoint Omega=omega, and the true source defect
D=I-A.adjoint A actually annihilates omega AS A VECTOR.

The exact vacuum-subtracted source and target components are intertwined.
The transfer therefore acts on the complete closed vacuum-orthogonal
supported-excitation subspace, with every original complex mixed term
preserved. Its one-step loss depends ONLY on this excitation component.

A source-defined positive defect floor is equivalent to a strict squared
norm contraction on the actual completed supported excitation space. This
is a criterion, not a claim that a positive floor has been established.
No full OS semigroup, boundary-sector density or physical continuum
Yang--Mills Hamiltonian is inferred.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
EXPECTED_TYPES_NOT_RUN; TRANSITIVE_AXIOMS_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSExcitationIntertwining

open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSVacuum
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect

variable (β : ℝ) (hβ : 0 ≤ β)

/-- The true full OS unit vacuum is the completion of the SAME old supported
Wilson quotient class, with all source normalization retained. -/
theorem vacuumOS_eq_supported_completion :
    vacuumOS β hβ =
      ((vacuumSupported β hβ :
          AlgebraicOSSpace 3 (by decide : 2 ≤ 3) β hβ) :
        FullOSHilbert β hβ) := by
  have h := completedRestrictedTranslation_vacuum β hβ
  rw [completedRestrictedTranslation_class,
    restrictedTranslation_vacuum] at h
  exact h.symm

/-- The actual translated class satisfies the Wilson vacuum pairing on
the ORIGINAL support inventory. No extension to all positive-time classes. -/
theorem source_vacuum_pairing
    (q : SupportedClasses β hβ) :
    inner ℂ (vacuumOS β hβ)
      (actualSupportedTransfer β hβ (q : SupportedHilbert β hβ)) =
      inner ℂ (supportedVacuum β hβ)
        (q : SupportedHilbert β hβ) := by
  change inner ℂ (vacuumOS β hβ)
      (completedRestrictedTranslation β hβ
        (q : UniformSpace.Completion (SupportedClasses β hβ))) = _
  rw [vacuumOS_eq_supported_completion,
    completedRestrictedTranslation_class]
  change inner ℂ
      (((vacuumSupported β hβ :
        AlgebraicOSSpace 3 (by decide : 2 ≤ 3) β hβ)) :
        FullOSHilbert β hβ)
      (((restrictedTranslation 3 (le_refl 3) β hβ q :
        AlgebraicOSSpace 3 (by decide : 2 ≤ 3) β hβ)) :
        FullOSHilbert β hβ) =
    inner ℂ
      ((vacuumSupported β hβ : SupportedClasses β hβ) :
        SupportedHilbert β hβ)
      (q : SupportedHilbert β hβ)
  simpa only [UniformSpace.Completion.inner_coe] using
    (restrictedTranslation_preserves_vacuum_pairing β hβ q)

/-- The true source pairing identity holds for EVERY element of the
COMPLETE supported Hilbert space, by density and continuity. -/
theorem completed_vacuum_pairing (x : SupportedHilbert β hβ) :
    inner ℂ (vacuumOS β hβ)
      (actualSupportedTransfer β hβ x) =
        inner ℂ (supportedVacuum β hβ) x := by
  have hc_left : Continuous
      (fun x : SupportedHilbert β hβ =>
        inner ℂ (vacuumOS β hβ)
          (actualSupportedTransfer β hβ x)) :=
    continuous_const.inner (actualSupportedTransfer β hβ).continuous
  have hc_right : Continuous
      (fun x : SupportedHilbert β hβ =>
        inner ℂ (supportedVacuum β hβ) x) :=
    continuous_const.inner continuous_id
  apply UniformSpace.Completion.induction_on x
    (isClosed_eq hc_left hc_right)
  intro q
  exact source_vacuum_pairing β hβ q

/-- The adjoint has the EXACT source vacuum as its image.
This is stronger than the previous equality of vacuum norms and no
free isometry or operator-intertwiner premise is postulated. -/
theorem transfer_adjoint_vacuum :
    (actualSupportedTransfer β hβ).adjoint (vacuumOS β hβ) =
      supportedVacuum β hβ := by
  apply ext_inner_left ℂ
  intro x
  rw [ContinuousLinearMap.adjoint_inner_left]
  exact completed_vacuum_pairing β hβ x

/-- The genuine source defect annihilates the actual unit Wilson vacuum
AS AN OPERATOR, not merely through its quadratic expectation. -/
theorem transferDefect_vacuum_eq_zero :
    transferDefect β hβ (supportedVacuum β hβ) = 0 := by
  have hv : actualSupportedTransfer β hβ (supportedVacuum β hβ) =
      vacuumOS β hβ :=
    completedRestrictedTranslation_vacuum β hβ
  change supportedVacuum β hβ -
    (actualSupportedTransfer β hβ).adjoint
      (actualSupportedTransfer β hβ (supportedVacuum β hβ)) = 0
  rw [hv, transfer_adjoint_vacuum]
  exact sub_self _

/-- The whole source defect image is orthogonal to the true OS vacuum,
a stronger all-input statement than a quadratic zero at the vacuum. -/
theorem transferDefect_image_orthogonal
    (x : SupportedHilbert β hβ) :
    inner ℂ (supportedVacuum β hβ)
      (transferDefect β hβ x) = 0 := by
  calc
    inner ℂ (supportedVacuum β hβ) (transferDefect β hβ x) =
        inner ℂ (transferDefect β hβ (supportedVacuum β hβ)) x :=
      (transferDefect_symmetric β hβ (supportedVacuum β hβ) x).symm
    _ = 0 := by rw [transferDefect_vacuum_eq_zero]; simp

/-- Source-supported Wilson excitation subspace: the literal orthogonal
complement of the source-normalized unit vacuum inside the ACTUAL domain. -/
def supportedExcitationSpace : Submodule ℂ (SupportedHilbert β hβ) :=
  (innerSL ℂ (supportedVacuum β hβ)).ker

/-- Target Wilson OS excitation subspace in the ENTIRE completed Hilbert.
No assertion that it is exhausted by the image of the supported source. -/
def fullOSExcitationSpace : Submodule ℂ (FullOSHilbert β hβ) :=
  (innerSL ℂ (vacuumOS β hβ)).ker

theorem supportedExcitationSpace_closed :
    IsClosed (supportedExcitationSpace β hβ : Set (SupportedHilbert β hβ)) :=
  (innerSL ℂ (supportedVacuum β hβ)).isClosed_ker

theorem fullOSExcitationSpace_closed :
    IsClosed (fullOSExcitationSpace β hβ : Set (FullOSHilbert β hβ)) :=
  (innerSL ℂ (vacuumOS β hβ)).isClosed_ker

/-- The actual supported vacuum-orthogonal sector is itself a COMPLETE
complex Hilbert space, not a finite residue Gram or assumed dense span. -/
noncomputable instance supportedExcitationComplete :
    CompleteSpace (supportedExcitationSpace β hβ) :=
  (supportedExcitationSpace_closed β hβ).isComplete.completeSpace_coe

noncomputable instance fullOSExcitationComplete :
    CompleteSpace (fullOSExcitationSpace β hβ) :=
  (fullOSExcitationSpace_closed β hβ).isComplete.completeSpace_coe

/-- The source-supported translation sends EVERY vacuum-orthogonal
completion state into the true full OS target vacuum-orthogonal sector. -/
theorem transfer_mem_full_excitation
    (x : SupportedHilbert β hβ)
    (hx : x ∈ supportedExcitationSpace β hβ) :
    actualSupportedTransfer β hβ x ∈
      fullOSExcitationSpace β hβ := by
  change inner ℂ (vacuumOS β hβ)
    (actualSupportedTransfer β hβ x) = 0
  rw [completed_vacuum_pairing]
  exact hx

/-- A TRUE bounded complex-linear map between the COMPLETE source and
target OS excitation Hilberts, built from the original Wilson transfer.
Its target can contain more physical sectors than the source range. -/
def excitationTransfer :
    supportedExcitationSpace β hβ →L[ℂ]
      fullOSExcitationSpace β hβ :=
  (actualSupportedTransfer β hβ).restrict
    (fun x hx => transfer_mem_full_excitation β hβ x hx)

@[simp] theorem excitationTransfer_coe
    (x : supportedExcitationSpace β hβ) :
    (excitationTransfer β hβ x : FullOSHilbert β hβ) =
      actualSupportedTransfer β hβ (x : SupportedHilbert β hβ) := rfl

/-- The new complete excitation-to-excitation Wilson transfer retains the
C=1 contractivity of the original physical reflection norm. -/
theorem excitationTransfer_norm_le
    (x : supportedExcitationSpace β hβ) :
    ‖excitationTransfer β hβ x‖ ≤ ‖x‖ := by
  calc
    ‖excitationTransfer β hβ x‖ =
        ‖actualSupportedTransfer β hβ (x : SupportedHilbert β hβ)‖ := rfl
    _ ≤ ‖(x : SupportedHilbert β hβ)‖ :=
      completedRestrictedTranslation_contracts β hβ (x : SupportedHilbert β hβ)
    _ = ‖x‖ := rfl

/-- The bounded operator norm on actual source-supported excitations is at
most one. A strictly smaller constant is NOT proved by this inequality. -/
theorem excitationTransfer_norm_le_one :
    ‖excitationTransfer β hβ‖ ≤ 1 := by
  apply (excitationTransfer β hβ).opNorm_le_bound (by norm_num)
  intro x
  simpa only [one_mul] using excitationTransfer_norm_le β hβ x

/-- The source-defect image remains in the actual completed
vacuum-orthogonal supported Hilbert, for ALL source inputs. -/
theorem transferDefect_mem_excitation (x : SupportedHilbert β hβ) :
    transferDefect β hβ x ∈ supportedExcitationSpace β hβ := by
  change inner ℂ (supportedVacuum β hβ)
    (transferDefect β hβ x) = 0
  exact transferDefect_image_orthogonal β hβ x

/-- The physical positive defect restricts to a genuine bounded
self-map of the ACTUAL complete supported-excitation Hilbert. -/
def excitationDefect :
    supportedExcitationSpace β hβ →L[ℂ]
      supportedExcitationSpace β hβ :=
  (transferDefect β hβ).restrict
    (fun x _ => transferDefect_mem_excitation β hβ x)

@[simp] theorem excitationDefect_coe
    (x : supportedExcitationSpace β hβ) :
    (excitationDefect β hβ x : SupportedHilbert β hβ) =
      transferDefect β hβ (x : SupportedHilbert β hβ) := rfl

/-- The true excitation deficit is EXACTLY the norm lost by the original
Wilson reflection-positive translation, with no invented cross penalty. -/
theorem excitationDefect_quadratic
    (x : supportedExcitationSpace β hβ) :
    (inner ℂ x (excitationDefect β hβ x)).re =
      ‖x‖ ^ 2 - ‖excitationTransfer β hβ x‖ ^ 2 := by
  change (inner ℂ (x : SupportedHilbert β hβ)
      (transferDefect β hβ (x : SupportedHilbert β hβ))).re =
    ‖(x : SupportedHilbert β hβ)‖ ^ 2 -
      ‖actualSupportedTransfer β hβ (x : SupportedHilbert β hβ)‖ ^ 2
  exact transferDefect_quadratic β hβ (x : SupportedHilbert β hβ)

/-- This exact necessary and sufficient condition exposes the missing
SOURCE strict contraction constant. It proves NO positive delta exists. -/
theorem excitationDefect_gap_iff_transfer_contraction (delta : ℝ) :
    (∀ x : supportedExcitationSpace β hβ,
      delta * ‖x‖ ^ 2 ≤
        (inner ℂ x (excitationDefect β hβ x)).re) ↔
    (∀ x : supportedExcitationSpace β hβ,
      ‖excitationTransfer β hβ x‖ ^ 2 ≤
        (1 - delta) * ‖x‖ ^ 2) := by
  constructor
  · intro h x
    have hq := h x
    rw [excitationDefect_quadratic] at hq
    nlinarith
  · intro h x
    have hq := h x
    rw [excitationDefect_quadratic]
    nlinarith

/-- Genuine source vacuum subtraction, on the COMPLETE supported Hilbert. -/
def supportedExcitationPart (x : SupportedHilbert β hβ) :
    SupportedHilbert β hβ :=
  x - (inner ℂ (supportedVacuum β hβ) x) • supportedVacuum β hβ

/-- Genuine full target OS vacuum subtraction; no artificial surplus
sector is silently set to zero. -/
def fullOSExcitationPart (y : FullOSHilbert β hβ) :
    FullOSHilbert β hβ :=
  y - (inner ℂ (vacuumOS β hβ) y) • vacuumOS β hβ

/-- The literal vacuum-centered source input is orthogonal to the true
source vacuum, not merely Haar-mean-zero. -/
theorem supportedExcitationPart_orthogonal (x : SupportedHilbert β hβ) :
    inner ℂ (supportedVacuum β hβ)
      (supportedExcitationPart β hβ x) = 0 := by
  change inner ℂ (supportedVacuum β hβ)
    (x - (inner ℂ (supportedVacuum β hβ) x) •
      supportedVacuum β hβ) = 0
  rw [inner_sub_right, inner_smul_right,
    inner_self_eq_norm_sq_to_K, supportedVacuum_unit]
  simp

theorem fullOSExcitationPart_orthogonal (y : FullOSHilbert β hβ) :
    inner ℂ (vacuumOS β hβ) (fullOSExcitationPart β hβ y) = 0 := by
  change inner ℂ (vacuumOS β hβ)
    (y - (inner ℂ (vacuumOS β hβ) y) • vacuumOS β hβ) = 0
  rw [inner_sub_right, inner_smul_right,
    inner_self_eq_norm_sq_to_K, vacuumOS_unit]
  simp

/-- The ACTUAL completed Wilson transfer INTERTWINES the source and target
vacuum projections exactly, including all original supported modes. -/
theorem transfer_excitationPart
    (x : SupportedHilbert β hβ) :
    actualSupportedTransfer β hβ (supportedExcitationPart β hβ x) =
      fullOSExcitationPart β hβ
        (actualSupportedTransfer β hβ x) := by
  unfold supportedExcitationPart fullOSExcitationPart
  rw [map_sub, map_smul,
    show actualSupportedTransfer β hβ (supportedVacuum β hβ) =
      vacuumOS β hβ from completedRestrictedTranslation_vacuum β hβ,
    completed_vacuum_pairing β hβ x]

/-- The vacuum cannot contribute to the one-step defect; its source
operator annihilation is proved, not postulated. -/
theorem transferDefect_excitationPart
    (x : SupportedHilbert β hβ) :
    transferDefect β hβ (supportedExcitationPart β hβ x) =
      transferDefect β hβ x := by
  unfold supportedExcitationPart
  rw [map_sub, map_smul, transferDefect_vacuum_eq_zero,
    smul_zero, sub_zero]

theorem vacuum_pairing_defect_zero (x : SupportedHilbert β hβ) :
    inner ℂ (supportedVacuum β hβ) (transferDefect β hβ x) = 0 :=
  transferDefect_image_orthogonal β hβ x

/-- Source one-step defect quadratic is EXACTLY its vacuum-subtracted
quadratic, including the full original complex cross terms. -/
theorem transferDefect_quadratic_centered (x : SupportedHilbert β hβ) :
    (inner ℂ x (transferDefect β hβ x)).re =
      (inner ℂ (supportedExcitationPart β hβ x)
        (transferDefect β hβ (supportedExcitationPart β hβ x))).re := by
  have hsplit :
      x = supportedExcitationPart β hβ x +
        (inner ℂ (supportedVacuum β hβ) x) • supportedVacuum β hβ := by
    unfold supportedExcitationPart
    abel
  have hmap := transferDefect_excitationPart β hβ x
  have heq : inner ℂ x (transferDefect β hβ x) =
      inner ℂ (supportedExcitationPart β hβ x)
        (transferDefect β hβ (supportedExcitationPart β hβ x)) := by
    calc
      _ = inner ℂ
          (supportedExcitationPart β hβ x +
            (inner ℂ (supportedVacuum β hβ) x) • supportedVacuum β hβ)
          (transferDefect β hβ (supportedExcitationPart β hβ x)) := by
        rw [← hsplit, hmap]
      _ = inner ℂ (supportedExcitationPart β hβ x)
          (transferDefect β hβ (supportedExcitationPart β hβ x)) := by
        rw [inner_add_left, inner_smul_left,
          vacuum_pairing_defect_zero β hβ
            (supportedExcitationPart β hβ x)]
        simp
  exact congrArg Complex.re heq

/-- Complete return to the actual Wilson source norm: the vacuum carries
ZERO one-step loss, all norm loss is in the genuine excitation component. -/
theorem original_norm_loss_eq_excitation_loss (x : SupportedHilbert β hβ) :
    ‖x‖ ^ 2 - ‖actualSupportedTransfer β hβ x‖ ^ 2 =
      ‖supportedExcitationPart β hβ x‖ ^ 2 -
        ‖actualSupportedTransfer β hβ
          (supportedExcitationPart β hβ x)‖ ^ 2 := by
  calc
    _ = (inner ℂ x (transferDefect β hβ x)).re :=
      (transferDefect_quadratic β hβ x).symm
    _ = (inner ℂ (supportedExcitationPart β hβ x)
          (transferDefect β hβ (supportedExcitationPart β hβ x))).re :=
      transferDefect_quadratic_centered β hβ x
    _ = _ := transferDefect_quadratic β hβ
      (supportedExcitationPart β hβ x)

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSExcitationIntertwining
