# uniformity_eq_comap_inv_mul_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d8a7c3b-1c8a-7267-8a73-a51c4719e526",
  "kind": "theorem",
  "lexical_name": "uniformity_eq_comap_inv_mul_nhds_one",
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
  "slug": "uniformity-eq-comap-inv-mul-nhds-one--9f57c3d8a72a3dae9a4bcf23",
  "source": {
    "blob": "9806d296e7fa4c77a4cb143734ab3e4a722b7f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 322,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f57c3d8a72a3dae9a4bcf230f9a8a5e405003364f1cae7847d0afbadd1266db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8a7c3b-1c8a-7267-8a73-a51c4719e526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_eq_comap_inv_mul_nhds_one :
    𝓤 α = comap (fun x : α × α => x.1⁻¹ * x.2) (𝓝 (1 : α)) := by
  rw [← comap_uniformity_mulOpposite, uniformity_eq_comap_nhds_one, ← op_one, ← comap_unop_nhds,
    comap_comap, comap_comap]
  simp [(· ∘ ·)]
#align uniformity_eq_comap_inv_mul_nhds_one uniformity_eq_comap_inv_mul_nhds_one
#align uniformity_eq_comap_neg_add_nhds_zero uniformity_eq_comap_neg_add_nhds_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9806d296e7fa4c77a4cb143734ab3e4a722b7f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
