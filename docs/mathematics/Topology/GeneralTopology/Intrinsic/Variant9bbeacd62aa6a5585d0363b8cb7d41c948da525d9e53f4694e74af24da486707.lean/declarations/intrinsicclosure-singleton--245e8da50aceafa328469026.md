# intrinsicClosure_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3c6768-57e4-4eaa-ae57-47ad07e7ec9d",
  "kind": "theorem",
  "lexical_name": "intrinsicClosure_singleton",
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
  "slug": "intrinsicclosure-singleton--245e8da50aceafa328469026",
  "source": {
    "blob": "5c2e8732d6db4461d667d61ee457dd5d45601116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:245e8da50aceafa3284690261719f3013937e0be226f17b624ecd1660ed40901",
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

Occurrence: `result:5c3c6768-57e4-4eaa-ae57-47ad07e7ec9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicClosure_singleton (x : P) : intrinsicClosure 𝕜 ({x} : Set P) = {x} := by
  simp only [intrinsicClosure, preimage_coe_affineSpan_singleton, closure_univ, image_univ,
    Subtype.range_coe_subtype, mem_affineSpan_singleton, setOf_eq_eq_singleton]

/-!
Note that neither `intrinsicInterior` nor `intrinsicFrontier` is monotone.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2e8732d6db4461d667d61ee457dd5d45601116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
