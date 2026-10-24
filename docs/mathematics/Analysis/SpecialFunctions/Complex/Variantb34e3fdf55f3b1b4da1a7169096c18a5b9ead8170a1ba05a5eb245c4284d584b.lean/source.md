# Complete source: GRWTSK.Analysis.SpecialFunctions.Complex.Variantb34e3fdf55f3b1b4da1a7169096c18a5b9ead8170a1ba05a5eb245c4284d584b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcf27decbd017682bddef914934bbbb33c73441c` · SHA-256 `6de0c7dbdd0e788c3798d68ae43a2f7465a63c49770675b0f33c52f276dbc71c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.MeromorphicNFOnGamma.Variante3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.MeromorphicNFOnGamma.Variante3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"e3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Meromorphic/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
module

public import Mathlib.Analysis.Meromorphic.NormalForm
public import Mathlib.Analysis.SpecialFunctions.Gamma.Beta

/-!
# The Gamma function is meromorphic
-/


namespace GRWTSK.Analysis.SpecialFunctions.MeromorphicNFOnGamma.Variante3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481

public section

open Set Complex

lemma MeromorphicNFOn.Gamma : MeromorphicNFOn Gamma univ :=
  meromorphicNFOn_inv.mp <| AnalyticOnNhd.meromorphicNFOn <|
    analyticOnNhd_univ_iff_differentiable.mpr differentiable_one_div_Gamma

-- TODO: restate `MeromorphicNFOn.Gamma` when `MeromorphicNF` is defined

@[fun_prop]
lemma Meromorphic.Gamma : Meromorphic Gamma :=
  meromorphicOn_univ.mp MeromorphicNFOn.Gamma.meromorphicOn

@[fun_prop]
lemma MeromorphicOn.Gamma {s} : MeromorphicOn Gamma s :=
  Meromorphic.Gamma.meromorphicOn
```
