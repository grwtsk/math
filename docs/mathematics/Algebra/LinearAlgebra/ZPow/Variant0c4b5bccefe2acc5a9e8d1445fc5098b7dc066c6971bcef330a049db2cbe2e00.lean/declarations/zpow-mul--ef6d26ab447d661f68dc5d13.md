# zpow_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb3fb13c-d4c4-e90c-2a59-ef925dc5ed9e",
  "kind": "theorem",
  "lexical_name": "zpow_mul'",
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
  "slug": "zpow-mul--ef6d26ab447d661f68dc5d13",
  "source": {
    "blob": "5f7fb81ca320faae83a26696bb67f589b4efa9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 287,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef6d26ab447d661f68dc5d1399b4daa5a1107dd4e2a9af191ecb5ac19e845b7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb3fb13c-d4c4-e90c-2a59-ef925dc5ed9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_mul' (A : M) (h : IsUnit A.det) (m n : ℤ) : A ^ (m * n) = (A ^ n) ^ m := by
  rw [mul_comm, zpow_mul _ h]
#align matrix.zpow_mul' Matrix.zpow_mul'


@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZPow/Variant0c4b5bccefe2acc5a9e8d1445fc5098b7dc066c6971bcef330a049db2cbe2e00.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7fb81ca320faae83a26696bb67f589b4efa9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
