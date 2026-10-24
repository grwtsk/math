# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllWeaken.Variant8c00a654af103d8983e11c1792791e1a79767d0b3a05cf25d8afed52e7d4b44e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02a86d3b1b21e60cb865c51862395e79bc728fe6` · SHA-256 `b5a07e25332386aaeae4843929c2f3bc9e294e9be0ca075a840194a572bb5ace`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variantd7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.All.Variantd7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4","mathematical_subject":"Computation.DataStructures","original_sha256":"d7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/AllWeaken.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Asta H. From
-/

import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variantd7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more {x xs} : P x → All P xs → All P (x :: xs)

@[aesop unsafe]
axiom weaken {α} (P Q : α → Prop) (wk : ∀ x, P x → Q x) (xs : List α)
  (h : All P xs) : All Q xs

/--
error: Tactic `aesop` failed, maximum number of rule applications (50) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example : All (· ∈ []) (@List.nil α) := by
  aesop (config := { maxRuleApplications := 50, terminal := true })
```
