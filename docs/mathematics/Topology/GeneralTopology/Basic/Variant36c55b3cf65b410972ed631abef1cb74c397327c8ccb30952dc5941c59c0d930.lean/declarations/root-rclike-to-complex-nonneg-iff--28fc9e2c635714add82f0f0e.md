# _root_.RCLike.to_complex_nonneg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6bded33-9d2e-c3ef-0330-b1d0bf955a84",
  "kind": "theorem",
  "lexical_name": "_root_.RCLike.to_complex_nonneg_iff",
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
  "slug": "root-rclike-to-complex-nonneg-iff--28fc9e2c635714add82f0f0e",
  "source": {
    "blob": "706e8d34ac3d40b14fcf7246d953fd6964408261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 405,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fc9e2c635714add82f0f0e87ea64ac7d6317fcf92b2a537e2bcecd98c49bd3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6bded33-9d2e-c3ef-0330-b1d0bf955a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem _root_.RCLike.to_complex_nonneg_iff {𝕜 : Type*} [RCLike 𝕜] {a : 𝕜} :
    0 ≤ RCLike.re a + RCLike.im a * Complex.I ↔ 0 ≤ a := RCLike.map_nonneg_iff I_im

/-- The natural `ℝ`-linear isometry equivalence between `𝕜` satisfying `RCLike 𝕜` and `ℂ` when
`RCLike.im RCLike.I = 1`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant36c55b3cf65b410972ed631abef1cb74c397327c8ccb30952dc5941c59c0d930.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706e8d34ac3d40b14fcf7246d953fd6964408261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
