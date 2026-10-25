# mainGoalProc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b9efafb63934876dbc81943c81b447af65e2c88b70f936ab9b5a1892e911e9",
  "kind": "def",
  "lexical_name": "mainGoalProc",
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
  "slug": "maingoalproc--6e2a9c9686fb1a622f86cbda",
  "source": {
    "blob": "0eb142e759bc122524f71dec3fd1c8fb63b9d3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e2a9c9686fb1a622f86cbda99dc69f531070945d9fe25c00888ecf5de7205ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b9efafb63934876dbc81943c81b447af65e2c88b70f936ab9b5a1892e911e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mainGoalProc (cfg : SolveByElimConfig := {}) (proc : MVarId → MetaM (List MVarId)) : SolveByElimConfig :=
  { cfg with
    proc := fun orig goals => match goals with
    | [] => cfg.proc orig []
    | g :: gs => try
        return (← proc g) ++ gs
      catch _ => cfg.proc orig goals }

/-- Create or modify a `Config` which calls `intro` on each goal before applying lemmas. -/
-- Because `SolveByElim` works on each goal in sequence, even though
-- `mainGoalProc` only applies this operation on the main goal,
-- it is applied to every goal before lemmas are applied.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantfed177d2e6fcef69d4487c66511bd3f822b259f133e40de44a73236ba7d5e6b5.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb142e759bc122524f71dec3fd1c8fb63b9d3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
