# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WholeExceedsPart.Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55e261e1fb1a3741cff914631d3c34e083bd51f7` · SHA-256 `cfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: a whole exceeds a positive added part

The initial kernel theorem is intentionally narrow: natural-number magnitudes.
It does not claim an unqualified order law for every geometric magnitude.
-/

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def WholeExceedsPartStatement : Prop :=
  ∀ whole added : Nat,
    0 < added →
      whole < whole + added

def wholeExceedsPartOpenElement :
    OpenConjectureElement WholeExceedsPartStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:whole-exceeds-part" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "A natural magnitude is smaller than a positive extension"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.WholeExceedsPartStatement"
  leanDeclarationName_nonempty := by
    decide

def wholeExceedsPartDependency :
    DependencyEdge wholeExceedsPartOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:whole-exceeds-part:nat-add"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Nat.lt_add_of_pos_right"
  role := .proof

def wholeExceedsPartSeed :
    EuclideanSeed WholeExceedsPartStatement where
  proposal := wholeExceedsPartOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      5
      (by decide)
      "Common notion 5"
  ]
  dependencies := [wholeExceedsPartDependency]

theorem wholeExceedsPart :
    WholeExceedsPartStatement := by
  intro whole added positive
  exact Nat.lt_add_of_pos_right positive

def wholeExceedsPartTheoremElement :
    LeanTheoremElement wholeExceedsPartOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:whole-exceeds-part" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := wholeExceedsPartOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := wholeExceedsPart

def wholeExceedsPartCorpusItem :
    KernelProvedEuclideanItem wholeExceedsPartSeed where
  theoremElement := wholeExceedsPartTheoremElement

end Mathematics.Geometry.CommonNotions
```
