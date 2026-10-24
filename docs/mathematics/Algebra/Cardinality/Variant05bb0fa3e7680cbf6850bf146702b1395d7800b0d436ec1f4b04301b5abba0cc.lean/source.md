# Complete source: GRWTSK.Algebra.Cardinality.Variant05bb0fa3e7680cbf6850bf146702b1395d7800b0d436ec1f4b04301b5abba0cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61b4e9e631c411f55b6160b45817bc69cd9d6c3b` · SHA-256 `29ddadc685c52bd5ca266ba65542cf95e6b91f9d3e5f5005076f43e7b3e26037`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/OreLocalization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.OreLocalization.Cardinality
import Mathlib.RingTheory.OreLocalization.Ring

/-!
# Cardinality of Ore localizations of rings

This file contains some results on cardinality of Ore localizations of rings.
-/


namespace GRWTSK.Algebra.CardinalMk.Variant78fb0f382ff969891a7c52300213679381ff059301addb81a5231eaaca2e9b29

universe u

open Cardinal

namespace OreLocalization

variable {R : Type u} [Ring R] {S : Submonoid R} [OreLocalization.OreSet S]

theorem cardinalMk (hS : S ≤ nonZeroDivisorsRight R) : #(OreLocalization S R) = #R :=
  le_antisymm (cardinalMk_le S) (mk_le_of_injective (numeratorHom_inj hS))

end OreLocalization
```
