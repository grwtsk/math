# isOpen_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9b4906c-d0c5-4507-64e6-1c84313af883",
  "kind": "theorem",
  "lexical_name": "isOpen_ball",
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
  "slug": "isopen-ball--b2801212db2ac599e6b4682b",
  "source": {
    "blob": "eb8d9ab84d2eb850d6bf93c25f1ec28cca5d2a96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2801212db2ac599e6b4682b5cfdeee8a80d320be1418124331d7f04e1806722",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b4906c-d0c5-4507-64e6-1c84313af883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem isOpen_ball {x : E} {r : ℝ} : IsOpen (ball x r) :=
  Metric.isOpen_ball.preimage toEuclidean.continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EuclideanDist/Variant0ac2ec131dffdcecaeefd2c6a2d9ef8a957dd2e2eee48de5f24ef056e3f26f84.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb8d9ab84d2eb850d6bf93c25f1ec28cca5d2a96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
