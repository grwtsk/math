# decompHomeomorph_symm_contLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdfadf4530dd2e13b784785995b39594367aaf8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59c1cc6e-ba5a-e73d-8ffd-748201ef1279",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41f9ffb3-8a9e-0f80-35b4-c4bb1130f37d",
  "kind": "theorem",
  "lexical_name": "decompHomeomorph_symm_contLinear",
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
  "slug": "decomphomeomorph-symm-contlinear--e5fed21330db79fd57ed9d62",
  "source": {
    "blob": "cdfadf4530dd2e13b784785995b39594367aaf8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fed21330db79fd57ed9d62e505e84a51e19e3af6bb9815e2b56c6f41658208",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f9ffb3-8a9e-0f80-35b4-c4bb1130f37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decompHomeomorph_symm_contLinear (p : Q × (V →L[R] W)) :
    ((decompHomeomorph R V Q).symm p).contLinear = p.2 :=
  decompEquiv_symm_contLinear ..

end LinearDomain

section Linear

variable (R V W) [IsTopologicalAddGroup W] [ContinuousConstSMul R W]

/-- The space of continuous affine maps between topological vector spaces is isomorphic (as a
topological vector space) to the product of the codomain with the space of continuous linear maps,
by taking the value of the affine map at `(0 : V)` and the linear part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant71c511026f072d68b0474ec542cdfea4a034255ad6f744fd4b9e4af105481f7a.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdfadf4530dd2e13b784785995b39594367aaf8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
