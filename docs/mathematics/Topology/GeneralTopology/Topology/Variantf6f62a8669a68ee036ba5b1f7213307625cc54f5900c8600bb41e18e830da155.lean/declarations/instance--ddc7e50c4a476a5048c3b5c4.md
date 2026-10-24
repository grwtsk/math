# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54f73a9456e469ff84af3fe02ad3bc1891db1ac22a620f523a3d08fe4b9d721c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ddc7e50c4a476a5048c3b5c4",
  "source": {
    "blob": "94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddc7e50c4a476a5048c3b5c4ecf7aa4d941abab09828534f53c30680c750dfc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54f73a9456e469ff84af3fe02ad3bc1891db1ac22a620f523a3d08fe4b9d721c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [ContinuousSMul R W] : ContinuousSMul R (P →ᴬ[R] W) where
  continuous_smul :=
    continuous_rng (by simp_rw [coe_smul]; fun_prop) (by simp_rw [smul_contLinear]; fun_prop)

end LinearCodomain

section Linear

variable [IsTopologicalAddGroup V] [ContinuousSMul R V] [IsTopologicalAddGroup W]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf6f62a8669a68ee036ba5b1f7213307625cc54f5900c8600bb41e18e830da155.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fd9986cf925b7f1fdba557d6c47d2ba8e3f27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
