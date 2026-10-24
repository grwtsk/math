# Complete source: GRWTSK.Algebra.LinearAlgebra.PrismaticFabricTests.Variantadca8fd45dd5df2d8e7c0e5f8e2cf28fe1449f7d6c600fdbd8b5444214b1a364

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `becfab12e769edb7c0447f971caf66ca92696195` · SHA-256 `ed08080bbd07fdf28422a8e533f5b380cc1fb3c8cca1691ea32fd3fe3399bf7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UnitSystem.Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.UnitSystem.Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/PrismaticFabricTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Cyclotomic.Defect
import DAF.Prismatic.Comparison
import DAF.Prismatic.Determinant

/-!
# Prismatic fabric integration fixtures

These fixtures exercise the abstraction boundaries of the prismatic layer:
source maps reverse direction after applying the value functor, Frobenius and
Nygaard data are explicit, descent remains conditional, defect evaluation
requires an algebra morphism, and determinant transport is available only
after a certified perfect-complex comparison.

The toy theory below is not prismatic cohomology and its totalization is not a
geometric or derived totalization.
-/


namespace GRWTSK.Algebra.LinearAlgebra.UnitSystem.Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2

namespace DAF.Integration.PrismaticFabricTests

open CategoryTheory
open CategoryTheory.Functor
open DAF.Comparison
open DAF.Fabric
open DAF.Prismatic

/-! ## A constant fabric used only to index arithmetic realizations -/

def unitSystem : DAF.System where
  Input := Unit
  State := Unit
  Resolution := Unit
  Observation := fun _ ↦ Unit
  step := fun _ _ ↦ ()
  observe := fun _ _ ↦ ()

def unitPresentation : DAF.Fabric.Presentation where
  system := unitSystem
  invariant := fun _ ↦ True
  invariant_step := by
    intros
    trivial
  name := `prismaticToy
  version := { major := 1, minor := 0, patch := 0 }

def unitShape : DAF.Fabric.Shape :=
  (SimplicialObject.const (Type)).obj Unit

def unitFabric : DAF.Fabric.Fabric where
  shape := unitShape
  presentation := fun _ _ ↦ unitPresentation
  contract := fun _ _ ↦ DAF.Fabric.Presentation.Hom.id unitPresentation
  contract_id := by
    intros
    rfl
  contract_comp := by
    intros
    rfl

/-! ## A visibly contravariant toy arithmetic theory -/

abbrev ToyAlg := Discrete Unit

def toyValue : ToyAlgᵒᵖ ⥤ Type :=
  (Functor.const ToyAlgᵒᵖ).obj Bool

def toyTheory : DAF.Prismatic.Theory where
  SmoothAlg := ToyAlg
  DerivedAlg := ToyAlg
  Target := Type
  instCategorySmoothAlg := inferInstance
  instCategoryDerivedAlg := inferInstance
  instCategoryTarget := inferInstance
  includeSmooth := Functor.id ToyAlg
  value := toyValue
  smoothValue := toyValue
  smoothAgreement := Iso.refl _

def toyAlgebra : SimplicialObject ToyAlg :=
  (SimplicialObject.const ToyAlg).obj ⟨()⟩

def toyRealization :
    DAF.Prismatic.SourceRealization unitFabric toyTheory where
  algebra := toyAlgebra
  cellCorrespondence := fun _ ↦ ⟨()⟩

/-- A deliberately plain totalization: every diagram is sent to `Unit`. -/
def toyTotalization : DAF.Prismatic.TotalizationTheory Type where
  totalize := (Functor.const (CosimplicialObject Type)).obj Unit

example :
    fabricPrismaticValue toyTheory toyTotalization toyAlgebra ⟶
      fabricPrismaticValue toyTheory toyTotalization toyAlgebra :=
  prismaticReactionMap toyTheory toyTotalization (𝟙 toyAlgebra)

example :
    prismaticReactionMap toyTheory toyTotalization (𝟙 toyAlgebra) =
      𝟙 (fabricPrismaticValue toyTheory toyTotalization toyAlgebra) :=
  prismaticReactionMap_id toyTheory toyTotalization toyAlgebra

example :
    prismaticReactionMap toyTheory toyTotalization
        ((𝟙 toyAlgebra) ≫ (𝟙 toyAlgebra)) =
      prismaticReactionMap toyTheory toyTotalization (𝟙 toyAlgebra) ≫
        prismaticReactionMap toyTheory toyTotalization (𝟙 toyAlgebra) :=
  prismaticReactionMap_comp toyTheory toyTotalization
    (𝟙 toyAlgebra) (𝟙 toyAlgebra)

/-! ## Explicit Frobenius and a genuine Nygaard shift -/

def toyFrobenius : FrobeniusDatum toyTheory where
  twist := Functor.id Type
  frobenius :=
    { app := fun _ ↦ 𝟙 _
      naturality := by
        intros
        rfl }

def toyNygaard : NygaardDatum toyTheory where
  level := fun _ ↦ toyTheory.value
  inclusion := fun _ ↦ 𝟙 _
  transition := fun _ ↦ 𝟙 _
  transition_refl := by
    intros
    rfl
  transition_trans := by
    intros
    simp
  inclusion_natural := by
    intros
    simp

/-- Shift one means `N≥r` maps to `N≥(r+1)`; it is not called preserving. -/
def shiftedComparison :
    FilteredFrobeniusComparison toyRealization toyRealization where
  frobeniusDatum := toyFrobenius
  nygaardDatum := toyNygaard
  algebraMap := 𝟙 toyAlgebra
  filtrationShift := 1
  frobenius_natural := by
    intro
    simp [toyFrobenius, toyTheory, toyValue, toyAlgebra]
    rfl
  nygaardMap := fun _ ↦ 𝟙 _
  nygaard_to_value := by
    intros
    rfl

example : shiftedComparison.filtrationShift = 1 :=
  rfl

example : ¬ shiftedComparison.IsFiltrationPreserving := by
  intro h
  norm_num [FilteredFrobeniusComparison.IsFiltrationPreserving,
    shiftedComparison] at h

example (r : Int) :
    toyAlgebra.rightOp ⋙ toyNygaard.level r ⟶
      toyAlgebra.rightOp ⋙ toyNygaard.level (r + 1) :=
  shiftedComparison.nygaardMap r

/-! ## Descent remains conditional -/

def conditionalDescent :
    PrismaticDescentCertificate
      toyTheory toyTotalization toyAlgebra Bool where
  Hypothesis := False
  comparison := by
    dsimp [fabricPrismaticValue, toyTotalization]
    exact TypeCat.ofHom (fun _ : Unit ↦ false)
  comparison_isIso := False.elim

example (h : conditionalDescent.Hypothesis) :
    IsIso conditionalDescent.comparison :=
  conditionalDescent.comparison_isIso h

/-! ## Toy cotangent defects distinguish compatible and collapsing maps -/

def toyCotangentDefect : DAF.Cyclotomic.CotangentDefectTheory where
  Algebra := Type
  CotangentObject := Prop
  instCategoryAlgebra := inferInstance
  cotangent := fun f ↦ Function.Injective f
  Trivial := _root_.id

def unitVertex : unitFabric.Cell 0 :=
  ()

def unitVertexReplacement :
    DAF.Fabric.BoundaryReplacement unitFabric unitVertex where
  replacement := unitPresentation
  replacementContract := by
    intro m θ
    exact (Nat.not_lt_zero m θ.lowerDimension).elim
  coherent := by
    intro l m θ ψ
    exact (Nat.not_lt_zero m θ.lowerDimension).elim

def unitVertexPatch :
    DAF.Fabric.LocalPatch unitFabric unitVertex where
  boundary := unitVertexReplacement
  update := DAF.Fabric.Presentation.Hom.id unitPresentation

def unitVertexCotangentData :
    DAF.Fabric.LocalPatch.CotangentBoundaryData
      unitVertexPatch toyCotangentDefect where
  interpret := fun _ ↦ Bool
  algebraMap := 𝟙 Bool

example :
    toyCotangentDefect.Trivial
      (toyCotangentDefect.cotangent (𝟙 Bool)) :=
  Function.injective_id

example :
    toyCotangentDefect.Trivial
      (unitVertexPatch.cotangentBoundaryDefect
        toyCotangentDefect unitVertexCotangentData) :=
  Function.injective_id

example :
    ¬ toyCotangentDefect.Trivial
      (toyCotangentDefect.cotangent
        (TypeCat.ofHom (fun _ : Bool ↦ ()))) := by
  intro h
  have htf : true = false := h rfl
  cases htf

/-- A toy relative defect type consisting of genuine collision witnesses. -/
def toyRelativeTHH : DAF.Cyclotomic.RelativeTHHTheory where
  Algebra := Type
  SpectrumLike := Type
  instCategoryAlgebra := inferInstance
  instCategorySpectrumLike := inferInstance
  THH := _root_.id
  relativeTHH := fun {A _B} f ↦
    {p : A × A // p.1 ≠ p.2 ∧ f p.1 = f p.2}
  comparison := fun f ↦
    TypeCat.ofHom (fun collision ↦ f collision.1.1)

example :
    IsEmpty (toyRelativeTHH.relativeTHH (𝟙 Bool)) :=
  ⟨by
    intro collision
    exact collision.property.1 collision.property.2⟩

example :
    Nonempty
      (toyRelativeTHH.relativeTHH
        (TypeCat.ofHom (fun _ : Bool ↦ ()))) :=
  ⟨⟨(true, false), by decide, rfl⟩⟩

/-! ## Certified perfect-complex determinant boundary -/

abbrev toyPerfectModel :=
  DAF.Determinant.FiniteFreeRankOne.model CoefficientContext.integral

abbrev toyDeterminantTheory :=
  DAF.Determinant.FiniteFreeRankOne.theory CoefficientContext.integral

def toyPerfectTotalization :
    PerfectPrismaticTotalization toyTheory toyTotalization where
  model := toyPerfectModel
  encode := fun _ ↦ ()
  ReactionCertificate := fun _ ↦ Unit
  identityCertificate := fun _ ↦ ()
  composeCertificate := fun _ _ ↦ ()
  reactionQuasiIso := fun _ _ ↦
    DAF.PerfectComplex.CertifiedQuasiIso.id toyPerfectModel ()
  reactionQuasiIso_id := by
    intros
    rfl
  reactionQuasiIso_comp := by
    intros
    simp

example :
    certifiedPrismaticReactionDetEquiv
        toyPerfectTotalization toyDeterminantTheory
        (𝟙 toyAlgebra) () =
      Equiv.refl
        (toyDeterminantTheory.Line
          (toyPerfectTotalization.encode
            (fabricPrismaticValue
              toyTheory toyTotalization toyAlgebra))) :=
  certifiedPrismaticReactionDetEquiv_id
    toyPerfectTotalization toyDeterminantTheory toyAlgebra

end DAF.Integration.PrismaticFabricTests
```
