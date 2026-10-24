# Complete source: GRWTSK.Algebra.UniqueFactorizationDomain.Variant8c618ac4fe2035f356d78028d81e9ab6d8599331904df121ceedc03a35b30d40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28f9283c43d431abfb6f2646d5f27376b1de629f` · SHA-256 `d349564fbe6624438b4c74246b22a52696205d03f62e0580cb65798280e66cd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Noetherian/UniqueFactorizationDomain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.RingTheory.Noetherian.Defs
import Mathlib.RingTheory.UniqueFactorizationDomain.Ideal
/-!
# Noetherian domains have unique factorization

## Main results

# IsNoetherianRing.wfDvdMonoid
-/


namespace GRWTSK.Algebra.Noetherian.Variant163af48d4d947d381594acdf892d1fc5e88ab2d907fcf18180b163285c95086b

variable {R : Type*} [CommSemiring R] [IsDomain R]

-- see Note [lower instance priority]
instance (priority := 100) IsNoetherianRing.wfDvdMonoid [h : IsNoetherianRing R] :
    WfDvdMonoid R :=
  WfDvdMonoid.of_setOf_isPrincipal_wellFoundedOn_gt h.wf.wellFoundedOn
```
