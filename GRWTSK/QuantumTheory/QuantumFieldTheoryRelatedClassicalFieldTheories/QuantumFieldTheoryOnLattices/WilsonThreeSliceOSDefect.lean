/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSVacuum
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Positive

/-!
# Canonical one-step Wilson OS transfer defect on the exact supported completion

Local mathematical attribution: grwtsk contributors.

The source is the ACTUAL period-six Wilson reflection-positive quotient,
its true complex Hilbert completion, and the C=1 bounded translation from
the exact two-step-supported subspace completion into the full OS Hilbert.

No fictitious global time-translation endomorphism is introduced.
Instead the EXISTING restricted contraction A : H_supported -> H_OS
induces the genuine bounded self-adjoint operator

  D = I - A† A : H_supported -> H_supported.

Its diagonal is exactly the full original supported reflection norm
minus the full translated norm, and it is pointwise nonnegative by
the existing source contraction. The original Wilson normalized vacuum
has zero defect. The operator is thus an exact positive semidefinite
one-step energy-loss observable on the COMPLETE supported completion,
not a new Yang--Mills physical Hamiltonian.

No strict coercivity, global OS semigroup, full-support density,
complex/real Wilson transfer intertwining, cutoff-uniform gap or
continuum reconstruction is assumed or asserted.

SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; LAKE_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOMS_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect

open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
open GRWTSK.Geometry.GaugeTheory.WilsonRestrictedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSBoundedTranslation
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSVacuum

variable (β : ℝ) (hβ : 0 ≤ β)

/-- The exact supported-completion domain, NOT the whole OS physical space. -/
abbrev SupportedHilbert :=
  UniformSpace.Completion (SupportedClasses β hβ)

/-- The genuine full completed period-six OS Hilbert as codomain. -/
abbrev FullOSHilbert :=
  CompletedOSHilbert 3 (by decide : 2 ≤ 3) β hβ

/-- The ORIGINAL source translation, completed on precisely its proved
supported domain, without any artificial extension on omitted sectors. -/
def actualSupportedTransfer : SupportedHilbert β hβ →L[ℂ] FullOSHilbert β hβ :=
  completedRestrictedTranslation β hβ

/-- A bounded, concrete, self-adjoint one-step contraction DEFECT.
No full finite-period semigroup or physical Hamiltonian is presumed. -/
def transferDefect : SupportedHilbert β hβ →L[ℂ] SupportedHilbert β hβ :=
  ContinuousLinearMap.id ℂ (SupportedHilbert β hβ) -
    ((actualSupportedTransfer β hβ).adjoint.comp
      (actualSupportedTransfer β hβ))

/-- Exact two-slot identity for the true original Wilson OS contraction:
no artificial unobserved or cross contribution has been removed. -/
theorem transferDefect_pairing
    (x y : SupportedHilbert β hβ) :
    inner ℂ x (transferDefect β hβ y) =
      inner ℂ x y -
        inner ℂ (actualSupportedTransfer β hβ x)
          (actualSupportedTransfer β hβ y) := by
  change inner ℂ x
    (y - (actualSupportedTransfer β hβ).adjoint
      (actualSupportedTransfer β hβ y)) = _
  rw [inner_sub_right,
    ContinuousLinearMap.adjoint_inner_right]

/-- The one-step loss is the EXACT difference of the original squared OS
norms. The right side is real by source inner-product definiteness. -/
theorem transferDefect_quadratic
    (x : SupportedHilbert β hβ) :
    (inner ℂ x (transferDefect β hβ x)).re =
      ‖x‖ ^ 2 - ‖actualSupportedTransfer β hβ x‖ ^ 2 := by
  rw [transferDefect_pairing, Complex.sub_re]
  rw [← norm_sq_eq_re_inner, ← norm_sq_eq_re_inner]

/-- Existing actual T=3 physical Wilson contraction, not an assumed
operator inequality, makes this entire supported-completion defect positive. -/
theorem transferDefect_nonnegative
    (x : SupportedHilbert β hβ) :
    0 ≤ (inner ℂ x (transferDefect β hβ x)).re := by
  rw [transferDefect_quadratic]
  have hc := completedRestrictedTranslation_contracts β hβ x
  change ‖actualSupportedTransfer β hβ x‖ ≤ ‖x‖ at hc
  nlinarith [norm_nonneg (actualSupportedTransfer β hβ x),
    norm_nonneg x]

/-- Its actual positive quadratic is bounded above by the complete source
norm: no free error allowance is introduced. -/
theorem transferDefect_le_norm_sq
    (x : SupportedHilbert β hβ) :
    (inner ℂ x (transferDefect β hβ x)).re ≤ ‖x‖ ^ 2 := by
  rw [transferDefect_quadratic]
  nlinarith [sq_nonneg (‖actualSupportedTransfer β hβ x‖)]

/-- The same bounded source operator is symmetric on the full supported
Hilbert; the exact mixed terms of both Wilson pairings cancel. -/
theorem transferDefect_symmetric :
    (transferDefect β hβ).toLinearMap.IsSymmetric := by
  intro x y
  change inner ℂ
    (x - (actualSupportedTransfer β hβ).adjoint
      (actualSupportedTransfer β hβ x)) y =
    inner ℂ x
      (y - (actualSupportedTransfer β hβ).adjoint
        (actualSupportedTransfer β hβ y))
  rw [inner_sub_left, inner_sub_right,
    ContinuousLinearMap.adjoint_inner_left,
    ContinuousLinearMap.adjoint_inner_right]

/-- The true bounded source defect is self-adjoint on its entire
supported completion, rather than being merely a quadratic shorthand. -/
theorem transferDefect_selfAdjoint :
    IsSelfAdjoint (transferDefect β hβ) :=
  (transferDefect_symmetric β hβ).isSelfAdjoint

/-- Source-specific positive bounded operator, not an unbounded full
Yang--Mills Hamiltonian. The genuine Wilson contraction pays positivity. -/
theorem transferDefect_isPositive :
    (transferDefect β hβ).IsPositive := by
  refine ⟨transferDefect_symmetric β hβ, ?_⟩
  intro x
  change 0 ≤ (inner ℂ (transferDefect β hβ x) x).re
  rw [transferDefect_symmetric β hβ x x]
  exact transferDefect_nonnegative β hβ x

/-- The complete zero-defect sector is exactly the locus of original
Wilson isometric one-step transfer: do NOT infer it consists only of
the vacuum without an additional source-specific strict estimate. -/
theorem transferDefect_zero_iff_isometric (x : SupportedHilbert β hβ) :
    (inner ℂ x (transferDefect β hβ x)).re = 0 ↔
      ‖actualSupportedTransfer β hβ x‖ = ‖x‖ := by
  rw [transferDefect_quadratic]
  constructor
  · intro h
    nlinarith [norm_nonneg (actualSupportedTransfer β hβ x),
      norm_nonneg x]
  · intro h
    rw [h]
    ring

/-- The original source UNIT vacuum belongs to the supported-completion
domain and has EXACT zero one-step Wilson norm loss. -/
def supportedVacuum : SupportedHilbert β hβ :=
  (vacuumSupported β hβ :
    UniformSpace.Completion (SupportedClasses β hβ))

theorem supportedVacuum_unit :
    ‖supportedVacuum β hβ‖ = 1 := by
  simpa [supportedVacuum] using vacuumSupported_norm β hβ

/-- The TRUE original Wilson vacuum is in the null quadratic sector of
the source defect. This is not a manufactured zero vector. -/
theorem transferDefect_vacuum_zero_quadratic :
    (inner ℂ (supportedVacuum β hβ)
      (transferDefect β hβ (supportedVacuum β hβ))).re = 0 := by
  rw [transferDefect_quadratic]
  have hunit := supportedVacuum_unit β hβ
  have htranslation := completedRestrictedTranslation_vacuum β hβ
  change actualSupportedTransfer β hβ (supportedVacuum β hβ) =
    vacuumOS β hβ at htranslation
  rw [htranslation, hunit, vacuumOS_unit]
  ring

/-- On an original SOURCE two-step-supported class, the defect is EXACTLY
the actual normalized Wilson reflection-form diagonal difference. -/
theorem transferDefect_original_source
    (q : SupportedClasses β hβ) :
    (inner ℂ (q : SupportedHilbert β hβ)
      (transferDefect β hβ (q : SupportedHilbert β hβ))).re =
      (quotientReflectionForm 3 (by decide : 2 ≤ 3) β hβ
        (q : AlgebraicOSSpace 3 (by decide : 2 ≤ 3) β hβ)
        (q : AlgebraicOSSpace 3 (by decide : 2 ≤ 3) β hβ)).re -
      (quotientReflectionForm 3 (by decide : 2 ≤ 3) β hβ
        (restrictedTranslation 3 (le_refl 3) β hβ q)
        (restrictedTranslation 3 (le_refl 3) β hβ q)).re := by
  rw [transferDefect_quadratic]
  change ‖(q : SupportedHilbert β hβ)‖ ^ 2 -
    ‖(completedRestrictedTranslation β hβ
      (q : SupportedHilbert β hβ))‖ ^ 2 = _
  rw [completedRestrictedTranslation_class,
    UniformSpace.Completion.norm_coe,
    UniformSpace.Completion.norm_coe]
  rw [norm_sq_eq_re_inner, norm_sq_eq_re_inner]
  rfl

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect
