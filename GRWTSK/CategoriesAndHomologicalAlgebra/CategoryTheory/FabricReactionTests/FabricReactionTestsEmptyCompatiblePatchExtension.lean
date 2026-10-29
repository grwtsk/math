import DAF.Fabric.Patch
import DAF.Integration.FabricTests

/-!
# Fabric reaction and patch integration fixtures

The first fixture gives a nontrivial state update whose boundary squares commute
on the constant standard triangle.  The second deliberately applies that update
at only the triangle cell, constructs the resulting checked boundary mismatch,
and derives non-extension through the general obstruction theorem.

The final fixture supplies an actual `CompatiblePatchExtensionCapability` on the empty
simplicial fabric.  Empty cells make the capability constructively total; no
choice or fabricated filler is used.  It demonstrates that the converse
`BoundaryCompatible → ExtendsTo` is exposed only through an explicit filler
capability.
-/

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

/-! ## An explicit compatible patch-extension capability -/

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
def emptyCompatiblePatchExtension :
    CompatiblePatchExtensionCapability emptyFabric where
  fill := by
    intro n cell
    exact cell.elim

example
    {n : Nat}
    {cell : emptyFabric.Cell n}
    (patch : LocalPatch emptyFabric cell) :
    patch.ExtendsTo ↔ patch.BoundaryCompatible :=
  extends_iff_boundaryCompatible emptyCompatiblePatchExtension patch

end DAF.Integration.FabricReactionTests
