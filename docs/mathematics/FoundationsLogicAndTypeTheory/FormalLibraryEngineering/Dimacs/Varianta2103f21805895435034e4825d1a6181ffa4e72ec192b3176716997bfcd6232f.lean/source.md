# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dimacs.Varianta2103f21805895435034e4825d1a6181ffa4e72ec192b3176716997bfcd6232f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49eed3357bbca0804fab21875bdd5f8ad0fe4baa` · SHA-256 `d0ae0650ed701e8f9ca750aa54fbd300759ff9d4ec7a6b43a155df726e8710de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DimacsState.Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DimacsState.Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/CNF/Dimacs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.CNF.RelabelFin


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DimacsState.Variantc806aea55d81b274e5b9f69799f9094b7aef691e8b3e9aabbb5d28ffafa9d878

public section

namespace Std
namespace Sat

namespace CNF

private structure DimacsState where
  numClauses : Nat := 0
  maxLit : Nat := 0

private abbrev DimacsM := StateM DimacsState

namespace DimacsM

@[inline]
private def handleLit (lit : Literal Nat) : DimacsM Unit := do
  modify fun s => { s with maxLit := Nat.max s.maxLit lit.1 }

@[inline]
private def incrementClauses : DimacsM Unit := do
  modify fun s => { s with numClauses := s.numClauses + 1 }

end DimacsM

/--
This function turns `cnf` into a DIMACS `String`.

Note: This function will add `1` to all literal identifiers by default. This is because `0` is an
illegal identifier in the DIMACS format and we can avoid producing invalid DIMACs like this.
-/
def dimacs (cnf : CNF Nat) : String :=
  let (str, state) := go cnf |>.run {}
  s!"p cnf {state.maxLit + 1} {state.numClauses}\n" ++ str
where
  go (cnf : CNF Nat) : DimacsM String := do
    let foldLit acc lit := do
      DimacsM.handleLit lit
      let litStr := if lit.2 then s!"{lit.1 + 1}" else s!"-{lit.1 + 1}"
      return acc ++ litStr |>.push ' '
    let foldClause acc clause := do
      DimacsM.incrementClauses
      return (← clause.foldlM (init := acc) foldLit) |>.push '0' |>.push '\n'
    cnf.clauses.foldlM (init := "") foldClause

end CNF

end Sat
end Std
```
