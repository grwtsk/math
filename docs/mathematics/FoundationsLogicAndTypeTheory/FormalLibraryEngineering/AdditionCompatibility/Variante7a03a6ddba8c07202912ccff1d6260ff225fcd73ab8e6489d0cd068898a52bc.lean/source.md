# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionCompatibility.Variante7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27ccfaa7a4910355a52e38fd84e4886fd1437b8d` · SHA-256 `e7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
