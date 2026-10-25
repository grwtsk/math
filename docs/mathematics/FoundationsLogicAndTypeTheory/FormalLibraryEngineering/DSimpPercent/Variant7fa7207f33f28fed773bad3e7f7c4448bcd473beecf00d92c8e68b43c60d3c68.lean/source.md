# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimpPercent.Variant7fa7207f33f28fed773bad3e7f7c4448bcd473beecf00d92c8e68b43c60d3c68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccb47153b1f91bf8827e66871bcb72ea660bf931` · SHA-256 `810cc117631bdd5196815bee2e3177ea7847fe5e8027b5695ef3323d155f5922`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpPercentElaborator.Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DsimpPercentElaborator.Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/DSimpPercent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier, Jovan Gerbscheid
-/
module

public import Mathlib.Init
public import Lean.Elab.Tactic.Simp

/-!
`dsimp% […] t` runs `dsimp […]` on term `t`.
If `t` is a proof, then it runs `dsimp […]` on the type of `t` instead.

For instance, instead of
```
have foo := ...
dsimp at foo
rw [foo]
```
one can do `rw [dsimp% foo]`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DsimpPercentElaborator.Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b

public meta section

namespace Mathlib.Tactic

open Lean Elab Term Meta Parser Tactic

/--
`dsimp% […] t` runs `dsimp […]` on term `t`.
If `t` is a proof, then it runs `dsimp […]` on the type of `t` instead.

For instance, instead of
```
have foo := ...
dsimp at foo
rw [foo]
```
one can write `rw [dsimp% foo]`.
-/
syntax (name := dsimpPercent) "dsimp%" optConfig (discharger)? (&" only")?
  (" [" withoutPosition((simpErase <|> simpLemma),*,?) "]")? ppSpace term : term

@[term_elab dsimpPercent, inherit_doc dsimpPercent]
def dsimpPercentElaborator : TermElab := fun stx expectedType => do
  let fresh ← mkFreshExprMVar default
  let go : TacticM Expr := do
    let e ← Term.elabTerm stx[5] expectedType
    -- `stx` has the same shape as a normal `dsimp` call, so we can pass it to `mkSimpContext`.
    let { ctx, simprocs, .. } ← mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
    let dsimp (e : Expr) : MetaM Expr := do
      -- Ensure that only instantiating metavariables isn't counted as progress.
      let e ← instantiateMVars e
      let (dsimpResult, _) ← Meta.dsimp e ctx simprocs
      if dsimpResult == e then
        throwError "`dsimp%` made no progress"
      return dsimpResult
    if ← isProof e then
      mkExpectedTypeHint e (← dsimp (← inferType e))
    else
      dsimp e
  go { elaborator := .anonymous } |>.run' { goals := [fresh.mvarId!] }

end Mathlib.Tactic
````
