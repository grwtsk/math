-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrElse.Variant207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OrElse.Variant207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/Reader.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich

The Reader monad transformer for passing immutable State.
-/
module

prelude
public import Init.Control.Except


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrElse.Variant207ef2cf3fc12c8ded7acd6edcf3d4fc5bed3f2ededbaddb1c572b9118753e82

public section

set_option linter.missingDocs true

namespace ReaderT

/--
Recovers from errors. The same local value is provided to both branches. Typically used via the
`<|>` operator.
-/
@[always_inline, inline]
protected def orElse [Alternative m] (x₁ : ReaderT ρ m α) (x₂ : Unit → ReaderT ρ m α) : ReaderT ρ m α :=
  fun s => x₁ s <|> x₂ () s

/--
Fails with a recoverable error.
-/
@[always_inline, inline]
protected def failure [Alternative m] : ReaderT ρ m α :=
  fun _ => failure

instance [Alternative m] [Monad m] : Alternative (ReaderT ρ m) where
  failure := ReaderT.failure
  orElse  := ReaderT.orElse

end ReaderT

instance : MonadControl m (ReaderT ρ m) where
  stM      := id
  liftWith f ctx := f fun x => x ctx
  restoreM x _ := x

@[always_inline]
instance ReaderT.tryFinally [MonadFinally m] : MonadFinally (ReaderT ρ m) where
  tryFinally' x h ctx := tryFinally' (x ctx) (fun a? => h a? ctx)

/--
A monad with access to a read-only value of type `ρ`. The value can be locally overridden by
`withReader`, but it cannot be mutated.
-/
abbrev ReaderM (ρ : Type u) := ReaderT ρ Id

instance [Monad m] [MonadAttach m] : MonadAttach (ReaderT ρ m) where
  CanReturn x a := Exists (fun r => MonadAttach.CanReturn (x.run r) a)
  attach x := fun r => (fun ⟨a, h⟩ => ⟨a, r, h⟩) <$> MonadAttach.attach (x.run r)
