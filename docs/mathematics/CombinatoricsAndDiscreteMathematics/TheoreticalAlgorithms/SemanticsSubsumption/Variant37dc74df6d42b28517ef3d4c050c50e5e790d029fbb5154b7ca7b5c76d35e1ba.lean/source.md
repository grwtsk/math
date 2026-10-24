# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticsSubsumption.Variant37dc74df6d42b28517ef3d4c050c50e5e790d029fbb5154b7ca7b5c76d35e1ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6b91c38acc9cc87e158def5a576e4a35e6b8162` · SHA-256 `0cf094e9d45e510d709be07a87b2b2229254e09c77ea2a6a77981fe84f9b4c21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Link.Variant7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277","mathematical_subject":"Computation.DataStructures","original_sha256":"7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/SemanticsSubsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Corpus
import Mathematics.Boolean.Formula.Semantics

/-!
# Formula-semantics subsumption

The six semantic predicates are transparent definitions over evaluation and
remain distinct from proof or model authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant7985b7075afa0a172d78554e3f61f6a7dcffa6d839d074f8ed95fc9f2818d277

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
