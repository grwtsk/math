import Mathematics.Geometry.CorpusElement

/-!
# Common notion: equality transitivity

Historical coordinate: common notion 1.  The coordinate is provenance; the
closed proposition below is the mathematical object.
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def EqualityTransitivityStatement : Prop :=
  ∀ (α : Type) (first second third : α),
    first = second →
    second = third →
      first = third

def equalityTransitivityOpenElement :
    OpenConjectureElement EqualityTransitivityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:equality-transitivity" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Equality is transitive"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.EqualityTransitivityStatement"
  leanDeclarationName_nonempty := by
    decide

def equalityTransitivityDependency :
    DependencyEdge equalityTransitivityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:equality-transitivity:eq-trans"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.trans"
  role := .proof

def equalityTransitivitySeed :
    EuclideanSeed EqualityTransitivityStatement where
  proposal := equalityTransitivityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      1
      (by decide)
      "Common notion 1"
  ]
  dependencies := [equalityTransitivityDependency]

theorem equalityTransitivity :
    EqualityTransitivityStatement := by
  intro α first second third firstSecond secondThird
  exact firstSecond.trans secondThird

def equalityTransitivityTheoremElement :
    LeanTheoremElement equalityTransitivityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:equality-transitivity" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := equalityTransitivityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := equalityTransitivity

def equalityTransitivityCorpusItem :
    KernelProvedEuclideanItem equalityTransitivitySeed where
  theoremElement := equalityTransitivityTheoremElement

end Mathematics.Geometry.CommonNotions
