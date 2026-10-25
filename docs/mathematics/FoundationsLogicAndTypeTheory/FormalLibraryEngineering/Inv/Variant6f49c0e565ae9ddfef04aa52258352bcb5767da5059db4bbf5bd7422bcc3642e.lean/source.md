# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variant6f49c0e565ae9ddfef04aa52258352bcb5767da5059db4bbf5bd7422bcc3642e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b35a5963d0c067f3d0382f77f4d7d0e58cc1b3d9` · SHA-256 `4da77b75645214ce9fe877147ec44d30ffd160a4892c8c4006443f68cdeeb8d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/Inv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Cutsat.Types
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845

public section
namespace Int.Internal.Linear
/-- Returns `true` if all coefficients are not `0`. -/
def Poly.checkCoeffs : Poly → Bool
  | .num _ => true
  | .add k _ p => k != 0 && checkCoeffs p

end Int.Internal.Linear

namespace Lean.Meta.Grind.Arith.Cutsat

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.Int.Internal.Linear.Poly.checkNoElimVars (p : Poly) : GoalM Unit := do
  let .add _ x p := p | return ()
  assert! !(← eliminated x)
  checkNoElimVars p

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.Int.Internal.Linear.Poly.checkOccs (p : Poly) : GoalM Unit := do
  let .add _ y p := p | return ()
  let rec go (p : Poly) : GoalM Unit := do
    let .add _ x p := p | return ()
    assert! (← getOccursOf x).contains y
    go p
  go p

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolyCheckCoeffs.Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.Int.Internal.Linear.Poly.checkCnstrOf (p : Poly) (x : Var) : GoalM Unit := do
  assert! p.isSorted
  assert! p.checkCoeffs
  unless (← inconsistent) do
    p.checkNoElimVars
    p.checkOccs
  let .add _ y _ := p | unreachable!
  assert! x == y

def checkLeCnstrs (css : PArray (PArray LeCnstr)) (isLower : Bool) : GoalM Unit := do
  let mut x := 0
  for cs in css do
    for c in cs do
      c.p.checkCnstrOf x
      let .add a _ _ := c.p | unreachable!
      assert! isLower == (a < 0)
    x := x + 1
  return ()

def checkLowers : GoalM Unit := do
  let s ← get'
  assert! s.lowers.size == s.vars.size
  checkLeCnstrs s.lowers (isLower := true)

def checkUppers : GoalM Unit := do
  let s ← get'
  assert! s.uppers.size == s.vars.size
  checkLeCnstrs s.uppers (isLower := false)

def checkDvds : GoalM Unit := do
  let s ← get'
  assert! s.vars.size == s.dvds.size
  let mut x := 0
  for c? in s.dvds do
    if let some c := c? then
      c.p.checkCnstrOf x
      assert! c.d > 1
    x := x + 1

def checkVars : GoalM Unit := do
  let s ← get'
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

def checkElimEqs : GoalM Unit := do
  let s ← get'
  assert! s.elimEqs.size == s.vars.size
  let mut x := 0
  for c? in s.elimEqs do
    if let some c := c? then
      assert! c.p.isSorted
      assert! c.p.checkCoeffs
      assert! s.elimStack.contains x
      assert! c.p.coeff x != 0
    x := x + 1

def checkElimStack : GoalM Unit := do
  for x in (← get').elimStack do
    assert! (← eliminated x)

def checkDiseqCnstrs : GoalM Unit := do
  let s ← get'
  assert! s.vars.size == s.diseqs.size
  let mut x := 0
  for cs in s.diseqs do
    for c in cs do
      c.p.checkCnstrOf x
    x := x + 1
  return ()

def checkInvariants : GoalM Unit := do
  checkVars
  checkDvds
  checkLowers
  checkUppers
  checkElimEqs
  checkElimStack
  checkDiseqCnstrs

end Lean.Meta.Grind.Arith.Cutsat
```
