/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm
import GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling

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
  H1_addCommGroup : AddCommGroup H1
  H1_moduleQ : Module ℚ H1
  H1_finiteDimensional : FiniteDimensional ℚ H1
  /-- Rational comparison with the original CM field vector space. -/
  h1Equiv : H1 ≃ₗ[ℚ] E
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
      ∃ m : ℤ,
        (CMLatticePolarization.latticeScale E X : ℚ) *
            CMTracePolarization.tracePairing E X.xi
              (CMLatticePolarization.latticeVector E a)
              (CMLatticePolarization.latticeVector E b) =
          (m : ℚ)
  /-- Marker that the geometric carrier is projective/polarized in the sense
  required by the external classical theorem.

  This proposition is intentionally supplied, not proved locally. -/
  isPolarizedProjective : Prop
  polarizedProjective_proof : isPolarizedProjective

attribute [instance]
  WeightOneCMRealization.H1_addCommGroup
  WeightOneCMRealization.H1_moduleQ
  WeightOneCMRealization.H1_finiteDimensional

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
