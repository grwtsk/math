# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GRewrite.Variant59060abbeb814a97438b59ee5efb719f7d8c87b0b5c35427874a776ef9aa6fef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28713b0989f8e5cf6dcc0081c6322daba22dda81` · SHA-256 `1e9ed5971612ad36c1fbd1403cb53b87269b8968c024e508aa4d11a52444fcaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GCongr.Variant4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/GRewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sebastian Zimmer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Zimmer, Mario Carneiro, Heather Macbeth, Jovan Gerbscheid
-/
module

public import Mathlib.Tactic.GCongr
public import Mathlib.Tactic.GRewrite.Elab

/-!

# The generalized rewriting tactic

The `grw`/`grewrite` tactic is a generalization of the `rewrite` tactic that works with relations
other than equality. The core implementation of `grewrite` is in the file
`Mathlib/Tactic/GRewrite/Core.lean`

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00

public meta section
```
