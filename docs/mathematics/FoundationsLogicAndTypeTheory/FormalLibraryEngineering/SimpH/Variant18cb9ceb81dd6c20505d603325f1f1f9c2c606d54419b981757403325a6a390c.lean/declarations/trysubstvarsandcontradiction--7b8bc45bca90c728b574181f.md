# trySubstVarsAndContradiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36230cf629cfb9ca4e41d6974fe81362970d77e80ba5bae4ffa1b133d683b7e0",
  "kind": "def",
  "lexical_name": "trySubstVarsAndContradiction",
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
  "slug": "trysubstvarsandcontradiction--7b8bc45bca90c728b574181f",
  "source": {
    "blob": "8beacfc459998e040689ba7bb59463c2c8a9379d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b8bc45bca90c728b574181fbe078cd9330b8fa14c27d3e8248d9715aa460dc0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36230cf629cfb9ca4e41d6974fe81362970d77e80ba5bae4ffa1b133d683b7e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def trySubstVarsAndContradiction (mvarId : MVarId) (forbidden : FVarIdSet := {}) : MetaM Bool :=
  commitWhen do
    let mvarId ← substVars mvarId
    match (← injections mvarId (forbidden := forbidden)) with
    | .solved => return true -- closed goal
    | .subgoal mvarId' _ forbidden =>
      if mvarId' == mvarId then
        contradiction mvarId
      else
        trySubstVarsAndContradiction mvarId' forbidden

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpH/Variant18cb9ceb81dd6c20505d603325f1f1f9c2c606d54419b981757403325a6a390c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8beacfc459998e040689ba7bb59463c2c8a9379d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
