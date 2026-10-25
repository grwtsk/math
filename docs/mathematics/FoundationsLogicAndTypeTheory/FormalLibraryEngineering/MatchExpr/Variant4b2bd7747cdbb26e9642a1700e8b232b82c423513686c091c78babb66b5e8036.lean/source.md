# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchExpr.Variant4b2bd7747cdbb26e9642a1700e8b232b82c423513686c091c78babb66b5e8036

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c51ffee1b4987fb92e92ff8b0499ad282ccbb91` · SHA-256 `d1c6d950365af3b219de4c60280c0072884d23216723fb1a63db9fabab84929b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Do.Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BuiltinDo/MatchExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Do.Basic
meta import Lean.Parser.Do
import Lean.Elab.Do.PatternVar
import Lean.Elab.BuiltinDo.Basic
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f

namespace Lean.Elab.Do

open Lean.Parser.Term
open Lean.Meta

@[builtin_macro Lean.Parser.Term.doLetExpr] def expandDoLetExpr : Macro := fun stx => match stx with
  | `(doElem| let_expr $pat:matchExprPat := $discr:term
                | $elseBranch
              $thenBranch) =>
    `(doElem| match_expr (meta := false) $discr:term with
              | $pat:matchExprPat => $thenBranch:doSeqIndent
              | _ => $elseBranch:doSeqIndent)
  | _ => Macro.throwUnsupported

@[builtin_macro Lean.Parser.Term.doLetMetaExpr] def expandDoLetMetaExpr : Macro := fun stx => match stx with
  | `(doElem| let_expr $pat:matchExprPat ← $discr:term
                | $elseBranch
              $thenBranch) =>
    `(doElem| match_expr $discr:term with
              | $pat:matchExprPat => $thenBranch:doSeqIndent
              | _ => $elseBranch:doSeqIndent)
  | _ => Macro.throwUnsupported

@[builtin_doElem_elab Lean.Parser.Term.doMatchExpr] def elabDoMatchExpr : DoElab := fun stx dec => do
  let `(doMatchExpr| match_expr $[(meta := false)%$metaFalseTk?]? $discr with $alts) := stx | throwUnsupportedSyntax
  let info ← inferControlInfoElem stx
  if metaFalseTk?.isNone then -- i.e., implicitly (meta := true)
    let x := mkIdentFrom discr (← mkFreshUserName `__x)
    elabDoIdDecl x none (← `(doElem| instantiateMVarsIfMVarApp $discr)) do
      elabDoMatchExprNoMeta info x alts dec
  else
    elabDoMatchExprNoMeta info discr alts dec
where elabDoMatchExprNoMeta (info : ControlInfo) (discr : Term) (alts : TSyntax ``matchExprAlts) (dec : DoElemCont) : DoElabM Expr := do
  dec.withDuplicableCont info fun dec => do
    let rec elabMatch i (altsArr : Array (TSyntax ``matchExprAlt)) := do
      if h : i < altsArr.size then
        match altsArr[i] with
        | `(matchExprAltExpr| | $pattern => $seq) =>
          let vars ← getExprPatternVarsEx pattern
          checkMutVarsForShadowing vars
          doElabToSyntax m!"match_expr alternative {pattern}" (ref := seq) (elabDoSeq ⟨seq⟩ dec) fun rhs => do
            elabMatch (i + 1) (altsArr.set i (← `(matchExprAltExpr| | $pattern => $rhs)))
        | _ => throwUnsupportedSyntax
      else
        let elseSeq := alts.raw[1][3]
        doElabToSyntax m!"match_expr else alternative" (ref := elseSeq) (elabDoSeq ⟨elseSeq⟩ dec) fun rhs => do
          let alts : TSyntax ``matchExprAlts := ⟨alts.raw.modifyArg 0 fun node => node.setArgs altsArr⟩
          let alts : TSyntax ``matchExprAlts := ⟨alts.raw.modifyArg 1 (·.setArg 3 rhs)⟩
          let mγ ← mkMonadApp (← read).doBlockResultType
          Term.elabTerm (← `(match_expr $discr with $alts)) mγ
    elabMatch 0 (alts.raw[0].getArgs.map (⟨·⟩))
```
