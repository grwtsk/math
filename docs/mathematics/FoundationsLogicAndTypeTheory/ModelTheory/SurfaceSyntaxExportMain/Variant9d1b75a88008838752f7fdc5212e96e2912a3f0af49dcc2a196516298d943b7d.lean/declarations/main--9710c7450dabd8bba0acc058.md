# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10e6047175b4e968a838e480a4eb57ed3147567580100b3e8a359dd6dcc457c5",
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
  "slug": "main--9710c7450dabd8bba0acc058",
  "source": {
    "blob": "c256ab903fb1f0009cb7c5f96b3604f4a9f68199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9710c7450dabd8bba0acc058d912583952a01d52163f14e9f2ad0c0e706e9912",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10e6047175b4e968a838e480a4eb57ed3147567580100b3e8a359dd6dcc457c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  if (← IO.getEnv workerEnvironmentKey) == some "1" then
    SurfaceSyntaxExport.main args
  else
    -- A native Lake executable does not carry the same live elaborator
    -- environment as the Lean command-line frontend. Re-enter this exact Lean
    -- source through `lean --run`, with inherited stdout/stderr, so canonical
    -- command snapshots come from the real frontend rather than a weakened
    -- handwritten parser. The finite process bounds fail closed.
    let lake := (← IO.getEnv "LAKE").getD "lake"
    let workerArgs :=
      #["env", "lean", "--memory=8192", "--timeout=8000000", "--threads=1", "--run",
        "tools/SurfaceSyntaxExportMain.lean"] ++ args.toArray
    let child ← IO.Process.spawn {
      cmd := lake
      args := workerArgs
      stdin := .null
      stdout := .inherit
      stderr := .inherit
      env := #[(workerEnvironmentKey, some "1")] }
    child.wait
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant9d1b75a88008838752f7fdc5212e96e2912a3f0af49dcc2a196516298d943b7d.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c256ab903fb1f0009cb7c5f96b3604f4a9f68199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
