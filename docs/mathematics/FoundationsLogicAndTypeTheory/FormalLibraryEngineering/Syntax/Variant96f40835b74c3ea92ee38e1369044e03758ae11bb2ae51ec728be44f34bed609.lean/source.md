# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant96f40835b74c3ea92ee38e1369044e03758ae11bb2ae51ec728be44f34bed609

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca3e633f6ef2e688266cec76fe4edfda47486097` · SHA-256 `3b033ea2a62bee3d66dd6bed0b277e739496fb95632779e769f97086cc50e2fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TSyntaxReplaceM.Variant996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TSyntaxReplaceM.Variant996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

public import Lean.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TSyntaxReplaceM.Variant996f042a39a2ead850d3f2466b52002c7d194b2432d75605f345f460cd92cf44

@[expose] public section

/-!
# Helper functions for working with typed syntaxes.
-/

namespace Lean

/--
Applies the given function to every subsyntax.

Like `Syntax.replaceM` but for typed syntax.
(Note there are no guarantees of type correctness here.)
-/
def TSyntax.replaceM [Monad M] (f : Syntax → M (Option Syntax)) (stx : TSyntax k) : M (TSyntax k) :=
  .mk <$> stx.1.replaceM f
```
