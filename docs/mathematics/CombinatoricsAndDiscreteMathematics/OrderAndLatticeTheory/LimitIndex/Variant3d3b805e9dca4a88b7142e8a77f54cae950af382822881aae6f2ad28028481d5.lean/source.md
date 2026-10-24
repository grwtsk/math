# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LimitIndex.Variant3d3b805e9dca4a88b7142e8a77f54cae950af382822881aae6f2ad28028481d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a9ca06f662ef68d563fb3ae9d29355520b5d027` · SHA-256 `f3b64e2fcd64c1d30c8d3b44147583e4e4ec19c18fcb5c1045cfb90df6b0a2f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RegisteredLimitIndex.Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RegisteredLimitIndex.Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1","mathematical_subject":"Algebra.OrderTheory","original_sha256":"8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/LimitIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence
import Mathlib.Order.Monotone.Basic

/-!
# Registered limit index

The declared supremum is evidence, not a consequence of displaying a finite
prefix.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RegisteredLimitIndex.Variant8233e95debacdf04d5dc699fa4367b45322cdc2e743e257301b7135e1b3198f1

namespace Mathematics.StratifiedBoundary

def IsDeclaredSupremum
    {Semantic : Type u}
    [Preorder Semantic]
    (sequence : Nat → Semantic)
    (limit : Semantic) : Prop :=
  (∀ stage, sequence stage ≤ limit) ∧
    ∀ upper,
      (∀ stage, sequence stage ≤ upper) →
        limit ≤ upper

structure RegisteredLimitIndex
    (Semantic : Type u)
    [Preorder Semantic] where
  sequenceId : FundamentalSequenceId
  index : Nat → Semantic
  declaredLimit : Semantic
  normalizedAtEveryStage : Prop
  normalizationEvidence : normalizedAtEveryStage
  monotone : Monotone index
  declaredSupremum :
    IsDeclaredSupremum index declaredLimit

theorem limit_index_monotone
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    Monotone limitIndex.index :=
  limitIndex.monotone

theorem limit_index_has_declared_supremum
    {Semantic : Type u}
    [Preorder Semantic]
    (limitIndex : RegisteredLimitIndex Semantic) :
    IsDeclaredSupremum
      limitIndex.index
      limitIndex.declaredLimit :=
  limitIndex.declaredSupremum

end Mathematics.StratifiedBoundary
```
