# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variantc8ba310ae706abb1ef58c86738bb573fc64043a060573ae3a0eca4633da4b990

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32b9bfc67e46783e96a3d32c03ef7e02f0a1cfc2` · SHA-256 `26f6116ae25e2bed757325b6951b6c359503511ea283a5f3a842a22e716bc2f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"bce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Real/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Data.Real.Basic

/-!
# The real numbers are a `*`-ring, with the trivial `*`-structure
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variantbce90721bfadf4c4e37ab77a1f13b1b5cf26e0e8de88f3d8c3803595545596a1

/-- The real numbers are a `*`-ring, with the trivial `*`-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
```
