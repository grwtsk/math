# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variant880528f138f9510202179b7992232251bed886895ee35e237b88862e4aaa3ed4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74de1fb09ca643a348d95a0273480afb65b61c18` · SHA-256 `ea709adb0b90d975ca5aa8537dd520a237cb93dad4578f53f351999d3e1d9dc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Real/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Basic.Real.Basic

/-!
# The real numbers are a \*-ring, with the trivial \*-structure
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d

public section

/-- The real numbers are a \*-ring, with the trivial \*-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
```
