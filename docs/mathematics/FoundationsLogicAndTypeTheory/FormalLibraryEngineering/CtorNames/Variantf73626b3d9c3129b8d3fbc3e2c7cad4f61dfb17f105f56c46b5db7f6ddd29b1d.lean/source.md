# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorNames.Variantf73626b3d9c3129b8d3fbc3e2c7cad4f61dfb17f105f56c46b5db7f6ddd29b1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `619f8d2a86de987a0be1117fa3448637fccadd98` · SHA-256 `b55acb6c20a8dad9beee14596ebf3f78ba06cd3c05d4c6994ed1d5bb0f636e49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorNames.Variant6d43226e76cdb8a76da204c9abea9959c83dfb506a7679542369b484c98d35ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d43226e76cdb8a76da204c9abea9959c83dfb506a7679542369b484c98d35ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CtorNames.Variant6d43226e76cdb8a76da204c9abea9959c83dfb506a7679542369b484c98d35ae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6d43226e76cdb8a76da204c9abea9959c83dfb506a7679542369b484c98d35ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/CtorNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.Meta.Tactic.Induction
public import Aesop.Util.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorNames.Variant6d43226e76cdb8a76da204c9abea9959c83dfb506a7679542369b484c98d35ae

public section

open Lean Lean.Meta

namespace Aesop

structure CtorNames where
  ctor : Name
  args : Array Name
  /-- Whether the constructor has at least one implicit argument. -/
  hasImplicitArg : Bool

namespace CtorNames

def toRCasesPat (cn : CtorNames) : TSyntax `rcasesPat := Unhygienic.run do
  let ns ← cn.args.mapM λ n =>
    `(Lean.Parser.Tactic.rcasesPatLo| $(mkIdent n):ident)
  if cn.hasImplicitArg then
    `(rcasesPat| @⟨ $ns,* ⟩)
  else
    `(rcasesPat| ⟨ $ns,* ⟩)

private def nameBase : Name → Name
  | .anonymous => .anonymous
  | .str _ s => .str .anonymous s
  | .num _ n => .num .anonymous n

open Lean.Parser.Tactic in
def toInductionAltLHS (cn : CtorNames) :
    TSyntax ``inductionAltLHS := Unhygienic.run do
  let ns := cn.args.map mkIdent
  let ctor := mkIdent $ nameBase cn.ctor
  if cn.hasImplicitArg then
    `(inductionAltLHS| | @$ctor $ns:ident*)
  else
    `(inductionAltLHS| | $ctor $ns:ident*)

open Lean.Parser.Tactic in
def toInductionAlt (cn : CtorNames) (tacticSeq : Array Syntax.Tactic) :
    TSyntax ``inductionAlt := Unhygienic.run do
  `(inductionAlt| $(cn.toInductionAltLHS):inductionAltLHS => $tacticSeq:tactic*)

def toAltVarNames (cn : CtorNames) : AltVarNames where
  explicit := true
  varNames := cn.args.toList

def mkFreshArgNames (lctx : LocalContext) (cn : CtorNames) :
    CtorNames × LocalContext :=
  let (args, lctx) := getUnusedNames lctx cn.args
  ({ cn with args }, lctx)

end CtorNames

open Lean.Parser.Tactic in
def ctorNamesToRCasesPats (cns : Array CtorNames) : TSyntax ``rcasesPatMed :=
  Unhygienic.run do `(rcasesPatMed| $(cns.map (·.toRCasesPat)):rcasesPat|*)

open Lean.Parser.Tactic in
def ctorNamesToInductionAlts (cns : Array (CtorNames × Array Syntax.Tactic)) :
    TSyntax ``inductionAlts := Unhygienic.run do
  let alts := cns.map λ (cn, tacticSeq) => cn.toInductionAlt tacticSeq
  `(inductionAlts| with $alts:inductionAlt*)

def mkCtorNames (iv : InductiveVal) : CoreM (Array CtorNames) := MetaM.run' do
  iv.ctors.toArray.mapM λ ctor => do
    let cv ← getConstInfoCtor ctor
    let arity := cv.numParams + cv.numFields
    forallBoundedTelescope cv.type arity λ args _ => do
      let mut result := Array.mkEmpty cv.numFields
      let mut hasImplicitArg := false
      for arg in args[cv.numParams:] do
        let ldecl ← arg.fvarId!.getDecl
        result := result.push ldecl.userName
        hasImplicitArg := hasImplicitArg || ! ldecl.binderInfo.isExplicit
      return { args := result, ctor, hasImplicitArg }

end Aesop
```
