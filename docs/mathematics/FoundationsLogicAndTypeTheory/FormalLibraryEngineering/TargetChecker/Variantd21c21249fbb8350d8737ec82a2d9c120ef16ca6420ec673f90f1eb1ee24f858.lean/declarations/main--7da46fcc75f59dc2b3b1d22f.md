# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9d3d41cb3402bf7ddd6689eec038eef482293313a8c9c240c4082aa30d30b38",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--7da46fcc75f59dc2b3b1d22f",
  "source": {
    "blob": "126dfaf8fe844dc2b7ecf758ce5d8bbee975f04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7da46fcc75f59dc2b3b1d22fd586d4d048a7a51e1ee2149eec79c8fb6543b7c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9d3d41cb3402bf7ddd6689eec038eef482293313a8c9c240c4082aa30d30b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  unless args.length == 1 do throw <| IO.userError "usage: TargetChecker.lean INPUT_PATH"
  let input ← IO.ofExcept <| Json.parse (← IO.FS.readFile args[0]!)
  let root ← IO.ofExcept <| (← IO.ofExcept (input.getObjVal? "root_module")).getStr?
  initSearchPath (← findSysroot)
  enableInitializersExecution
  let env ← importModules #[{module := root.toName, importAll := true}] {}
    (trustLevel := 0) (loadExts := true) (level := .private)
  let result ← IO.ofExcept <| StateTargetChecker.check (env.setExporting false) input
  (← IO.getStdout).putStrLn result.compress
  return 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetChecker/Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `126dfaf8fe844dc2b7ecf758ce5d8bbee975f04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
