/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm
import GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling
import GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines

/-!
# Conditional weight-one CM Riemann realization interface

The local CM development now supplies all pre-Riemann bilinear data needed by
the classical existence theorem.  Mathlib does not currently provide the
complex-torus / abelian-variety construction itself.

This file therefore formalizes the exact remaining dependency as an explicit
supplier interface.  It does not prove the supplier.

The important separation is:

  local source theorem:
    SignControlledXi -> PreRiemannBilinearData

  external classical theorem:
    PreRiemannBilinearData -> polarized weight-one realization

  formal wrapper:
    compose the two.

No four-factor algebraicity statement is present here.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMWeightOneRiemannRealization

open scoped TensorProduct
open CMNumberFieldIndex
open CMArchimedeanPositivity
open CMRiemannForm

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

local notation "G" => (E ≃ₐ[ℚ] E)
local notation "n" => Module.finrank ℚ E

/-- Abstract result of the classical Riemann existence step.

The carrier types are deliberately opaque because the local library currently
has no canonical complex-torus or abelian-variety API at the required scope.
The record stores only the interfaces consumed downstream. -/
structure WeightOneCMRealization
    (v : OddSignRow E)
    (X : SignControlledXi E v) where
  /-- Opaque geometric object supplied by the Riemann existence theorem. -/
  geometricCarrier : Type*
  /-- Opaque rational H1 realization. -/
  H1 : Type*
  [H1_addCommGroup : AddCommGroup H1]
  [H1_moduleQ : Module ℚ H1]
  [H1_finiteDimensional : FiniteDimensional ℚ H1]
  /-- Rational comparison with the original CM field vector space. -/
  h1Equiv : H1 ≃ₗ[ℚ] E
  /-- Actual complexified first cohomology carrier. -/
  H1C : Type*
  [H1C_addCommGroup : AddCommGroup H1C]
  [H1C_moduleC : Module ℂ H1C]
  /-- Comparison from actual complexified H1 to the canonical CM coordinate model. -/
  h1ComplexCoordinates : H1C ≃ₗ[ℂ] (G → ℂ)
  /-- Complexified coordinate comparison carrying the Hodge decomposition. -/
  complexCoordinates : (G → ℂ) ≃ₗ[ℂ] (G → ℂ)
  /-- The supplied Hodge operator agrees with the locally constructed one
  after the chosen coordinate comparison. -/
  weil_compatibility :
    ∀ z,
      complexCoordinates
          (CMCoordinateHodge.weilOperator v z) =
        CMCoordinateHodge.weilOperator v (complexCoordinates z)
  /-- The supplied polarization restricts to the scaled integral form on the
  selected lattice. -/
  polarization_integral :
    ∀ a b : Fin n → ℤ,
      (CMLatticePolarization.latticeScale E X : ℚ) *
          CMTracePolarization.tracePairing E X.xi
            (CMLatticePolarization.latticeVector E a)
            (CMLatticePolarization.latticeVector E b) =
        (CMLatticePolarization.integralPairing E X a b : ℚ)
  /-- Marker that the geometric carrier is projective/polarized in the sense
  required by the external classical theorem.

  This proposition is intentionally supplied, not proved locally. -/
  isPolarizedProjective : Prop
  polarizedProjective_proof : isPolarizedProjective

/-- Actual H^(1,0) subspace pulled back from the canonical coordinate model. -/
def WeightOneCMRealization.H10
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    Submodule ℂ R.H1C :=
  (CMCoordinateHodge.holomorphicPart v).comap
    R.h1ComplexCoordinates.toLinearMap

/-- Actual H^(0,1) subspace pulled back from the canonical coordinate model. -/
def WeightOneCMRealization.H01
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    Submodule ℂ R.H1C :=
  (CMCoordinateHodge.antiholomorphicPart v).comap
    R.h1ComplexCoordinates.toLinearMap

/-- Actual Weil operator on complexified H1, transported from coordinates. -/
def WeightOneCMRealization.actualWeil
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    R.H1C →ₗ[ℂ] R.H1C :=
  R.h1ComplexCoordinates.symm.toLinearMap.comp
    ((CMCoordinateHodge.weilOperator v).comp
      R.h1ComplexCoordinates.toLinearMap)

/-- Membership in actual H^(1,0) is exactly coordinate holomorphic membership. -/
theorem WeightOneCMRealization.mem_H10_iff
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C) :
    z ∈ R.H10 ↔
      R.h1ComplexCoordinates z ∈ CMCoordinateHodge.holomorphicPart v :=
  Iff.rfl

/-- Membership in actual H^(0,1) is exactly coordinate antiholomorphic membership. -/
theorem WeightOneCMRealization.mem_H01_iff
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C) :
    z ∈ R.H01 ↔
      R.h1ComplexCoordinates z ∈ CMCoordinateHodge.antiholomorphicPart v :=
  Iff.rfl

/-- The transported Weil operator acts by +i on actual H^(1,0). -/
theorem WeightOneCMRealization.actualWeil_H10
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    {z : R.H1C}
    (hz : z ∈ R.H10) :
    R.actualWeil z = Complex.I • z := by
  apply R.h1ComplexCoordinates.injective
  simp [WeightOneCMRealization.actualWeil]
  rw [CMCoordinateHodge.weilOperator_holomorphic v]
  · simp
  · exact (R.mem_H10_iff z).mp hz

/-- The transported Weil operator acts by -i on actual H^(0,1). -/
theorem WeightOneCMRealization.actualWeil_H01
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    {z : R.H1C}
    (hz : z ∈ R.H01) :
    R.actualWeil z = (-Complex.I) • z := by
  apply R.h1ComplexCoordinates.injective
  simp [WeightOneCMRealization.actualWeil]
  rw [CMCoordinateHodge.weilOperator_antiholomorphic v]
  · simp
  · exact (R.mem_H01_iff z).mp hz

/-- Actual weight-one Hodge-type subspace attached to one formal type label. -/
def WeightOneCMRealization.typeSubspace
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    CMEmbeddingLines.WeightOneHodgeType → Submodule ℂ R.H1C
  | .holomorphic => R.H10
  | .antiholomorphic => R.H01

/-- Predicate that one actual complexified H1 vector has the selected
weight-one Hodge type. -/
def WeightOneCMRealization.IsOfType
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C)
    (τ : CMEmbeddingLines.WeightOneHodgeType) : Prop :=
  z ∈ R.typeSubspace τ

@[simp]
theorem WeightOneCMRealization.isOfType_holomorphic_iff
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C) :
    R.IsOfType z .holomorphic ↔ z ∈ R.H10 :=
  Iff.rfl

@[simp]
theorem WeightOneCMRealization.isOfType_antiholomorphic_iff
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C) :
    R.IsOfType z .antiholomorphic ↔ z ∈ R.H01 :=
  Iff.rfl

/-- Coordinate holomorphic membership gives actual holomorphic type. -/
theorem WeightOneCMRealization.isOfType_holomorphic_of_coordinates
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    {z : R.H1C}
    (hz :
      R.h1ComplexCoordinates z ∈ CMCoordinateHodge.holomorphicPart v) :
    R.IsOfType z .holomorphic :=
  (R.mem_H10_iff z).mpr hz

/-- Coordinate antiholomorphic membership gives actual antiholomorphic type. -/
theorem WeightOneCMRealization.isOfType_antiholomorphic_of_coordinates
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    {z : R.H1C}
    (hz :
      R.h1ComplexCoordinates z ∈ CMCoordinateHodge.antiholomorphicPart v) :
    R.IsOfType z .antiholomorphic :=
  (R.mem_H01_iff z).mpr hz

/-- Canonical complex coordinate of a tensor in E tensor_Q E at one Galois
automorphism, obtained from the local Galois evaluation equivalence and the
chosen base complex embedding. -/
noncomputable def canonicalTensorComplexCoordinate
    (t : E ⊗[ℚ] E)
    (σ : E ≃ₐ[ℚ] E) : ℂ :=
  CMArchimedeanPositivity.baseComplexEmbedding E
    (CMGaloisEvaluation.evaluationEquiv ℚ E t
      ((CMGaloisEmbeddingMatrix.galIndexEquiv ℚ E).symm σ))

/-- Pure-tensor formula for the canonical tensor complex coordinate.

The first tensor factor contributes the chosen complex embedding, while the
second contributes the Galois-labelled field coordinate. -/
theorem canonicalTensorComplexCoordinate_tmul
    (a x : E)
    (σ : E ≃ₐ[ℚ] E) :
    canonicalTensorComplexCoordinate E (a ⊗ₜ[ℚ] x) σ =
      CMArchimedeanPositivity.baseComplexEmbedding E a *
        CMArchimedeanPositivity.fieldCoordinates E x σ := by
  simp [canonicalTensorComplexCoordinate,
    CMGaloisEvaluation.evaluationEquiv_tmul,
    CMArchimedeanPositivity.fieldCoordinates,
    CMArchimedeanPositivity.complexEmbeddingAt]

/-- A vector in one canonical embedding eigenspace has zero canonical complex
coordinate at every different Galois automorphism. -/
theorem canonicalTensorComplexCoordinate_eq_zero_of_ne
    (τ σ : E ≃ₐ[ℚ] E)
    {t : E ⊗[ℚ] E}
    (ht :
      t ∈ CMRegularBaseChange.embeddingEigenspace
        (k := ℚ) τ.toAlgHom)
    (hστ : σ ≠ τ) :
    canonicalTensorComplexCoordinate E t σ = 0 := by
  let jτ : Fin (Module.finrank ℚ E) :=
    (CMGaloisEmbeddingMatrix.galIndexEquiv ℚ E).symm τ
  let jσ : Fin (Module.finrank ℚ E) :=
    (CMGaloisEmbeddingMatrix.galIndexEquiv ℚ E).symm σ
  have hjτ :
      CMGaloisEigenlines.embeddingCharacter ℚ E jτ = τ.toAlgHom := by
    apply AlgHom.ext
    intro a
    simp [CMGaloisEigenlines.embeddingCharacter, jτ]
  have hji : jσ ≠ jτ := by
    intro h
    apply hστ
    exact (CMGaloisEmbeddingMatrix.galIndexEquiv ℚ E).symm.injective h
  have hz :
      CMGaloisEvaluation.evaluation ℚ E t jσ = 0 := by
    rw [← hjτ] at ht
    exact CMGaloisEigenlines.evaluation_offDiagonal_zero
      ℚ E jτ jσ hji ht
  simp [canonicalTensorComplexCoordinate,
    CMGaloisEvaluation.evaluationEquiv_apply, jσ, hz]

/-- Bilinear coordinate formula that a tensor-to-H1 comparison is expected
to preserve on pure tensors. -/
def WeightOneCMRealization.pureTensorCoordinate
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (a x : E)
    (σ : E ≃ₐ[ℚ] E) : ℂ :=
  CMArchimedeanPositivity.baseComplexEmbedding E a *
    CMArchimedeanPositivity.fieldCoordinates E x σ

/-- Pure-tensor compatibility version of the canonical tensor to actual H1
comparison.

This is strictly narrower than arbitrary coordinate compatibility: it states
the concrete bilinear formula on generators. -/
structure PureTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) where
  toActual : E ⊗[ℚ] E → R.H1C
  pureTensor_coordinates :
    ∀ a x σ,
      R.h1ComplexCoordinates (toActual (a ⊗ₜ[ℚ] x)) σ =
        R.pureTensorCoordinate a x σ
  coordinate_compatibility :
    ∀ t σ,
      R.h1ComplexCoordinates (toActual t) σ =
        canonicalTensorComplexCoordinate E t σ

/-- Forget the pure-tensor formula and retain the comparison consumed
downstream. -/
def PureTensorActualH1Comparison.toCanonicalComparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : PureTensorActualH1Comparison E R) :
    CanonicalTensorActualH1Comparison E R where
  toActual := C.toActual
  coordinate_compatibility := C.coordinate_compatibility

/-- Exact comparison between the canonical tensor model and the actual
complexified H1 realization.

The comparison is only required to preserve the canonical Galois complex
coordinates. This is enough to transfer one-dimensional embedding-line support
to actual Hodge support. -/
structure CanonicalTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) where
  toActual : E ⊗[ℚ] E → R.H1C
  coordinate_compatibility :
    ∀ t σ,
      R.h1ComplexCoordinates (toActual t) σ =
        canonicalTensorComplexCoordinate E t σ

/-- A positive-sign canonical embedding-line vector maps into actual H^(1,0). -/
theorem CanonicalTensorActualH1Comparison.isOfType_holomorphic
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : CanonicalTensorActualH1Comparison E R)
    (τ : E ≃ₐ[ℚ] E)
    {t : E ⊗[ℚ] E}
    (ht :
      t ∈ CMRegularBaseChange.embeddingEigenspace
        (k := ℚ) τ.toAlgHom)
    (hv : v.value τ = 1) :
    R.IsOfType (C.toActual t) .holomorphic := by
  apply R.isOfType_holomorphic_of_coordinates
  intro σ hσ
  have hστ : σ ≠ τ := by
    intro h
    subst σ
    omega
  rw [C.coordinate_compatibility]
  exact canonicalTensorComplexCoordinate_eq_zero_of_ne
    E τ σ ht hστ

/-- A negative-sign canonical embedding-line vector maps into actual H^(0,1). -/
theorem CanonicalTensorActualH1Comparison.isOfType_antiholomorphic
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : CanonicalTensorActualH1Comparison E R)
    (τ : E ≃ₐ[ℚ] E)
    {t : E ⊗[ℚ] E}
    (ht :
      t ∈ CMRegularBaseChange.embeddingEigenspace
        (k := ℚ) τ.toAlgHom)
    (hv : v.value τ = -1) :
    R.IsOfType (C.toActual t) .antiholomorphic := by
  apply R.isOfType_antiholomorphic_of_coordinates
  intro σ hσ
  have hστ : σ ≠ τ := by
    intro h
    subst σ
    omega
  rw [C.coordinate_compatibility]
  exact canonicalTensorComplexCoordinate_eq_zero_of_ne
    E τ σ ht hστ

/-- Canonical sign-derived type labels become actual Hodge types once the
coordinate-preserving tensor-to-H1 comparison is supplied. -/
theorem CanonicalTensorActualH1Comparison.isOfType_typeOfSign
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : CanonicalTensorActualH1Comparison E R)
    (τ : E ≃ₐ[ℚ] E)
    {t : E ⊗[ℚ] E}
    (ht :
      t ∈ CMRegularBaseChange.embeddingEigenspace
        (k := ℚ) τ.toAlgHom) :
    R.IsOfType (C.toActual t)
      (CMEmbeddingLines.typeOfSign (v.value τ)) := by
  rcases v.isSign τ with hv | hv
  · rw [hv]
    simpa [CMEmbeddingLines.typeOfSign] using
      C.isOfType_holomorphic τ ht hv
  · rw [hv]
    simpa [CMEmbeddingLines.typeOfSign] using
      C.isOfType_antiholomorphic τ ht hv

/-- Exact external theorem interface still required after the local
pre-Riemann construction.

An implementation of this supplier is the only missing theorem in the
weight-one existence chain. -/
structure RiemannExistenceSupplier where
  realize :
    ∀ (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
      (v : OddSignRow E)
      (X : SignControlledXi E v),
      CMRiemannForm.PreRiemannBilinearData E v X →
        WeightOneCMRealization E v X

/-- Conditional composition of the local source theorem with the exact
remaining classical existence supplier. -/
noncomputable def realizeWeightOneCM
    (S : RiemannExistenceSupplier)
    (v : OddSignRow E)
    (X : SignControlledXi E v) :
    WeightOneCMRealization E v X :=
  S.realize E v X (CMRiemannForm.canonicalPreRiemannBilinearData E X)

/-- Once the external Riemann existence supplier is admitted, the local
canonical sign-controlled xi gives a weight-one realization for every odd CM
sign row. -/
noncomputable def realizeWeightOneCM_canonical
    (S : RiemannExistenceSupplier)
    (v : OddSignRow E) :
    WeightOneCMRealization E v
      (Classical.choice
        (CMRealRescaling.nonempty_signControlledXi_canonical E v)) := by
  let X : SignControlledXi E v :=
    Classical.choice (CMRealRescaling.nonempty_signControlledXi_canonical E v)
  exact realizeWeightOneCM E S v X

/-- The remaining dependency is logically isolated: a supplier gives a
realization, but the local repository does not manufacture the supplier. -/
theorem nonempty_weightOneCMRealization_of_supplier
    (S : RiemannExistenceSupplier)
    (v : OddSignRow E)
    (X : SignControlledXi E v) :
    Nonempty (WeightOneCMRealization E v X) :=
  ⟨realizeWeightOneCM E S v X⟩

end

end GRWTSK.AlgebraicGeometry.Hodge.CMWeightOneRiemannRealization
