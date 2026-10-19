import Mathematics.Geometry.CorpusElement

/-!
# Common notion: adding equals to equals
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def AdditionCompatibilityStatement : Prop :=
  ∀ (α : Type) [Add α] (first first' second second' : α),
    first = first' →
    second = second' →
      first + second = first' + second'

def additionCompatibilityOpenElement :
    OpenConjectureElement AdditionCompatibilityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:addition-compatibility" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Adding equals to equals preserves equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.AdditionCompatibilityStatement"
  leanDeclarationName_nonempty := by
    decide

def additionOperationDependency :
    DependencyEdge additionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:addition-compatibility:add"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "HAdd.hAdd"
  role := .statementVocabulary

def additionEqualityDependency :
    DependencyEdge additionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:addition-compatibility:eq-rec"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.rec"
  role := .proof

def additionCompatibilitySeed :
    EuclideanSeed AdditionCompatibilityStatement where
  proposal := additionCompatibilityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      2
      (by decide)
      "Common notion 2"
  ]
  dependencies := [
    additionOperationDependency,
    additionEqualityDependency
  ]

theorem additionCompatibility :
    AdditionCompatibilityStatement := by
  intro α _ first first' second second' firstEqual secondEqual
  cases firstEqual
  cases secondEqual
  rfl

def additionCompatibilityTheoremElement :
    LeanTheoremElement additionCompatibilityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:addition-compatibility" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := additionCompatibilityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := additionCompatibility

def additionCompatibilityCorpusItem :
    KernelProvedEuclideanItem additionCompatibilitySeed where
  theoremElement := additionCompatibilityTheoremElement

end Mathematics.Geometry.CommonNotions
