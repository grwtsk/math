# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.DeterminantTests.Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dc22c503e06cd148c4d69c3c5593acec36935d2` · SHA-256 `997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Determinant.ScalarExtension

/-!
# Determinant transport integration fixtures

These compile-time examples exercise only the supported determinant
interfaces.  The rank-one examples use a genuine finite-free model
concentrated in degree zero.  The scalar-extension fixture separately records
the map `ℤ → ℚ`; its determinant transport is formed in the rational target
theory and is not treated as an integral line endomorphism.
-/

namespace DAF.Integration.DeterminantTests

open DAF.Comparison
open DAF.PerfectComplex
open DAF.Determinant

/-! ## Rank-one finite-free identity and composition -/

abbrev intModel := FiniteFreeRankOne.model CoefficientContext.integral

abbrev intDeterminantTheory :=
  FiniteFreeRankOne.theory CoefficientContext.integral

def intObject : intModel.Object :=
  ()

def intNeg : CertifiedQuasiIso intModel intObject intObject :=
  FiniteFreeRankOne.negQuasiIso CoefficientContext.integral

example :
    DAF.Determinant.CertifiedQuasiIso.detEquiv
        intDeterminantTheory
        (CertifiedQuasiIso.id intModel intObject) =
      Equiv.refl (intDeterminantTheory.Line intObject) :=
  DAF.Determinant.CertifiedQuasiIso.detEquiv_id
    intDeterminantTheory intObject

example :
    DAF.Determinant.CertifiedQuasiIso.detEquiv
        intDeterminantTheory (intNeg.comp intNeg) =
      (DAF.Determinant.CertifiedQuasiIso.detEquiv
          intDeterminantTheory intNeg).trans
        (DAF.Determinant.CertifiedQuasiIso.detEquiv
          intDeterminantTheory intNeg) :=
  DAF.Determinant.CertifiedQuasiIso.detEquiv_comp
    intDeterminantTheory intNeg intNeg

/-! ## A typed chain and its determinant composite -/

def intNegChain : QuasiIsoChain intModel intObject intObject :=
  .cons intNeg
    (.cons intNeg
      (QuasiIsoChain.nil (M := intModel) intObject))

example :
    DAF.Determinant.QuasiIsoChain.detEquiv
        intDeterminantTheory intNegChain =
      DAF.Determinant.CertifiedQuasiIso.detEquiv
        intDeterminantTheory intNegChain.composite :=
  DAF.Determinant.QuasiIsoChain.detEquiv_eq_composite
    intDeterminantTheory intNegChain

/-! ## An explicit integral-to-rational scalar extension -/

/-- A coefficient-independent one-object complex model for the typing test. -/
def scalarToyModel : PerfectComplex.Model where
  Object := Unit
  Hom := fun _ _ ↦ Unit
  id := ()
  comp := fun _ _ ↦ ()
  id_comp := by
    intro _ _ f
    cases f
    rfl
  comp_id := by
    intro _ _ f
    cases f
    rfl
  comp_assoc := by
    intros
    rfl
  Iso := fun _ _ ↦ Unit
  isoRefl := fun _ ↦ ()
  isoTrans := fun _ _ ↦ ()
  isoTrans_refl_left := by
    intro _ _ e
    cases e
    rfl
  isoTrans_refl_right := by
    intro _ _ e
    cases e
    rfl
  isoTrans_assoc := by
    intros
    rfl
  isQuasiIso := fun _ ↦ True
  isQuasiIso_id := by
    intros
    trivial
  isQuasiIso_comp := by
    intros
    trivial

/-- The toy determinant line is exactly the selected coefficient carrier. -/
def scalarToyTheory (R : CoefficientContext) :
    DAF.Determinant.Theory scalarToyModel R where
  Line := fun _ ↦ R.Carrier
  lineEquiv := fun _ ↦ Equiv.refl _
  lineEquiv_refl := by
    intros
    rfl
  lineEquiv_trans := by
    intros
    rfl
  quasiIsoEquiv := fun _ ↦ Equiv.refl _
  quasiIsoEquiv_id := by
    intros
    rfl
  quasiIsoEquiv_comp := by
    intros
    rfl

/-- The explicit coefficient change `ℤ → ℚ`. -/
def intToRat :
    CoefficientChange
      CoefficientContext.integral
      CoefficientContext.rational where
  map := Int.castRingHom ℚ

/--
The underlying toy complex is unchanged, while the coefficient context is
changed explicitly from integral to rational.
-/
def intToRatScalarExtension :
    ScalarExtension
      scalarToyModel scalarToyModel
      CoefficientContext.integral
      CoefficientContext.rational
      intToRat where
  extendObject := _root_.id
  extendHom := _root_.id
  extendIso := _root_.id
  extend_id := by intros; rfl
  extend_comp := by intros; rfl
  extendIso_refl := by intros; rfl
  extendIso_trans := by intros; rfl
  preservesQuasiIso := by intros; trivial

abbrev rationalToyTheory :=
  scalarToyTheory CoefficientContext.rational

def toyObject : scalarToyModel.Object :=
  ()

def toyIntegralIdentity :
    CertifiedQuasiIso scalarToyModel toyObject toyObject :=
  CertifiedQuasiIso.id scalarToyModel toyObject

/-- The target is definitionally the rational determinant line. -/
example :
    intToRatScalarExtension.detEquiv
        rationalToyTheory toyIntegralIdentity =
      Equiv.refl
        (rationalToyTheory.Line
          (intToRatScalarExtension.extendObject toyObject)) :=
  intToRatScalarExtension.detEquiv_id rationalToyTheory toyObject

example :
    rationalToyTheory.Line
        (intToRatScalarExtension.extendObject toyObject) =
      ℚ :=
  rfl

/-- The optional line comparison is also explicit, here the integer cast. -/
def intToRatLineCompatibility :
    DeterminantScalarExtensionCompatibility
      intToRatScalarExtension
      (scalarToyTheory CoefficientContext.integral)
      rationalToyTheory where
  lineChange := fun _ z ↦ intToRat.map z
  quasiIso_natural := by
    intros
    rfl

example (z : ℤ) :
    intToRatLineCompatibility.lineChange toyObject z = (z : ℚ) :=
  rfl

end DAF.Integration.DeterminantTests
```
