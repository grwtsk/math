# Complete source: GRWTSK.Algebra.Pi.Variant663a4c5462b648f2c2cb3942d5b7e8aa2add21af7fcc9b99248ff58650e1baa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6833114bc67d944dc1877b55717e87c86f68e6d7` · SHA-256 `6f4789737d544ecba9d541d1c996104524744285c11ca3b8d347656480d1d6a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CharP.Variantf59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CharP.Variantf59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharP/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.CharP.Defs
import Mathlib.Algebra.Ring.Pi

/-!
# Characteristic of semirings of functions
-/



namespace GRWTSK.Algebra.CharP.Variantf59df4a4722ca69b9863433c8554acd4bb2afe1577ee278c85b95faac604ad02

universe u v

namespace CharP

instance pi (ι : Type u) [hi : Nonempty ι] (R : Type v) [Semiring R] (p : ℕ) [CharP R p] :
    CharP (ι → R) p :=
  ⟨fun x =>
    let ⟨i⟩ := hi
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h =>
          funext fun j =>
            show Pi.evalRingHom (fun _ => R) j (↑x : ι → R) = 0 by rw [map_natCast, h],
          fun h => map_natCast (Pi.evalRingHom (fun _ : ι => R) i) x ▸ by rw [h, RingHom.map_zero]⟩⟩

-- diamonds
instance pi' (ι : Type u) [Nonempty ι] (R : Type v) [CommRing R] (p : ℕ) [CharP R p] :
    CharP (ι → R) p :=
  CharP.pi ι R p

end CharP
```
