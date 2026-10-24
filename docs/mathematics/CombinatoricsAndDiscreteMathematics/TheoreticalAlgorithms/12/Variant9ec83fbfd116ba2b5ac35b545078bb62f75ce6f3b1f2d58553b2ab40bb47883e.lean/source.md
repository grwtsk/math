# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.12.Variant9ec83fbfd116ba2b5ac35b545078bb62f75ce6f3b1f2d58553b2ab40bb47883e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79b301beca8c971559d44241f300fdcecfd65a62` · SHA-256 `2f7c56b16f1592df0285290e3e072b722f50989ef3d621db1cbdc75be94001a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.All.Variant350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2","mathematical_subject":"Computation.DataStructures","original_sha256":"350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/12.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant350d09c09004d08a056ff734c166be5b17d7178a332945891cc7e20a441b66a2

set_option aesop.check.all true

attribute [aesop unsafe 50% constructors] List.Mem

@[aesop safe [constructors, cases (cases_patterns := [All _ [], All _ (_ :: _)])]]
inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more (x xs) : P x → All P xs → All P (x :: xs)

theorem weaken (P Q : α → Prop) (wk : ∀ x, P x → Q x) (xs : List α) (h : All P xs)
  : All Q xs := by
  induction h <;> aesop

theorem in_self (xs : List α) : All (· ∈ xs) xs := by
  induction xs
  case nil =>
    aesop
  case cons x xs ih =>
    have wk : ∀ a, a ∈ xs → a ∈ x :: xs := by aesop
    have ih' : All (fun a => a ∈ x :: xs) xs := by aesop (add unsafe 1% weaken)
    aesop
```
