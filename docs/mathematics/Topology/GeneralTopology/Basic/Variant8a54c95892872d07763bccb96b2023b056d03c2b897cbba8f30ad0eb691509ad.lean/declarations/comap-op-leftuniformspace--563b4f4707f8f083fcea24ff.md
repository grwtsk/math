# comap_op_leftUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de432bfe-ff32-6729-441c-84a06ade314c",
  "kind": "lemma",
  "lexical_name": "comap_op_leftUniformSpace",
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
  "slug": "comap-op-leftuniformspace--563b4f4707f8f083fcea24ff",
  "source": {
    "blob": "3c0174bdd65ba9c013d8831bee9924a83451ac6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:563b4f4707f8f083fcea24ffafa798334401b96021ed03cc1ba21d5a0e9ea5f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de432bfe-ff32-6729-441c-84a06ade314c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma comap_op_leftUniformSpace :
    (IsTopologicalGroup.leftUniformSpace Gᵐᵒᵖ).comap MulOpposite.op =
      IsTopologicalGroup.rightUniformSpace G := by
  ext : 1
  change comap (fun (x : G × G) ↦ (MulOpposite.op x.1, MulOpposite.op x.2))
      (comap (fun p : Gᵐᵒᵖ × Gᵐᵒᵖ => p.1⁻¹ * p.2) (𝓝 1))
    = comap (fun p : G × G => p.2 * p.1⁻¹) (𝓝 1)
  have : 𝓝 (1 : G) = comap (MulOpposite.opHomeomorph) (𝓝 (1 : Gᵐᵒᵖ)) := by
    simp [Homeomorph.comap_nhds_eq]
  simp_rw [comap_comap, this, comap_comap]
  rfl

/-- The equivalence between a topological group `G` and `Gᵐᵒᵖ` as a uniform equivalence when `G`
is equipped with the right uniformity and `Gᵐᵒᵖ` with the left uniformity. -/
@[to_additive /-- The equivalence between an additive topological group `G` and `Gᵐᵒᵖ` as a uniform
equivalence when `G` is equipped with the right uniformity and `Gᵐᵒᵖ` with the left uniformity. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c0174bdd65ba9c013d8831bee9924a83451ac6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
