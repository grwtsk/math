# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variant8462512b405da512c88e32306422c6cedbdddd830c1c5a651d8eeed16282d59f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86076f1b14782536da8f4777684b7990870dedf0` · SHA-256 `f962ba88b0919fae817b11adb698edab785380a185927c29f45dbf2874bbabc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EquivFin.Variante2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EquivFin.Variante2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finite/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.EquivFin
import Mathlib.Data.Fintype.Sigma

/-!
# Finiteness of sigma types
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EquivFin.Variante2e18aeb26911ff28b22043caa115b62691440b1ba78cb388f57e61d067202ed

variable {α : Type*}

namespace Finite

instance {β : α → Type*} [Finite α] [∀ a, Finite (β a)] : Finite (Σa, β a) := by
  letI := Fintype.ofFinite α
  letI := fun a => Fintype.ofFinite (β a)
  infer_instance

instance {ι : Sort*} {π : ι → Sort*} [Finite ι] [∀ i, Finite (π i)] : Finite (Σ'i, π i) :=
  of_equiv _ (Equiv.psigmaEquivSigmaPLift π).symm

end Finite
```
