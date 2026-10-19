import Mathematics.Geometry.CorpusElement

/-!
# Common notion: extensional coincidence

This modern statement interprets coincidence as pointwise equality of maps.
It does not identify visual overlap or numerical proximity with equality.
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def ExtensionalCoincidenceStatement : Prop :=
  ∀ (Domain Codomain : Type)
    (first second : Domain → Codomain),
    (∀ point, first point = second point) →
      first = second

def extensionalCoincidenceOpenElement :
    OpenConjectureElement ExtensionalCoincidenceStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:extensional-coincidence" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Pointwise coincidence gives extensional equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.ExtensionalCoincidenceStatement"
  leanDeclarationName_nonempty := by
    decide

def extensionalCoincidenceDependency :
    DependencyEdge extensionalCoincidenceOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:extensional-coincidence:funext"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "funext"
  role := .proof

def extensionalCoincidenceSeed :
    EuclideanSeed ExtensionalCoincidenceStatement where
  proposal := extensionalCoincidenceOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      4
      (by decide)
      "Common notion 4"
  ]
  dependencies := [extensionalCoincidenceDependency]

theorem extensionalCoincidence :
    ExtensionalCoincidenceStatement := by
  intro Domain Codomain first second pointwise
  funext point
  exact pointwise point

def extensionalCoincidenceTheoremElement :
    LeanTheoremElement extensionalCoincidenceOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:extensional-coincidence" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := extensionalCoincidenceOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := extensionalCoincidence

def extensionalCoincidenceCorpusItem :
    KernelProvedEuclideanItem extensionalCoincidenceSeed where
  theoremElement := extensionalCoincidenceTheoremElement

end Mathematics.Geometry.CommonNotions
