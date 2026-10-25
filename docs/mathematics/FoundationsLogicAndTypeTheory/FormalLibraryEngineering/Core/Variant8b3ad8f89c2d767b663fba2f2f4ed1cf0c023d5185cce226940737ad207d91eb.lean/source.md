# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant8b3ad8f89c2d767b663fba2f2f4ed1cf0c023d5185cce226940737ad207d91eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22e7bde94c71957ad8bb6b0d30e0c3c00add8691` · SHA-256 `3ff44c77a1348b93e24292f79d320313effae6330a2bf26ca35c6a84b73a8f76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variantd36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Register.Variantd36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Attr/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.Attr.Register

/-!
# Simp tags for core lemmas

In Lean 4, an attribute declared with `register_simp_attr` cannot be used in the same file. So, we
declare all `simp` attributes used in `Mathlib` in `Mathlib/Tactic/Attr/Register` and tag lemmas
from the core library and the `Batteries` library with these attributes in this file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variantd36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f

attribute [simp] id_map'
attribute [functor_norm, monad_norm] seq_assoc pure_seq pure_bind bind_assoc bind_pure map_pure
attribute [monad_norm] seq_eq_bind_map

-- Porting note: changed some `iff` lemmas to `eq` lemmas
attribute [mfld_simps] id and_true true_and Function.comp_apply and_self eq_self not_false
  true_or or_true heq_eq_eq forall_const and_imp

attribute [nontriviality] eq_iff_true_of_subsingleton
```
