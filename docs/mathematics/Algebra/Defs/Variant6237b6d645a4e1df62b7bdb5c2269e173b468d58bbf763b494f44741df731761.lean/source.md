# Complete source: GRWTSK.Algebra.Defs.Variant6237b6d645a4e1df62b7bdb5c2269e173b468d58bbf763b494f44741df731761

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82d4a3c50ce341290375c2ed5b204ce0d9eac4dd` · SHA-256 `edd11a02e1ba42c48aab056d93d376fbba3ede224be9d8e3b6e83416304cb6cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MaximalSpectrum.Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MaximalSpectrum.Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Maximal/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 David Kurniadi Angdinata. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata
-/
import Mathlib.RingTheory.Ideal.Maximal

/-!
# Maximal spectrum of a commutative (semi)ring

The maximal spectrum of a commutative (semi)ring is the type of all maximal ideals.
It is naturally a subset of the prime spectrum endowed with the subspace topology.

## Main definitions

* `MaximalSpectrum R`: The maximal spectrum of a commutative (semi)ring `R`,
  i.e., the set of all maximal ideals of `R`.
-/


namespace GRWTSK.Algebra.MaximalSpectrum.Variant3a66d193d55076a46a61fe503c197ad5193687c4955a99912c55589a01f8bae0

/-- The maximal spectrum of a commutative (semi)ring `R` is the type of all
maximal ideals of `R`. -/
@[ext]
structure MaximalSpectrum (R : Type*) [CommSemiring R] where
  asIdeal : Ideal R
  isMaximal : asIdeal.IsMaximal

@[deprecated (since := "2025-01-16")] alias MaximalSpectrum.IsMaximal := MaximalSpectrum.isMaximal

attribute [instance] MaximalSpectrum.isMaximal
```
