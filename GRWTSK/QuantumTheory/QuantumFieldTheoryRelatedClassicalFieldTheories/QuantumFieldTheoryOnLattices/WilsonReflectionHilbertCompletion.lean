/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionQuotient
import Mathlib.Analysis.InnerProductSpace.Completion

/-!
# The actual Wilson reflection-positive Hilbert completion

Local mathematical attribution: grwtsk contributors.

Start with the literal finite-period complex positive-time Wilson
observable algebra, its source-built normalized reflection integral,
and the null radical identified by Cauchy--Schwarz. The previously
constructed algebraic quotient is NOT silently treated as complete.

The existing quotient pairing is positive definite, Hermitian and
sesquilinear. These actual theorems are assembled into the exact
Mathlib InnerProductSpace.Core that induces a norm on THAT quotient
and no prequotient. Completing its genuine norm gives the
complete complex reflection-positive Hilbert space at finite
period. The original pairing of all algebraic classes is
preserved by the canonical dense completion embedding.

This advances the actual OS reflection-construction route,
separately from the COMPLETE but DIFFERENT real spatial-slice
Wilson transfer Hilbert. It does not extend finite-period
positive-time translation to the full quotient, construct an
OS Hamiltonian, establish an isometric identification with the
real slice transfer operator, or prove continuum Yang--Mills.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion

open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionQuotient

variable (T : ℕ) (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

/-- The exact algebraic Wilson quotient, with no surrogate pre-Hilbert
carrier and no changed null-space definition. -/
abbrev AlgebraicOSSpace := ReflectionQuotient T hT β hβ

/-- The actual positive-definite source pairing as a Mathlib inner-product
CORE. Construct the norm only AFTER quotienting the full radical. -/
noncomputable instance algebraicOSInnerCore :
    InnerProductSpace.Core ℂ (AlgebraicOSSpace T hT β hβ) where
  inner := quotientReflectionForm T hT β hβ
  conj_inner_symm := by
    intro x y
    exact (quotientReflectionForm_hermitian T hT β hβ x y).symm
  re_inner_nonneg := by
    intro x
    exact quotientReflectionForm_nonnegative T hT β hβ x
  add_left := by
    intro x y z
    change quotientReflectionForm T hT β hβ (x + y) z =
      quotientReflectionForm T hT β hβ x z +
        quotientReflectionForm T hT β hβ y z
    simp
  smul_left := by
    intro x y c
    change quotientReflectionForm T hT β hβ (c • x) y =
      conj c * quotientReflectionForm T hT β hβ x y
    simp
  definite := by
    intro x hx
    exact quotientReflectionForm_definite T hT β hβ x hx

/-- The norm is induced by the actual positive-definite quotient
reflection form. No seminorm on the original positive-time algebra is
presented as a norm. -/
noncomputable instance algebraicOSNormedAddCommGroup :
    NormedAddCommGroup (AlgebraicOSSpace T hT β hβ) :=
  InnerProductSpace.Core.toNormedAddCommGroup (𝕜 := ℂ)

/-- The scalar norm law follows from the same exact Wilson inner core. -/
noncomputable instance algebraicOSNormedSpace :
    NormedSpace ℂ (AlgebraicOSSpace T hT β hβ) :=
  InnerProductSpace.Core.toNormedSpace (𝕜 := ℂ)

/-- Actual positive inner product, not an unrelated one. -/
noncomputable instance algebraicOSInnerProductSpace :
    InnerProductSpace ℂ (AlgebraicOSSpace T hT β hβ) :=
  InnerProductSpace.ofCore _

/-- The ACTUAL completed finite-period reflection-positive Wilson
Hilbert space, constructed from the exact normed quotient. -/
abbrev CompletedOSHilbert :=
  UniformSpace.Completion (AlgebraicOSSpace T hT β hβ)

/-- Every original positive-time observable maps to its exact radical
equivalence class and then canonically into the Hilbert completion. -/
def observableClass (F : positiveTimeAlgebra T) :
    CompletedOSHilbert T hT β hβ :=
  (Submodule.Quotient.mk F : AlgebraicOSSpace T hT β hβ)

/-- The complete Hilbert embedding preserves BOTH arguments of the
actual reflection form, not only squared norms. -/
theorem observableClass_inner (F G : positiveTimeAlgebra T) :
    inner ℂ (observableClass T hT β hβ F)
      (observableClass T hT β hβ G) =
        positiveReflectionForm T hT β F G := by
  change inner ℂ
      ((Submodule.Quotient.mk F : AlgebraicOSSpace T hT β hβ) :
        CompletedOSHilbert T hT β hβ)
      ((Submodule.Quotient.mk G : AlgebraicOSSpace T hT β hβ) :
        CompletedOSHilbert T hT β hβ) = _
  rw [UniformSpace.Completion.inner_coe]
  exact quotientReflectionForm_mk_mk T hT β hβ F G

/-- The canonical observable norm is EXACTLY the original normalized Wilson
reflection diagonal. The completion does not alter any source quadratic. -/
theorem observableClass_norm_sq (F : positiveTimeAlgebra T) :
    ‖observableClass T hT β hβ F‖ ^ 2 =
      (positiveReflectionForm T hT β F F).re := by
  calc
    ‖observableClass T hT β hβ F‖ ^ 2 =
        (inner ℂ (observableClass T hT β hβ F)
          (observableClass T hT β hβ F)).re :=
      norm_sq_eq_re_inner
    _ = (positiveReflectionForm T hT β F F).re :=
      congrArg Complex.re (observableClass_inner T hT β hβ F F)

/-- Every algebraic OS class embeds densely in the ACTUAL completion;
nothing is added or removed by a finite residue grading. -/
theorem algebraicDense :
    DenseRange
      (fun q : AlgebraicOSSpace T hT β hβ =>
        (q : CompletedOSHilbert T hT β hβ)) :=
  UniformSpace.Completion.denseRange_coe

/-- Null radical classes vanish in the COMPLETE Wilson physical Hilbert.
This uses the exact source radical, rather than a new null hypothesis. -/
theorem observableClass_null (F : positiveTimeAlgebra T)
    (hF : F ∈ nullSubmodule T hT β hβ) :
    observableClass T hT β hβ F = 0 := by
  have hz : (Submodule.Quotient.mk F :
      AlgebraicOSSpace T hT β hβ) = 0 :=
    Submodule.Quotient.mk_eq_zero.mpr hF
  simp [observableClass, hz]

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionHilbertCompletion
