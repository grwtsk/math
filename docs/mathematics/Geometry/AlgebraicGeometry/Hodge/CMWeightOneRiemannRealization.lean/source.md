# Complete source: GRWTSK.AlgebraicGeometry.Hodge.CMWeightOneRiemannRealization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e632f5554fdc09dafe2880ed91b404169b0b3d99` · SHA-256 `3038af41bef505f91f0b6e8dfdfd119157e4f9b9282acfcf7c14344301b59018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
  /-- Rational H1 includes into actual complexified H1. -/
  h1ToComplex : H1 →ₗ[ℚ] H1C
  /-- The rational inclusion agrees with the rational CM-field coordinates. -/
  h1ToComplex_coordinates :
    ∀ h σ,
      h1ComplexCoordinates (h1ToComplex h) σ =
        CMArchimedeanPositivity.fieldCoordinates E (h1Equiv h) σ
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

/-- Bilinear map sending a coefficient a and CM vector x to the actual
complexified H1 vector obtained by scalar multiplication after identifying x
with rational H1. -/
def WeightOneCMRealization.tensorBilinearToActual
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    E →ₗ[ℚ] E →ₗ[ℚ] R.H1C :=
  LinearMap.mk₂ ℚ
    (fun a x =>
      (CMArchimedeanPositivity.baseComplexEmbedding E a) •
        R.h1ToComplex (R.h1Equiv.symm x))
    (by
      intro a b x
      simp [add_smul])
    (by
      intro q a x
      simp [Algebra.smul_def, mul_smul])
    (by
      intro a x y
      simp [smul_add])
    (by
      intro q a x
      simp [Algebra.smul_def, smul_smul, mul_assoc, mul_comm, mul_left_comm])

/-- Canonical Q-linear map from E tensor_Q E into actual complexified H1,
constructed by the universal property of the tensor product. -/
def WeightOneCMRealization.canonicalTensorToActual
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    E ⊗[ℚ] E →ₗ[ℚ] R.H1C :=
  TensorProduct.lift R.tensorBilinearToActual

@[simp]
theorem WeightOneCMRealization.canonicalTensorToActual_tmul
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (a x : E) :
    R.canonicalTensorToActual (a ⊗ₜ[ℚ] x) =
      (CMArchimedeanPositivity.baseComplexEmbedding E a) •
        R.h1ToComplex (R.h1Equiv.symm x) := by
  simp [WeightOneCMRealization.canonicalTensorToActual,
    WeightOneCMRealization.tensorBilinearToActual]

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

/-- The canonical tensor map satisfies the exact pure-tensor coordinate formula
required by PureTensorActualH1Comparison. -/
theorem WeightOneCMRealization.canonicalTensorToActual_coordinates_tmul
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (a x : E)
    (σ : E ≃ₐ[ℚ] E) :
    R.h1ComplexCoordinates
        (R.canonicalTensorToActual (a ⊗ₜ[ℚ] x)) σ =
      R.pureTensorCoordinate a x σ := by
  rw [R.canonicalTensorToActual_tmul]
  simp [WeightOneCMRealization.pureTensorCoordinate,
    R.h1ToComplex_coordinates, CMArchimedeanPositivity.fieldCoordinates]

/-- Pure-tensor compatibility version of the canonical tensor to actual H1
comparison.

Only the concrete bilinear coordinate formula on pure tensors is supplied.
Full tensor compatibility is derived locally by tensor induction. -/
structure PureTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) where
  toActual : E ⊗[ℚ] E →ₗ[ℚ] R.H1C
  pureTensor_coordinates :
    ∀ a x σ,
      R.h1ComplexCoordinates (toActual (a ⊗ₜ[ℚ] x)) σ =
        R.pureTensorCoordinate a x σ

/-- The realization's rational inclusion data canonically constructs the
pure-tensor comparison; no additional tensor-level comparison supplier is
needed. -/
def WeightOneCMRealization.pureTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    PureTensorActualH1Comparison E R where
  toActual := R.canonicalTensorToActual
  pureTensor_coordinates := R.canonicalTensorToActual_coordinates_tmul


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


/-- Q-linearity plus the pure-tensor coordinate formula imply full canonical
tensor coordinate compatibility. -/
theorem PureTensorActualH1Comparison.coordinate_compatibility
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : PureTensorActualH1Comparison E R)
    (t : E ⊗[ℚ] E)
    (σ : E ≃ₐ[ℚ] E) :
    R.h1ComplexCoordinates (C.toActual t) σ =
      canonicalTensorComplexCoordinate E t σ := by
  induction t with
  | tmul a x =>
      rw [C.pureTensor_coordinates]
      exact (canonicalTensorComplexCoordinate_tmul E a x σ).symm
  | add x y hx hy =>
      simp [map_add, hx, hy, canonicalTensorComplexCoordinate]

/-- A Q-linear pure-tensor comparison canonically gives the full comparison
consumed by downstream Hodge typing. -/
def PureTensorActualH1Comparison.toCanonicalComparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    {R : WeightOneCMRealization E v X}
    (C : PureTensorActualH1Comparison E R) :
    CanonicalTensorActualH1Comparison E R where
  toActual := C.toActual
  coordinate_compatibility := C.coordinate_compatibility


/-- A supplied weight-one realization now canonically constructs the complete
canonical-tensor to actual-H1 comparison from its rational inclusion data. -/
def WeightOneCMRealization.canonicalTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    CanonicalTensorActualH1Comparison E R :=
  R.pureTensorActualH1Comparison.toCanonicalComparison

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
```
