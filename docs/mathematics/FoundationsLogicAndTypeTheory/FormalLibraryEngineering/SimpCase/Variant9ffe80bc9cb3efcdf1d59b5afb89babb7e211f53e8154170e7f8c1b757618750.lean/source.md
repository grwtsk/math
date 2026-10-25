# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCase.Variant9ffe80bc9cb3efcdf1d59b5afb89babb7e211f53e8154170e7f8c1b757618750

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c8fbcb4ec12ac9305fa0bb9524d389c2ddfd4a1` · SHA-256 `698060fa71dcc147cafb032f050478a752eec17497a0bbeabd263e0614ee4e99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMaxOccs.Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetMaxOccs.Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/SimpCase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
public import Lean.Compiler.LCNF.PassManager
import Lean.Compiler.LCNF.AlphaEqv
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMaxOccs.Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b

namespace Lean.Compiler.LCNF

/-!
This pass provides simplifications for cases statements at the impure level. The LCNF pure
simplifier must restrict itself when touching `cases` statements as to not destroy information for
the reset-reuse insertion. However, this pass runs after reset-reuse insertion and can thus be much
more liberal in its application of cases simplifications.

In particular we perform:
- elimination of cases with only 1 reachable arm
- folding of the most common cases arm into the default arm if possible

Note: Currently the simplifier still contains almost equivalent simplifications to the ones shown
here. We know that this causes unforeseen behavior and do plan on changing it eventually.
-/

-- TODO: the following functions are duplicated from simp and should be deleted in simp once we
-- refactor.

/--
Return the alternative in `alts` whose body appears in most arms, and the number of occurrences.
We use this function to decide whether to create a `.default` case or not.
-/
def getMaxOccs (alts : Array (Alt .impure)) : Alt .impure × Nat := Id.run do
  let mut maxAlt := alts[0]!
  let mut max    := getNumOccsOf alts 0
  for h : i in 1...alts.size do
    let curr := getNumOccsOf alts i
    if curr > max then
       maxAlt := alts[i]
       max    := curr
  return (maxAlt, max)
where
  /--
  Return the number of occurrences of `alts[i]` in `alts`.
  We use alpha equivalence.
  Note that the number of occurrences can be greater than 1 only when
  the alternative does not depend on field parameters
  -/
  getNumOccsOf (alts : Array (Alt .impure)) (i : Nat) : Nat := Id.run do
    let code := alts[i]!.getCode
    let mut n := 1
    for h : j in (i+1)...alts.size do
      if Code.alphaEqv alts[j].getCode code then
        n := n + 1
    return n

/--
Add a default case to the given `cases` alternatives if there
are alternatives with equivalent (aka alpha equivalent) right hand sides.
-/
def addDefaultAlt (alts : Array (Alt .impure)) : CompilerM (Array (Alt .impure)) := do
  if alts.size <= 1 || alts.any (· matches .default ..) then
    return alts
  else
    let (max, noccs) := getMaxOccs alts
    if noccs == 1 then
      return alts
    else
      let mut altsNew := #[]
      let mut first := true
      for alt in alts do
        if Code.alphaEqv alt.getCode max.getCode then
          let .ctorAlt _ k := alt | unreachable!
          unless first do
            eraseCode k
          first := false
        else
          altsNew := altsNew.push alt
      return altsNew.push (.default max.getCode)

/--
Remove all unreachable cases.
-/
def filterUnreachable (alts : Array (Alt .impure)) : Array (Alt .impure) :=
  alts.filter (!·.getCode matches .unreach ..)

def simplifyCases (c : Cases .impure) : CompilerM (Code .impure) := do
  let alts := filterUnreachable c.alts
  let alts ← addDefaultAlt alts
  if alts.size == 0 then
    return .unreach c.resultType
  else if h : alts.size = 1 then
    return alts[0].getCode
  else
    return .cases <| c.updateAlts alts

partial def Code.simpCase (code : Code .impure) : CompilerM (Code .impure) := do
  match code with
  | .cases c =>
    let alts ← c.alts.mapMonoM (·.mapCodeM  (·.simpCase))
    simplifyCases (c.updateAlts alts)
  | .jp decl k =>
    let decl ← decl.updateValue (← decl.value.simpCase)
    return code.updateFun! decl (← k.simpCase)
  | .return .. | .jmp .. | .unreach .. => return code
  | .let _ k | .uset (k := k) .. | .sset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
  | .setTag (k := k) .. | .del (k := k) .. | .oset (k := k) .. =>
    return code.updateCont! (← k.simpCase)

def Decl.simpCase (decl : Decl .impure) : CompilerM (Decl .impure) := do
  let value ← decl.value.mapCodeM (·.simpCase)
  return { decl with value }

public def ensureHasDefault (alts : Array (Alt .impure)) : Array (Alt .impure) :=
  if alts.any (· matches .default ..) then
    alts
  else if alts.size < 2 then
    alts
  else
    let last := alts.back!
    let alts := alts.pop
    alts.push (.default last.getCode)

public def simpCase : Pass :=
  Pass.mkPerDeclaration `simpCase .impure Decl.simpCase 0

builtin_initialize
  registerTraceClass `Compiler.simpCase (inherited := true)

end Lean.Compiler.LCNF
```
