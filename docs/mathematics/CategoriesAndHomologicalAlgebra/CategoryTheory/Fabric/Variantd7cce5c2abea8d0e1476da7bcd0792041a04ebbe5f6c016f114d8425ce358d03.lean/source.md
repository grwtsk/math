# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fabric.Variantd7cce5c2abea8d0e1476da7bcd0792041a04ebbe5f6c016f114d8425ce358d03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50e8b4616b45cf0ad4a6ce51687017a676671570` · SHA-256 `d7cce5c2abea8d0e1476da7bcd0792041a04ebbe5f6c016f114d8425ce358d03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.Adapters.DAFRefinement
import DAF.Fabric.Reaction

/-!
# Binary matrices as fabric presentations

This adapter packages the existing declarative matrix and array-backed systems
as assembly presentations.  It reuses `BinaryMatrix.Adapters.mapRefinement`;
no `BinMatMut` refinement proof is duplicated.  Coordinate observations are
presentation morphisms, while executable matrices remain observationally
related to `BinMat` through `toDecl`.
-/

namespace BinaryMatrix.Adapters.Fabric

open CategoryTheory

/-- A static declarative matrix whose resolutions select individual entries. -/
def matrixObservationSystem (m n : Nat) : DAF.System where
  Input := PUnit
  State := BinMat m n
  Resolution := Fin m × Fin n
  Observation := fun _ => Bool
  step := fun _ matrix => matrix
  observe := fun index matrix => matrix index.1 index.2

/-- A static Boolean presentation used as a coordinate boundary. -/
def boolObservationSystem : DAF.System where
  Input := PUnit
  State := Bool
  Resolution := PUnit
  Observation := fun _ => Bool
  step := fun _ bit => bit
  observe := fun _ bit => bit

/-- Declarative matrix-cell presentation. -/
def matrixPresentation (m n : Nat) : DAF.Fabric.Presentation where
  system := matrixObservationSystem m n
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `BinaryMatrix.MatrixPresentation
  version := ⟨0, 1, 0⟩

/-- Coordinate presentation exposed by a matrix face contract. -/
def boolPresentation : DAF.Fabric.Presentation where
  system := boolObservationSystem
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `BinaryMatrix.BoolObservationPresentation
  version := ⟨0, 1, 0⟩

/-- A face contract selecting one matrix coordinate. -/
def coordinateContract (i : Fin m) (j : Fin n) :
    DAF.Fabric.Presentation.Hom (matrixPresentation m n) boolPresentation where
  mapInput := id
  mapState := fun matrix => matrix i j
  pullResolution := fun _ => (i, j)
  mapObservation := fun _ => id
  step_natural := by intros; rfl
  observe_natural := by intros; rfl
  invariant_natural := by intros; trivial

/-- Declarative Boolean negation as a proved presentation operation. -/
def notContract (m n : Nat) :
    DAF.Fabric.Presentation.Hom
      (matrixPresentation m n) (matrixPresentation m n) where
  mapInput := id
  mapState := BinMat.not
  pullResolution := id
  mapObservation := fun _ bit => !bit
  step_natural := by intros; rfl
  observe_natural := by intros; rfl
  invariant_natural := by intros; trivial

/-- The constant one-cell-per-degree shape used by the adapter fixture. -/
def constantMatrixShape : DAF.Fabric.Shape :=
  (Functor.const (SimplexCategoryᵒᵖ)).obj PUnit

/-- A coherent constant fabric hosting the declarative matrix presentation. -/
def matrixFabric (m n : Nat) : DAF.Fabric.Fabric where
  shape := constantMatrixShape
  presentation := fun _ _ => matrixPresentation m n
  contract := fun _ _ => DAF.Fabric.Presentation.Hom.id _
  contract_id := by intros; rfl
  contract_comp := by
    intros
    apply DAF.Fabric.Presentation.Hom.ext <;> rfl

/-- Pointwise Boolean negation as a coherent reaction of the constant fabric. -/
def notReaction (m n : Nat) :
    DAF.Fabric.Reaction (matrixFabric m n) (matrixFabric m n) where
  shapeMap := 𝟙 (matrixFabric m n).shape
  mapCell := fun x => x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ => notContract m n
  contract_natural := by
    intros
    apply DAF.Fabric.Presentation.Hom.ext <;> rfl

/-- Presentation of the existing declarative pointwise-map system. -/
def mapSpecPresentation (m n : Nat) : DAF.Fabric.Presentation where
  system := BinaryMatrix.Adapters.mapSpecSystem m n
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `BinaryMatrix.MapSpecification
  version := ⟨0, 1, 0⟩

/-- Presentation of the existing array-backed pointwise-map system. -/
def mapImplPresentation (m n : Nat) : DAF.Fabric.Presentation where
  system := BinaryMatrix.Adapters.mapImplSystem m n
  invariant := fun _ => True
  invariant_step := by intros; trivial
  name := `BinaryMatrix.MapImplementation
  version := ⟨0, 1, 0⟩

/-- The adapter's executable implementation is exactly the existing refinement. -/
def matrixImplementationRefinement (m n : Nat) :
    DAF.Refinement
      (mapSpecPresentation m n).system
      (mapImplPresentation m n).system :=
  BinaryMatrix.Adapters.mapRefinement m n

@[simp]
theorem matrixImplementationRefinement_abstract (matrix : BinMatMut m n) :
    (matrixImplementationRefinement m n).abstract matrix = matrix.toDecl :=
  rfl

end BinaryMatrix.Adapters.Fabric
```
