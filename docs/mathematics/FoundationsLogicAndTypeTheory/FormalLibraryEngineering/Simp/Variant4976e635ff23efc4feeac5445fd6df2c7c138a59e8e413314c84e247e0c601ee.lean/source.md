# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant4976e635ff23efc4feeac5445fd6df2c7c138a59e8e413314c84e247e0c601ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eac4f4a0e55d86d6e92050143c2389f7119f9725` · SHA-256 `31381a85424773ef70fc3bc9e9fbd67a3fdfa5c60d19ab24f6cc6b5c0e4eba92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqSymm.Variant57d241718628a72fc0f3573bbe8c13a7519706aeb6c0714225e0a448f6f76cd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57d241718628a72fc0f3573bbe8c13a7519706aeb6c0714225e0a448f6f76cd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkEqSymm.Variant57d241718628a72fc0f3573bbe8c13a7519706aeb6c0714225e0a448f6f76cd2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"57d241718628a72fc0f3573bbe8c13a7519706aeb6c0714225e0a448f6f76cd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Gabriel Ebner, Floris van Doorn
-/
import Std.Tactic.OpenPrivate
import Std.Lean.Meta.DiscrTree

/-!
# Helper functions for using the simplifier.

[TODO] Reunification of `mkSimpContext'` with core.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEqSymm.Variant57d241718628a72fc0f3573bbe8c13a7519706aeb6c0714225e0a448f6f76cd2

namespace Lean

namespace Meta.Simp
open Elab.Tactic

/-- Flip the proof in a `Simp.Result`. -/
def mkEqSymm (e : Expr) (r : Simp.Result) : MetaM Simp.Result :=
  ({ expr := e, proof? := · }) <$>
  match r.proof? with
  | none => pure none
  | some p => some <$> Meta.mkEqSymm p

/-- Construct the `Expr` `cast h e`, from a `Simp.Result` with proof `h`. -/
def mkCast (r : Simp.Result) (e : Expr) : MetaM Expr := do
  mkAppM ``cast #[← r.getProof, e]

export private mkDischargeWrapper from Lean.Elab.Tactic.Simp

/-- Construct a `Simp.DischargeWrapper` from the `Syntax` for a `simp` discharger. -/
add_decl_doc mkDischargeWrapper

-- copied from core
/--
If `ctx == false`, the config argument is assumed to have type `Meta.Simp.Config`,
and `Meta.Simp.ConfigCtx` otherwise.
If `ctx == false`, the `discharge` option must be none
-/
def mkSimpContext' (simpTheorems : SimpTheorems) (stx : Syntax) (eraseLocal : Bool)
    (kind := SimpKind.simp) (ctx := false) (ignoreStarArg : Bool := false) :
    TacticM MkSimpContextResult := do
  if ctx && !stx[2].isNone then
    if kind == SimpKind.simpAll then
      throwError "'simp_all' tactic does not support 'discharger' option"
    if kind == SimpKind.dsimp then
      throwError "'dsimp' tactic does not support 'discharger' option"
  let dischargeWrapper ← mkDischargeWrapper stx[2]
  let simpOnly := !stx[3].isNone
  let simpTheorems ← if simpOnly then
    simpOnlyBuiltins.foldlM (·.addConst ·) {}
  else
    pure simpTheorems
  let congrTheorems ← Meta.getSimpCongrTheorems
  let r ← elabSimpArgs stx[4] (eraseLocal := eraseLocal) (kind := kind) {
    config       := (← elabSimpConfig stx[1] (kind := kind))
    simpTheorems := #[simpTheorems], congrTheorems
  }
  if !r.starArg || ignoreStarArg then
    return { r with dischargeWrapper }
  else
    let mut simpTheorems := r.ctx.simpTheorems
    /-
    When using `zeta := false`, we do not expand let-declarations when using `[*]`.
    Users must explicitly include it in the list.
    -/
    let hs ← getPropHyps
    for h in hs do
      unless simpTheorems.isErased (.fvar h) do
        simpTheorems ← simpTheorems.addTheorem (.fvar h) (← h.getDecl).toExpr
    return { ctx := { r.ctx with simpTheorems }, dischargeWrapper }

end Simp

end Lean.Meta
```
