# decompContinuousLinearEquiv_symm_contLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98b90ded-f38a-efcc-bc96-d9b914fc644e",
  "kind": "theorem",
  "lexical_name": "decompContinuousLinearEquiv_symm_contLinear",
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
  "slug": "decompcontinuouslinearequiv-symm-contlinear--88b0c1038fef55f8be374bbc",
  "source": {
    "blob": "94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b0c1038fef55f8be374bbcbc965c9ed59bf94cf6753bca97e764025376b824",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98b90ded-f38a-efcc-bc96-d9b914fc644e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decompContinuousLinearEquiv_symm_contLinear (p : W × (V →L[R] W)) :
    ((decompContinuousLinearEquiv R V W).symm p).contLinear = p.2 :=
  decompEquiv_symm_contLinear ..

end Linear

section LinearDomain

variable (R V Q) [IsTopologicalAddGroup W] [ContinuousConstSMul R W] [IsTopologicalAddTorsor Q]

/-- The space of continuous affine maps from a topological vector space to a topological affine
space is isomorphic (as a topological affine space) to the product of the codomain with the space of
continuous linear maps, by taking the value of the affine map at `(0 : V)` and the linear part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
