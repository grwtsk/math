# customTacticName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d91d89afda382040cc6bd1b451c38ea7fcca80053b24eeb5acc06a569e3d270d",
  "kind": "def",
  "lexical_name": "customTacticName",
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
  "slug": "customtacticname--d24a0040f1543fccbac91070",
  "source": {
    "blob": "6d1de49262b0e93de41c35059c8524ffb07218fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d24a0040f1543fccbac91070d652b31710fe6d7e4781032000152d98c4a3dc45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d91d89afda382040cc6bd1b451c38ea7fcca80053b24eeb5acc06a569e3d270d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def customTacticName [Monad m] [MonadEnv m] (tac : Name) : m (Option String) := do
  let env ← getEnv
  match env.getModuleIdxFor? tac with
  | some modIdx =>
    match (tacticNameExt.getModuleEntries env modIdx).binSearch (tac, default) (Name.quickLt ·.1 ·.1) with
    | some (_, val) => return some val
    | none => return none
  | none => return tacticNameExt.getState env |>.find? tac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variant592e84e8b0620465d65925eb390066c55921e6250704ac2c802d8c652824f414.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1de49262b0e93de41c35059c8524ffb07218fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
