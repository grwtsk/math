# PredicateDescentObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8055dae402b650ce3489121656b4070a49326d9f85387da4387545192f604aba",
  "kind": "structure",
  "lexical_name": "PredicateDescentObstruction",
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
  "slug": "predicatedescentobstruction--9343a2921791892e39af246e",
  "source": {
    "blob": "d2e83b8538f6737214dfd5f3ae8d11f83a9f9ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9343a2921791892e39af246e40582e63f58d0420ab29c361ff7dfbaa66f6888f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8055dae402b650ce3489121656b4070a49326d9f85387da4387545192f604aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PredicateDescentObstruction {X Q : Type*}
    (carrier : X → Q) (target : X → Prop) where
  /-- First state in the collision. -/
  left : X
  /-- Second state in the collision. -/
  right : X
  /-- The retained information agrees. -/
  sameCarrier : carrier left = carrier right
  /-- Logical equivalence of the target truth values fails. -/
  targetSeparated : ¬(target left ↔ target right)

/-- A witnessed collision prevents function-valued descent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant191b6ccc3302b62e4e265568c28f5a0725b42914a3c1fd89b90fae486a056fef.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e83b8538f6737214dfd5f3ae8d11f83a9f9ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
