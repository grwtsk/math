import Mathematics.Geometry.CorpusElement

/-!
# Common notion: subtracting equals from equals
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def SubtractionCompatibilityStatement : Prop :=
  ∀ (α : Type) [Sub α] (first first' second second' : α),
    first = first' →
    second = second' →
      first - second = first' - second'

def subtractionCompatibilityOpenElement :
    OpenConjectureElement SubtractionCompatibilityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:subtraction-compatibility" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Subtracting equals from equals preserves equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.SubtractionCompatibilityStatement"
  leanDeclarationName_nonempty := by
    decide

def subtractionOperationDependency :
    DependencyEdge subtractionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:subtraction-compatibility:sub"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Sub.sub"
  role := .statementVocabulary

def subtractionEqualityDependency :
    DependencyEdge subtractionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:subtraction-compatibility:eq-rec"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.rec"
  role := .proof

def subtractionCompatibilitySeed :
    EuclideanSeed SubtractionCompatibilityStatement where
  proposal := subtractionCompatibilityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      3
      (by decide)
      "Common notion 3"
  ]
  dependencies := [
    subtractionOperationDependency,
    subtractionEqualityDependency
  ]

theorem subtractionCompatibility :
    SubtractionCompatibilityStatement := by
  intro α _ first first' second second' firstEqual secondEqual
  cases firstEqual
  cases secondEqual
  rfl

def subtractionCompatibilityTheoremElement :
    LeanTheoremElement subtractionCompatibilityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:subtraction-compatibility" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := subtractionCompatibilityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := subtractionCompatibility

def subtractionCompatibilityCorpusItem :
    KernelProvedEuclideanItem subtractionCompatibilitySeed where
  theoremElement := subtractionCompatibilityTheoremElement

end Mathematics.Geometry.CommonNotions
