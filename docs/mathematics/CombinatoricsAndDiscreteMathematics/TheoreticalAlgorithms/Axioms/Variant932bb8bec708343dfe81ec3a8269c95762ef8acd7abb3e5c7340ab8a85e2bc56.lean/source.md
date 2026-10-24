# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Axioms.Variant932bb8bec708343dfe81ec3a8269c95762ef8acd7abb3e5c7340ab8a85e2bc56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f6b755d08a51c15320973427c3755c827ae2a7d` · SHA-256 `1cb9b336823f5ed9a4918ad4f26479c1413d3f3f0e9d086671a9016fbf9f94bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Context.Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125","mathematical_subject":"Computation.DataStructures","original_sha256":"863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/Comparator/Axioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Comparator.Util
import Export.Parse


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variant863c5e1329811be0427880e08c171de733343491c5a3619b5dbf2e12b34c6125

namespace Comparator

namespace Axioms

structure Context where
  solution : Export.ExportedEnv
  legalAxioms : Std.HashSet Lean.Name

structure State where
  worklist : Array Lean.Name
  checked : Std.HashSet Lean.Name

abbrev AxiomsM := ReaderT Context <| StateT State <| Except String

partial def loop : AxiomsM Unit := do
  if (← get).worklist.isEmpty then
    return ()

  let target ← modifyGet fun s => (s.worklist.back!, { s with worklist := s.worklist.pop })
  if (← get).checked.contains target then
    loop
  else
    let some info := (← read).solution.constMap[target]?
      | throw s!"Constant not found in solution '{target}'"

    runForUsedConsts info validateConst

    modify fun s => { s with checked := s.checked.insert target }
    loop
where
  validateConst (n : Lean.Name) : AxiomsM Unit := do
    let some info := (← read).solution.constMap[n]?
      | throw s!"Constant not found in solution '{n}'"

    if let .axiomInfo info := info then
      if !(← read).legalAxioms.contains info.name then
        throw s!"Illegal axiom detected: '{n}'"

    if !(← get).checked.contains n then
      modify fun s => { s with worklist := s.worklist.push n }

end Axioms

def checkAxioms (solution : Export.ExportedEnv) (theoremTargets : Array Lean.Name)
    (definitionTargets : Array Lean.Name) (legalAxioms : Array Lean.Name) : Except String Unit := do
  let mut worklist := #[]
  for target in theoremTargets do
    let some solutionConst := solution.constMap[target]?
      | throw s!"Const not found in solution: '{target}'"
    let .thmInfo solutionConst := solutionConst
      | throw s!"Solution constant is not a theorem: '{target}'"
    worklist := worklist.push solutionConst.name

  for target in definitionTargets do
    let some solutionConst := solution.constMap[target]?
      | throw s!"Const not found in solution: '{target}'"
    let .defnInfo solutionConst := solutionConst
      | throw s!"Solution constant is not a definition: '{target}'"
    worklist := worklist.push solutionConst.name

  let legalAxioms := Std.HashSet.ofArray legalAxioms
  Axioms.loop.run { solution, legalAxioms } |>.run' { worklist, checked := {} }

end Comparator
```
