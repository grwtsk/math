# ensureToFieldDefEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bff91705bb096f0c0ff0b25469c9d202b873526990ac8c3e2f0d05a67078fe61",
  "kind": "def",
  "lexical_name": "ensureToFieldDefEq",
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
  "slug": "ensuretofielddefeq--2b057a8ddb1a68e99ef1d9fa",
  "source": {
    "blob": "74fb054106fbb409e5a283857a1079db0381f813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 138,
    "path": "GRWTSK/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b057a8ddb1a68e99ef1d9fa706e02688d1577e34b17f6359b8115670b3c057b",
  "verification": {
    "reference": "docs/verification/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bff91705bb096f0c0ff0b25469c9d202b873526990ac8c3e2f0d05a67078fe61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ensureToFieldDefEq (parentInst : Expr) (inst : Expr) (toFieldName : Name) (u : Level) (type : Expr) : GoalM Unit := do
  let toField := mkApp2 (mkConst toFieldName [u]) type inst
  ensureDefEq parentInst toField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fb054106fbb409e5a283857a1079db0381f813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
