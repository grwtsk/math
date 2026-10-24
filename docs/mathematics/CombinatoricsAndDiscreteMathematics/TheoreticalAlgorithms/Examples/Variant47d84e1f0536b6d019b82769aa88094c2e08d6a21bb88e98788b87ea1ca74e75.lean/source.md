# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Examples.Variant47d84e1f0536b6d019b82769aa88094c2e08d6a21bb88e98788b87ea1ca74e75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b10696b55fa1b955c4c0b4f0c4b14a482d105e8` · SHA-256 `47d84e1f0536b6d019b82769aa88094c2e08d6a21bb88e98788b87ea1ca74e75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Prismatic.Morphism

namespace Surface.Prismatic

/-!
# Canonical prism example interfaces

Formalized here: named interfaces for standard examples from Bhatt--Scholze.

Certificate-gated here: all nontrivial construction claims.  The unit prism is
the only fully inhabited toy example in this file.
-/

structure CrystallinePrismExample where
  p : Nat
  prism : CrystallinePrism p
  source : String
  boundary : List String

structure PerfectPrismExample where
  p : Nat
  prism : PerfectPrism p
  perfectoidCorrespondence : Prop
  perfectoidCorrespondenceCertified : perfectoidCorrespondence
  boundary : List String

structure BreuilKisinPrismInterface where
  p : Nat
  ringLabel : String
  frobeniusLabel : String
  kernelLabel : String
  prism? : Option (Prism p)
  certificateBoundary : List String

structure QCrystallinePrismInterface where
  p : Nat
  ringLabel : String
  idealLabel : String
  frobeniusLabel : String
  prism? : Option (Prism p)
  certificateBoundary : List String

structure UniversalOrientedPrismInterface where
  p : Nat
  ringLabel : String
  distinguishedGeneratorLabel : String
  completionLabel : String
  orientable? : Option (OrientablePrism p)
  certificateBoundary : List String

/-- A trivial crystalline example over the unit prism interface. -/
def crystalline_example (p : Nat) : CrystallinePrismExample where
  p := p
  prism := {
    toPrism := unitPrism p
    I_eq_p := True
    I_eq_pCertified := trivial
    crystallineBoundary := [
      "Unit crystalline-prism example.",
      "This is not a nontrivial crystalline comparison theorem."
    ]
  }
  source := "unit example"
  boundary := ["Trivial example used to test the interface."]

def breuilKisinInterface (p : Nat) : BreuilKisinPrismInterface where
  p := p
  ringLabel := "W(k)[[u]]"
  frobeniusLabel := "u ↦ u^p"
  kernelLabel := "ker(W(k)[[u]] -> O_K)"
  prism? := none
  certificateBoundary := [
    "Breuil-Kisin prism interface.",
    "A concrete prism requires external certificates."
  ]

def qCrystallineInterface (p : Nat) : QCrystallinePrismInterface where
  p := p
  ringLabel := "Z_p[[q-1]]"
  idealLabel := "([p]_q)"
  frobeniusLabel := "q ↦ q^p"
  prism? := none
  certificateBoundary := [
    "q-crystalline prism interface.",
    "A concrete prism requires external certificates."
  ]

def universalOrientedInterface (p : Nat) : UniversalOrientedPrismInterface where
  p := p
  ringLabel := "Z_(p){d, δ(d)^(-1)} completed at (p,d)"
  distinguishedGeneratorLabel := "d"
  completionLabel := "(p,d)-completion"
  orientable? := some (unitOrientablePrism p)
  certificateBoundary := [
    "Universal oriented prism interface.",
    "The included unit inhabitant is only a toy example."
  ]

end Surface.Prismatic
```
