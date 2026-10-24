# isConvexSet_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49b39eb-0eab-d4b1-c45c-9ed5a09f60c3",
  "kind": "lemma",
  "lexical_name": "isConvexSet_coe",
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
  "slug": "isconvexset-coe--1ce3ede329b8c6214aad5370",
  "source": {
    "blob": "e5e7afb83580a4db7ce93f2c12b64079a967c2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce3ede329b8c6214aad537076e6d21e0c0dee08ff135641fd9490774c62fefa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49b39eb-0eab-d4b1-c45c-9ed5a09f60c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isConvexSet_coe (S : F) : IsConvexSet R (S : Set M) := by
  refine .of_sConvexComb_mem fun w hw ↦ ?_
  rw [sConvexComb_eq_sum]
  exact AddSubmonoidClass.finsuppSum_mem _ _ _ fun m hm ↦ SMulMemClass.smul_mem _ <| hw <| by simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant1fcd7dfe7ea26bcb09a5218674c5552d3d707634a4f365274225905bf1a04912.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e7afb83580a4db7ce93f2c12b64079a967c2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
