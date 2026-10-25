# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CtorIdx.Variantd747f71aa9e747f78e439909ec07b367f7b67ae822af7cb0921e9908105b223b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59fad3d0328dd3e6d7a364f3f5d9c29ad7034cdf` · SHA-256 `a7a67d10946bb2f8688dc445cf2d0e9959c1f7f3bb967b065eb6d0d90c3d05bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateCtorIdxUp.Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PropagateCtorIdxUp.Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/CtorIdx.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Constructions.CtorIdx
import Lean.Meta.CtorIdxHInj

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateCtorIdxUp.Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8

public section
namespace Lean.Meta.Grind

/--
Propagation for `T.ctorIdx`. Cf. the `reduceCtorIdx` simproc.
-/
def propagateCtorIdxUp (e : Expr) : GoalM Unit := e.withApp fun f xs => do
  let some fnName := f.constName? | return
  let some indInfo ← isCtorIdx? fnName | return
  unless xs.size == indInfo.numParams + indInfo.numIndices + 1 do return
  let a := xs.back!
  let aNode ← getRootENode a
  -- NB: This does not work for `Nat.ctorIdx`, as grind normalizes `Nat.succ` to `_ + k`.
  -- But we have `attribute [grind] Nat.ctorIdx` to handle that case.
  unless aNode.ctor do
    return
  let some conInfo ← isConstructorApp? aNode.self | return
  if aNode.heqProofs then
    unless (← hasSameType a aNode.self) do
      let b := aNode.self
      let gen := max (← getGeneration a) (← getGeneration b)
      -- Handle heterogeneous equality case
      -- We add a suitable invocation of the `.ctorIdx.hinj` theorem
      let aType ← whnfD (← inferType a)
      let bType ← whnfD (← inferType b)
      assert! aType.isAppOfArity indInfo.name (indInfo.numParams + indInfo.numIndices)
      -- both types should be headed by the same type former
      unless bType.isAppOfArity indInfo.name (indInfo.numParams + indInfo.numIndices) do return
      let us := aType.getAppFn.constLevels!
      let hinjName := mkCtorIdxHInjTheoremNameFor indInfo.name
      unless (← getEnv).containsOnBranch hinjName do
        let _ ← executeReservedNameAction hinjName
      let proof := mkConst hinjName us
      let proof := mkApp (mkAppN proof aType.getAppArgs) a
      let proof := mkApp (mkAppN proof bType.getAppArgs) b
      addNewRawFact proof (← inferType proof) gen (.inj (.decl hinjName)) .other
      return
  -- Homogeneous case
  let e' ← shareCommon (mkNatLit conInfo.cidx)
  internalize e' 0
  -- We used `mkExpectedPropHint` so that the inferred type of the proof matches the goal,
  -- to satisfy `debug.grind` checks
  pushEq e e' (mkExpectedPropHint (← mkCongrArg e.appFn! (← mkEqProof a aNode.self)) (← mkEq e e'))

end Lean.Meta.Grind
```
