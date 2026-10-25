# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommRing.Variantc045f31376cd8f7d6565ab8e3f7b6b454d25170073bf8e79b1d0dbaef73feb4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `033d6477b2f93c3aa95de77faf640b53fa7a4e8c` · SHA-256 `4d704614595eb24507a40d5e8b1b263f11e0b9d9791bd2cb6028c1c1efa21edf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Cutsat/CommRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Cutsat.Types
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingId
import Lean.Meta.Tactic.Grind.Simp
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Util
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Var
import Lean.Meta.Tactic.Grind.Arith.CommRing.Reify
import Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr
import Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037

public section
namespace Lean.Meta.Grind.Arith.Cutsat
/-!
CommRing interface for cutsat. We use it to normalize nonlinear polynomials.
-/

/-- Returns `true` if `p` contains a nonlinear monomial. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.isNonlinear (p : Poly) : GoalM Bool := do
  let .add _ x p := p | return false
  if (← getVar x).isAppOf ``HMul.hMul || (← getVar x).isAppOf ``HPow.hPow then return true
  p.isNonlinear

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.getGeneration (p : Poly) : GoalM Nat := do
  go p 0
where
  go : Poly → Nat → GoalM Nat
  | .num _, gen => return gen
  | .add _ x p, gen => do go p (max (← Grind.getGeneration (← getVar x)) gen)

def getIntRingId? : GoalM (Option Nat) := do
  CommRing.getCommRingId? (← getIntExpr)

/-- Normalize the polynomial using `CommRing`-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootIntInternalLinearPolyIsNonlinear.Variant9e5c48587398dd766f9a5b43933a3d33a108fb6d05480fe4384f2aee88cac037.Int.Internal.Linear.Poly.normCommRing? (p : Poly) : GoalM (Option (CommRing.RingExpr × CommRing.Poly × Poly)) := do
  unless (← p.isNonlinear) do return none
  let some ringId ← getIntRingId? | return none
  CommRing.RingM.run ringId do
    let e ← p.denoteExpr'
    -- TODO: we can avoid the following statement if we construct the `Int` denotation using
    -- Internalized operators instead of `mkIntMul` and `mkIntAdd`
    let e ← shareCommon (← canon e)
    let gen ← p.getGeneration
    let some re ← CommRing.reify? e (gen := gen) | return none
    let some p' ← re.toPolyM? | return none
    let e' ← p'.denoteExpr
    let e' ← preprocessLight e'
    /-
    **Note**: We are reusing the `IntModule` virtual parent.
    **TODO**: Investigate whether we should have a custom virtual parent for cutsat
    -/
    internalize e' gen (some getIntModuleVirtualParent)
    let p'' ← toPoly e'
    if p == p'' then return none
    modify' fun s => { s with usedCommRing := true }
    trace[grind.lia.assert.nonlinear] "{← p.pp} ===> {← p''.pp}"
    return some (re, p', p'')

end Lean.Meta.Grind.Arith.Cutsat
```
