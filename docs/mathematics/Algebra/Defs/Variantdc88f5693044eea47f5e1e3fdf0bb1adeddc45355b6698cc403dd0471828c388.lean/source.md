# Complete source: GRWTSK.Algebra.Defs.Variantdc88f5693044eea47f5e1e3fdf0bb1adeddc45355b6698cc403dd0471828c388

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f30231716c651c212e10dd331268abcda73736a3` · SHA-256 `f90dd62204ec42edf778d35329ea5887ca513375d2cee74a819173778e62a94a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MaximalIdeal.Variantc303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MaximalIdeal.Variantc303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/MaximalIdeal/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.RingTheory.LocalRing.Basic

/-!

# Maximal ideal of local rings

We define the maximal ideal of a local ring as the ideal of all non units.

## Main definitions

* `IsLocalRing.maximalIdeal`: The unique maximal ideal for a local rings. Its carrier set is the
  set of non units.

-/


namespace GRWTSK.Algebra.MaximalIdeal.Variantc303e5354fe83ffbe2b70a550ed18fe33df3de093f6f53b7edbc54545a56df9f

namespace IsLocalRing

variable (R : Type*) [CommSemiring R] [IsLocalRing R]

/-- The ideal of elements that are not units. -/
def maximalIdeal : Ideal R where
  carrier := nonunits R
  zero_mem' := zero_mem_nonunits.2 <| zero_ne_one
  add_mem' {_ _} hx hy := nonunits_add hx hy
  smul_mem' _ _ := mul_mem_nonunits_right

end IsLocalRing

@[deprecated (since := "2024-11-11")] alias LocalRing.maximalIdeal := IsLocalRing.maximalIdeal
```
