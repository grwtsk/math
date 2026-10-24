# intrinsicClosure_diff_intrinsicFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80bc67c6-fac4-d76e-93e5-0f9d4da3ee90",
  "kind": "theorem",
  "lexical_name": "intrinsicClosure_diff_intrinsicFrontier",
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
  "slug": "intrinsicclosure-diff-intrinsicfrontier--f0d141cd1ed51525d2e781fd",
  "source": {
    "blob": "5c2e8732d6db4461d667d61ee457dd5d45601116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d141cd1ed51525d2e781fd6e69e5ce77d9bae5fc112de63c030471db2a35b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80bc67c6-fac4-d76e-93e5-0f9d4da3ee90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicClosure_diff_intrinsicFrontier (s : Set P) :
    intrinsicClosure 𝕜 s \ intrinsicFrontier 𝕜 s = intrinsicInterior 𝕜 s :=
  (image_diff Subtype.coe_injective _ _).symm.trans <| by
    rw [closure_diff_frontier, intrinsicInterior]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2e8732d6db4461d667d61ee457dd5d45601116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
