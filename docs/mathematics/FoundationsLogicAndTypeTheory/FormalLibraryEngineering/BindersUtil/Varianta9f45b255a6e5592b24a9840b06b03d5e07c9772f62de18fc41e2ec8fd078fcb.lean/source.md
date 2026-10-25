# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BindersUtil.Varianta9f45b255a6e5592b24a9840b06b03d5e07c9772f62de18fc41e2ec8fd078fcb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a925320b63ddecf5464ab500b3c130dbec73a12f` · SHA-256 `87519140f556711299301c2365ce7140268d4f310636a119fc3dac0346bfdb0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanLocalDeclKindOfBinderName.Variant0dd3e8405b64a54ab53a1d8a1d9b28438a2ca8d1e7217bd875cbac985b5c9614","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dd3e8405b64a54ab53a1d8a1d9b28438a2ca8d1e7217bd875cbac985b5c9614","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanLocalDeclKindOfBinderName.Variant0dd3e8405b64a54ab53a1d8a1d9b28438a2ca8d1e7217bd875cbac985b5c9614","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0dd3e8405b64a54ab53a1d8a1d9b28438a2ca8d1e7217bd875cbac985b5c9614","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/BindersUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Parser.Term
meta import Lean.Parser.Term
meta import Lean.Parser.Do
import Init.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanLocalDeclKindOfBinderName.Variant0dd3e8405b64a54ab53a1d8a1d9b28438a2ca8d1e7217bd875cbac985b5c9614

public section

/--
Determines the local declaration kind of a binder using its name.

Names that begin with `__` are implementation details (`.implDetail`).
-/
def Lean.LocalDeclKind.ofBinderName (binderName : Name) : LocalDeclKind :=
  if binderName.isImplementationDetail then
    .implDetail
  else
    .default

namespace Lean.Elab.Term
/--
  Recall that
  ```
  def typeSpec := leading_parser " : " >> termParser
  def optType : Parser := optional typeSpec
  ```
-/
def expandOptType (ref : Syntax) (optType : Syntax) : Syntax :=
  if optType.isNone then
    mkHole ref
  else
    optType[0][1]

open Lean.Parser.Term

/-- Helper function for `expandEqnsIntoMatch` -/
def getMatchAltsNumPatterns (matchAlts : Syntax) : Nat :=
  let alt0 := matchAlts[0][0]
  let pats := alt0[1][0].getSepArgs
  pats.size

open TSyntax.Compat in
/--
  Expand a match alternative such as `| 0 | 1 => rhs` to an array containing `| 0 => rhs` and `| 1 => rhs`.
-/
def expandMatchAlt (stx : TSyntax ``matchAlt) : Array (TSyntax ``matchAlt) :=
  -- Not using syntax quotations here to keep source location
  -- of the pattern sequence (`$term,*`) intact
  let patss := stx.raw[1].getSepArgs
  if patss.size ≤ 1 then
    #[stx]
  else
    patss.map fun pats => stx.raw.setArg 1 (mkNullNode #[pats])

def shouldExpandMatchAlt : TSyntax ``matchAlt → Bool
  | `(matchAltExpr| | $[$patss,*]|* => $_) => patss.size > 1
  | _ => false

def expandMatchAlts? (stx : Syntax) : MacroM (Option Syntax) := do
  match stx with
  | `(match $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*) =>
     expand alts >>= fun alts? => alts?.mapM fun alts =>
      `(match $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*)
  | `(doElem| match $[$dep?]? $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*) =>
     expand alts >>= fun alts? => alts?.mapM fun alts =>
      `(doElem| match $[$dep?]? $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*)
  | _ => return none
  where
    expand (alts : Array (TSyntax ``matchAlt)) : MacroM (Option (Array (TSyntax ``matchAlt))) := do
      if alts.any shouldExpandMatchAlt then
        let alts ← alts.foldlM (init := #[]) fun alts alt => return alts ++ expandMatchAlt alt
        return some alts
      else
        return none

open TSyntax.Compat in
def clearInMatchAlt (stx : TSyntax ``matchAlt) (vars : Array Ident) : TSyntax ``matchAlt :=
  stx.1.modifyArg 3 fun rhs => Unhygienic.run do
    let mut rhs := rhs
    for v in vars do
      rhs ← `(clear% $v; $rhs)
    return rhs

def clearInMatch (stx : Syntax) (vars : Array Ident) : MacroM Syntax := do
  if vars.isEmpty then return stx
  match stx with
  | `(match $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*) =>
    let alts := alts.map (clearInMatchAlt · vars)
    `(match $[$gen]? $[$motive]? $discrs,* with $alts:matchAlt*)
  | _ => return stx

end Lean.Elab.Term
````
