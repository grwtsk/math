# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticsSubsumption.Variant7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce13c970762314dc6deab420467449f6249cffa` · SHA-256 `7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Formula.Corpus
import Mathematics.Boolean.Formula.Semantics

/-!
# Formula-semantics subsumption

The six semantic predicates are transparent definitions over evaluation and
remain distinct from proof or model authority.
-/

namespace Mathematics.Boolean.Formula.SemanticsSubsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "") :
    CorpusSubsumptionLink :=
  Corpus.semanticsModule.subsumption
    { value := "ideas:boolean-formula:semantics:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .definition
    digest
    digest_valid
    target
    target_nonempty
    .definitionReconstruction
    "Retain the semantic relation as a transparent definition over evaluation."

def satisfies := link 0 "Satisfies" (by decide)
  { value := "5ddb9868ba721e9c70f8d65c63325f1c967b4cdddf26103483160a67f77a26aa" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Satisfies" (by decide)

def valid := link 1 "Valid" (by decide)
  { value := "c3acaace0343425cd2a1b2e88001843eadd46bcc1e0a9cc97380c2b759f6dd6c" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Valid" (by decide)

def satisfiable := link 2 "Satisfiable" (by decide)
  { value := "8d8a864901379d423db5b608084f4bfb2b32391a9a919d9b19d74cbb54fda1ff" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Satisfiable" (by decide)

def unsatisfiable := link 3 "Unsatisfiable" (by decide)
  { value := "36ae376988eacb7f3a79cbd86154876f44038559b28ddc45f0c61a1d8502e26f" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Unsatisfiable" (by decide)

def entails := link 4 "Entails" (by decide)
  { value := "5714870caa056ff16276c2edab7b0458df02043bdb9bdf14af20d55890d1c381" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Entails" (by decide)

def equivalent := link 5 "Equivalent" (by decide)
  { value := "94e8f72e4d58bae4dad567b338356d136320d1911d58d3bdfac82e00acc2e45b" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.Equivalent" (by decide)

def links : List CorpusSubsumptionLink := [
  satisfies,
  valid,
  satisfiable,
  unsatisfiable,
  entails,
  equivalent
]

@[simp] theorem links_length : links.length = 6 := by decide

end Mathematics.Boolean.Formula.SemanticsSubsumption
```
