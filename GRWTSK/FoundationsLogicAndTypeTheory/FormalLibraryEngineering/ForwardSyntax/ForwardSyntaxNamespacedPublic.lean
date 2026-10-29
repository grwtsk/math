-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardArg.Variant1eaf254cbe46c76a38b88e60fcf6d92a04c92664c3bf05bbd8c9a61340a950f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eaf254cbe46c76a38b88e60fcf6d92a04c92664c3bf05bbd8c9a61340a950f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForwardArg.Variant1eaf254cbe46c76a38b88e60fcf6d92a04c92664c3bf05bbd8c9a61340a950f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1eaf254cbe46c76a38b88e60fcf6d92a04c92664c3bf05bbd8c9a61340a950f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Do/ForwardSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Parser.Term
import Lean.Elab.Term.TermElabM
meta import Lean.Parser.Do


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardArg.Variant1eaf254cbe46c76a38b88e60fcf6d92a04c92664c3bf05bbd8c9a61340a950f0

namespace Lean.Elab.Do

open Lean.Parser.Term

/--
A body that effect-forwards into the enclosing `do` block via a `do←` marker, captured from
syntax of the form `do← body` or `fun b₁ … bₖ => do← body`. `binders` is empty in the bare
form.
-/
public structure ForwardArg where
  binders : Array (TSyntax ``funBinder)
  body    : DoSeq

/--
If `e` is a function application whose last argument effect-forwards into the enclosing `do`
block (its body bears a `do←` marker, possibly under `fun` binders), return the application
head sans the forwarding argument together with the `ForwardArg` description.
-/
public def Forward.matchApp? (e : Term) : Option (Term × ForwardArg) := do
  let `($head $args*) := (⟨dropParens e.raw⟩ : Term) | none
  let last : Term := ⟨dropParens (← args.back?).raw⟩
  let arg : ForwardArg ←
    if last.raw.isOfKind ``doForward then
      some ⟨#[], ⟨last.raw[2]⟩⟩
    else if let `(fun $bs:funBinder* => $rest) := last then
      let rest := dropParens rest.raw
      if rest.isOfKind ``doForward then some ⟨bs, ⟨rest[2]⟩⟩ else none
    else none
  let preArgs := args.pop
  let head' : Term :=
    if preArgs.isEmpty then head
    else ⟨mkNode ``Lean.Parser.Term.app #[head, mkNullNode preArgs]⟩
  some (head', arg)

end Lean.Elab.Do
