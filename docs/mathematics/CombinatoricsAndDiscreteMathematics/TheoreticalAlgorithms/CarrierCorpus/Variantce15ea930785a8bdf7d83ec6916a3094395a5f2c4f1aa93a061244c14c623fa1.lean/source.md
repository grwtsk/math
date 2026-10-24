# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CarrierCorpus.Variantce15ea930785a8bdf7d83ec6916a3094395a5f2c4f1aa93a061244c14c623fa1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007461f212d1e6c5691799360ed2f0d470bee873` · SHA-256 `ba0ba5cd4ca83644ec6672945f59e7f96f00e17018a1c6a7d8142c976610a842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Algebra.Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Algebra.Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae","mathematical_subject":"Computation.DataStructures","original_sha256":"1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/CarrierCorpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Carrier
import Mathematics.Boolean.Corpus

/-!
# Boolean carrier corpus links

The retained class and `Bool` instance are subsumed by Mathlib's canonical
`BooleanAlgebra`.  These links retain exact source identity without becoming
theorem constructors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Algebra.Variant1aaf5ffe83c85464a353ea5d9ab2f5c3e545aecc52e4c4c45c11738b52afb7ae

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
