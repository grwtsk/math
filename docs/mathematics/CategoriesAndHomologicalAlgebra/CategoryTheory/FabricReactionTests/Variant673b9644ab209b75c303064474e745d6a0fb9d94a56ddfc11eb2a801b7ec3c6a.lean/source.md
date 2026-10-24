# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FabricReactionTests.Variant673b9644ab209b75c303064474e745d6a0fb9d94a56ddfc11eb2a801b7ec3c6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70eac1924960cb45aafd580e4c5222043b7ca290` · SHA-256 `8a7743c4c855b45fe500b09960fb3b613a058cd6d3389b905ec03c66e2bda126`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolSystem.Variant6fd06e3a8abcccb0965a680bb194b352456a15b7bd6a72abc75be70cabe38900","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fd06e3a8abcccb0965a680bb194b352456a15b7bd6a72abc75be70cabe38900","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BoolSystem.Variant6fd06e3a8abcccb0965a680bb194b352456a15b7bd6a72abc75be70cabe38900","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6fd06e3a8abcccb0965a680bb194b352456a15b7bd6a72abc75be70cabe38900","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/FabricReactionTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Patch
import DAF.Integration.FabricTests

/-!
# Fabric reaction and patch integration fixtures

The first fixture gives a nontrivial state update whose boundary squares commute
on the constant standard triangle.  The second deliberately applies that update
at only the triangle cell, constructs the resulting checked boundary mismatch,
and derives non-extension through the general obstruction theorem.

The final fixture supplies an actual `CompleteFillerTheory` on the empty
simplicial fabric.  Empty cells make the capability constructively total; no
choice or fabricated filler is used.  It demonstrates that the converse
`BoundaryCompatible → ExtendsTo` is exposed only through an explicit filler
capability.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolSystem.Variant6fd06e3a8abcccb0965a680bb194b352456a15b7bd6a72abc75be70cabe38900

namespace DAF.Integration.FabricReactionTests

open CategoryTheory
open DAF.Fabric
open DAF.Integration.FabricTests

/-! ## A natural reaction on the constant standard triangle -/

def boolSystem : DAF.System where
  Input := PUnit
  State := Bool
  Resolution := PUnit
  Observation := fun _ ↦ Bool
  step := fun _ state ↦ state
  observe := fun _ state ↦ state

def boolPresentation : Presentation where
  system := boolSystem
  invariant := fun _ ↦ True
  invariant_step := by
    intros
    trivial
  name := `DAF.Integration.FabricReaction.Bool
  version := ⟨0, 1, 0⟩

/-- Boolean complement as a presentation endomorphism. -/
def boolFlip : Presentation.Hom boolPresentation boolPresentation where
  mapInput := _root_.id
  mapState := fun state ↦ !state
  pullResolution := _root_.id
  mapObservation := fun _ value ↦ !value
  step_natural := by
    intros
    rfl
  observe_natural := by
    intros
    rfl
  invariant_natural := by
    intros
    trivial

def boolTriangleFabric : DAF.Fabric.Fabric :=
  constantPresentedFabric triangleShape boolPresentation

/-- Complement every hosted Boolean state; constant contracts make it natural. -/
def boolFlipReaction : Reaction boolTriangleFabric boolTriangleFabric where
  shapeMap := 𝟙 boolTriangleFabric.shape
  mapCell := fun x ↦ x
  mapCell_eq := by
    intros
    rfl
  mapCell_natural := by
    intros
    rfl
  cellMap := fun _ ↦ boolFlip
  contract_natural := by
    intros
    apply Presentation.Hom.ext <;> rfl

example
    {m n : Nat}
    (op : SimplexOperator m n)
    (x : boolTriangleFabric.Cell n) :
    boolFlipReaction.cellMap x ≫
          boolTriangleFabric.contract op (boolFlipReaction.mapCell x) ≫
            eqToHom
              (congrArg (boolTriangleFabric.presentation m)
                (boolFlipReaction.mapCell_natural op x)) =
      boolTriangleFabric.contract op x ≫
        boolFlipReaction.cellMap
          (boolTriangleFabric.shape.restrict op x) :=
  boolFlipReaction.contract_natural op x

/-! ## A checked non-natural local update -/

def triangleBoundaryReplacement :
    BoundaryReplacement boolTriangleFabric canonicalTriangle where
  replacement := boolPresentation
  replacementContract := fun _ ↦ Presentation.Hom.id boolPresentation
  coherent := by
    intros
    exact heq_of_eq
      (Presentation.Hom.id_comp
        (Presentation.Hom.id boolPresentation))

/-- Complement only the top triangle while retaining its old identity boundaries. -/
def nonNaturalTrianglePatch :
    LocalPatch boolTriangleFabric canonicalTriangle where
  boundary := triangleBoundaryReplacement
  update := boolFlip

def firstTriangleFace : ProperBoundaryOperator 1 2 where
  operator := SimplexCategory.δ (0 : Fin 3)
  lowerDimension := by decide

theorem bool_identity_ne_flip :
    Presentation.Hom.id boolPresentation ≠ boolFlip := by
  intro h
  have hstate := congrArg
    (fun f : Presentation.Hom boolPresentation boolPresentation ↦
      f.mapState true) h
  change true = false at hstate
  cases hstate

def nonNaturalBoundaryMismatch :
    LocalPatch.BoundaryMismatch nonNaturalTrianglePatch where
  boundaryDimension := 1
  operator := firstTriangleFace
  expected := Presentation.Hom.id boolPresentation
  actual := boolFlip
  expected_eq := rfl
  actual_eq :=
    (Presentation.Hom.id_comp boolFlip).symm
  different := bool_identity_ne_flip

example : ¬ nonNaturalTrianglePatch.BoundaryCompatible :=
  nonNaturalBoundaryMismatch.not_boundaryCompatible

example : ¬ nonNaturalTrianglePatch.ExtendsTo :=
  nonNaturalBoundaryMismatch.not_extendsTo

/-! ## An explicit complete-filler capability -/

/-- The empty simplicial shape has no cells in any dimension. -/
def emptyShape : Shape :=
  (SimplicialObject.const (Type)).obj Empty

def emptyFabric : DAF.Fabric.Fabric where
  shape := emptyShape
  presentation := by
    intro n cell
    exact cell.elim
  contract := by
    intro m n op cell
    exact cell.elim
  contract_id := by
    intro n cell
    exact cell.elim
  contract_comp := by
    intro l m n ψ θ cell
    exact cell.elim

/-- Every compatible patch on the empty fabric has a filler, vacuously. -/
def emptyCompleteFiller : CompleteFillerTheory emptyFabric where
  fill := by
    intro n cell
    exact cell.elim
  fill_boundary := by
    intro n cell
    exact cell.elim

example
    {n : Nat}
    {cell : emptyFabric.Cell n}
    (patch : LocalPatch emptyFabric cell) :
    patch.ExtendsTo ↔ patch.BoundaryCompatible :=
  extends_iff_boundaryCompatible emptyCompleteFiller patch

end DAF.Integration.FabricReactionTests
```
