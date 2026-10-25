# SuccessorStateConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a87926db1827ee338feae2dd978d3f2596fd4ce53270021da1148be91d5e5b93",
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
  "slug": "successorstateconnector--21fcce87e8d95d7e29cde427",
  "source": {
    "blob": "3c1ab5cd2dbfed535f53ade8c6e0accd23bbaad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21fcce87e8d95d7e29cde427b8d95b70dadbe771c75b48ed84fed82ea3952413",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a87926db1827ee338feae2dd978d3f2596fd4ce53270021da1148be91d5e5b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–24.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SuccessorConnector/Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1ab5cd2dbfed535f53ade8c6e0accd23bbaad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
