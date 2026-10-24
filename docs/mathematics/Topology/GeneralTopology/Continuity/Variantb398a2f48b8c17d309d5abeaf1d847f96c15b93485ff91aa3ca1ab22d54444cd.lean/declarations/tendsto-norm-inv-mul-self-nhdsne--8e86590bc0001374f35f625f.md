# tendsto_norm_inv_mul_self_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a4b573a-da1c-8a1e-5536-d228963d70a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01f78fc1-b742-1b97-cfa0-b757ddf61be1",
  "kind": "theorem",
  "lexical_name": "tendsto_norm_inv_mul_self_nhdsNE",
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
  "slug": "tendsto-norm-inv-mul-self-nhdsne--8e86590bc0001374f35f625f",
  "source": {
    "blob": "12b3d01f92ad1e110ce222fe1c8031eb3331ef8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 397,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e86590bc0001374f35f625f7f72ce30faafd7097ec1bcb9095e3fedd2253402",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f78fc1-b742-1b97-cfa0-b757ddf61be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_norm_inv_mul_self_nhdsNE (a : E) :
    Tendsto (fun x => ‖x⁻¹ * a‖) (𝓝[≠] a) (𝓝[>] 0) := by
  apply (tendsto_norm_inv_mul_self a).inf
  apply tendsto_principal_principal.2 (fun _x hx => norm_pos_iff'.2 ?_)
  simpa [inv_mul_eq_one] using hx

variable (E)

/-- In a normed group, the pullback under the norm of `𝓝[>] 0` is the punctured neighborhood
of `1`. -/
@[to_additive comap_norm_nhdsGT_zero
/-- In a normed additive group, the pullback under the norm of `𝓝[>] 0` is the punctured
neighborhood of `0`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantb398a2f48b8c17d309d5abeaf1d847f96c15b93485ff91aa3ca1ab22d54444cd.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b3d01f92ad1e110ce222fe1c8031eb3331ef8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
