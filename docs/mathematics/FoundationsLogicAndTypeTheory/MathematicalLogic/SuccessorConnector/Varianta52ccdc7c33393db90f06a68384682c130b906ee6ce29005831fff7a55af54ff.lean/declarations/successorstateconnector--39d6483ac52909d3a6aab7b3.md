# SuccessorStateConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac2c8ab0cd821f26ef7c845c682ef5352f794f8933ac71c540b6f0d1a7d55795",
  "kind": "structure",
  "lexical_name": "SuccessorStateConnector",
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
  "slug": "successorstateconnector--39d6483ac52909d3a6aab7b3",
  "source": {
    "blob": "83936d578271556edd131ae7219e5fa0917d6dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Varianta52ccdc7c33393db90f06a68384682c130b906ee6ce29005831fff7a55af54ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39d6483ac52909d3a6aab7b302f2c535b1bda89ef33ce631d379d75882da6d01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Varianta52ccdc7c33393db90f06a68384682c130b906ee6ce29005831fff7a55af54ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac2c8ab0cd821f26ef7c845c682ef5352f794f8933ac71c540b6f0d1a7d55795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SuccessorStateConnector
    (Predecessor Successor : Type u) where
  embed : Predecessor → Successor
  project : Successor → Predecessor
  retract :
    ∀ state,
      project (embed state) = state
  predecessorDistance : Predecessor → Predecessor → Nat
  successorDistance : Successor → Successor → Nat
  metricNonexpansive :
    ∀ left right,
      predecessorDistance (project left) (project right) ≤
        successorDistance left right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Varianta52ccdc7c33393db90f06a68384682c130b906ee6ce29005831fff7a55af54ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Varianta52ccdc7c33393db90f06a68384682c130b906ee6ce29005831fff7a55af54ff.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83936d578271556edd131ae7219e5fa0917d6dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
