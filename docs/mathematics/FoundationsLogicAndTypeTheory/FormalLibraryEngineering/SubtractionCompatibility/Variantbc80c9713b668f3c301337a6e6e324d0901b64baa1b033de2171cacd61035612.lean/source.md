# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtractionCompatibility.Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5a31f6e6b3ac9349ff1130fbe17ba04291e5a34` · SHA-256 `bc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
