# GoalLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:182b52edf80e68ca6a963463c32e3ba9f5dba36fa2a5464c0e47a2bc09506b8f",
  "kind": "inductive",
  "lexical_name": "GoalLocation",
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
  "slug": "goallocation--2c4abefa55ae8783623a04c0",
  "source": {
    "blob": "5c5b6037ddd92f55b403b27485e971acda2b900c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 200,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c4abefa55ae8783623a04c0d2b121701993aa35952c86dd67d729323562fd72",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:182b52edf80e68ca6a963463c32e3ba9f5dba36fa2a5464c0e47a2bc09506b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GoalLocation where
  /-- One of the hypotheses. -/
  | hyp : FVarId → GoalLocation
  /-- A subexpression of the type of one of the hypotheses. -/
  | hypType : FVarId → SubExpr.Pos → GoalLocation
  /-- A subexpression of the value of one of the let-bound hypotheses. -/
  | hypValue : FVarId → SubExpr.Pos → GoalLocation
  /-- A subexpression of the goal type. -/
  | target : SubExpr.Pos → GoalLocation
  deriving FromJson, ToJson

/-- A location within a goal state. It identifies a specific goal together with a `GoalLocation`
within it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SubExpr/Variant8cec7d9b15408288c61115c383eb66eb2383934adea7b3e6b043ab01771bf323.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5b6037ddd92f55b403b27485e971acda2b900c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
