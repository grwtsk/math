# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CarrierCorpus.Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cb978ed23c444bc1440d07d18ddef749aa5d507` · SHA-256 `1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Carrier
import Mathematics.Boolean.Corpus

/-!
# Boolean carrier corpus links

The retained class and `Bool` instance are subsumed by Mathlib's canonical
`BooleanAlgebra`.  These links retain exact source identity without becoming
theorem constructors.
-/

namespace Mathematics.Boolean.CarrierCorpus

open Mathematics
open Mathematics.Discovery

def algebra : CorpusSubsumptionLink :=
  Corpus.carrierModule.subsumption
    { value := "ideas:boolean:algebra:carrier" }
    (by simp [StableId.Valid])
    0
    "Algebra"
    (by decide)
    .class
    {
      value :=
        "39a56f4b76460a4a995dd6d0a702b246a4e2feeee2a5609560160f2ce5469245"
    }
    (by
      unfold Digest.Valid
      native_decide)
    "Mathematics.Boolean.Algebra"
    (by decide)
    .carrierReconstruction
    "Use Mathlib's canonical complemented distributive lattice class."

def boolInstance : CorpusSubsumptionLink :=
  Corpus.boolModule.subsumption
    { value := "ideas:boolean:bool:instance" }
    (by simp [StableId.Valid])
    0
    "instBoolAlgebra"
    (by decide)
    .instance
    {
      value :=
        "53d5ee7287e1adff7470bfabc6601fc6573c5766da8f6c955e390d141f594ef7"
    }
    (by
      unfold Digest.Valid
      native_decide)
    "Mathematics.Boolean.boolAlgebra"
    (by decide)
    .carrierReconstruction
    "Reuse the canonical Boolean algebra instance already available for Bool."

def links : List CorpusSubsumptionLink := [algebra, boolInstance]

@[simp] theorem links_length : links.length = 2 := by decide

end Mathematics.Boolean.CarrierCorpus
```
