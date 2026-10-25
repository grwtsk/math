# splitScc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82efaa19fb1152e8380aca0938f90e63dd827d227aba86939ac06e675dbdf723",
  "kind": "def",
  "lexical_name": "splitScc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "splitscc--bf563d78af5bacac7105c8cf",
  "source": {
    "blob": "d5fb4410ffb24a2260d13af7d0273661867b83b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf563d78af5bacac7105c8cfa0dd6d0ec8bd2032f2457dc94eb56f92e83d6d64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82efaa19fb1152e8380aca0938f90e63dd827d227aba86939ac06e675dbdf723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def splitScc (scc : Array (Decl pu)) : CompilerM (Array (Array (Decl pu))) := do
  if scc.size == 1 then
    return #[scc]
  let declMap := Std.HashMap.ofArray <| scc.map fun decl => (decl.name, decl)
  let callers := Std.HashMap.ofArray <| ← scc.mapM fun decl => do
    let calls ← SplitScc.findSccCalls declMap decl
    return (decl.name, calls.toList)
  let newSccs := Lean.SCC.scc (scc.toList.map (·.name)) (callers.getD · [])
  trace[Compiler.splitSCC] m!"Split SCC into {newSccs}"
  return newSccs.toArray.map (fun scc => scc.toArray.map declMap.get!)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variantd507d87d6c336e1092b44a623b795ac2295d92f29a620b089b5d0bca789b4fc6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fb4410ffb24a2260d13af7d0273661867b83b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
