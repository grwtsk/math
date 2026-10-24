# Complete source: GRWTSK.Algebra.GroupTheory.TypeTags.Variant9247904d24879a8ba20cd2667efc76c9edd0b58fb58c9811629ce4fcc58a4e23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754d0cc22eb8a9bbc561d182de8fc1be9a863d54` · SHA-256 `ecc229d1858ca0c74fa6f5df0b64d026ef79b7b4f75db494ee2fc45cd460d21f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ToAddPow.Variante38bb23588ca22dc22615b225a702179b9df9f7c51726cbd60b66e0394f3d20d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e38bb23588ca22dc22615b225a702179b9df9f7c51726cbd60b66e0394f3d20d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ToAddPow.Variante38bb23588ca22dc22615b225a702179b9df9f7c51726cbd60b66e0394f3d20d","mathematical_subject":"Algebra.Groups","original_sha256":"e38bb23588ca22dc22615b225a702179b9df9f7c51726cbd60b66e0394f3d20d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Nat/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Lemmas about `Multiplicative ℕ`
-/


namespace GRWTSK.Algebra.GroupTheory.ToAddPow.Variante38bb23588ca22dc22615b225a702179b9df9f7c51726cbd60b66e0394f3d20d

assert_not_exists MonoidWithZero DenselyOrdered

open Multiplicative

namespace Nat

lemma toAdd_pow (a : Multiplicative ℕ) (b : ℕ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

@[simp] lemma ofAdd_mul (a b : ℕ) : ofAdd (a * b) = ofAdd a ^ b := (toAdd_pow _ _).symm

end Nat
```
