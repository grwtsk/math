-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutModifyingStatePrime.Variant0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithoutModifyingStatePrime.Variant0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/MonadBacktrack.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Util.MonadBacktrack


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutModifyingStatePrime.Variant0cd6f3af1933f15cb54a2bf70d27f86225e1711f5fea9c9e12d892bdb18851f0

@[expose] public section

namespace Lean

/--
Execute the action `x`, then restore the initial state. Returns the state after
`x` finished.
-/
def withoutModifyingState' [Monad m] [MonadBacktrack s m] [MonadFinally m]
    (x : m α) : m (α × s) :=
  withoutModifyingState do
    let result ← x
    let finalState ← saveState
    return (result, finalState)

end Lean
