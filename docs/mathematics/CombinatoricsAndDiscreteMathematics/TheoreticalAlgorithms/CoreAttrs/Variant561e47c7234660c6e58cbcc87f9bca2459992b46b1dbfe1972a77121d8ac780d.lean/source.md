# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoreAttrs.Variant561e47c7234660c6e58cbcc87f9bca2459992b46b1dbfe1972a77121d8ac780d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ef8c4103f1e4521e615d277869bc809d0cf9ed9` · SHA-256 `be1b2f6e4d62523111e2df12daf4ceb65cdb802b8520cca4f2581aa93be79e26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Core.Variant60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc","mathematical_subject":"Computation.DataStructures","original_sha256":"60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GCongr/CoreAttrs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.GCongr.Core

/-!
# gcongr attributes for lemmas up in the import chain

In this file we add `gcongr` attribute to lemmas in `Lean.Init`.
We may add lemmas from other files imported by `Mathlib/Tactic/GCongr/Core` later.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc

attribute [gcongr] List.Sublist.append List.Sublist.append_left List.Sublist.append_right
  List.Sublist.reverse List.drop_sublist_drop_left List.Sublist.drop Nat.succ_le_succ
  List.Perm.append_left List.Perm.append_right List.Perm.append List.Perm.map
```
