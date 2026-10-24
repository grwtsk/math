# inner_vsub_vsub_of_dist_eq_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62a54fe1-dbfe-c608-6e10-10295a723303",
  "kind": "theorem",
  "lexical_name": "inner_vsub_vsub_of_dist_eq_of_dist_eq",
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
  "slug": "inner-vsub-vsub-of-dist-eq-of-dist-eq--70c43ed878d3d4de49283bf2",
  "source": {
    "blob": "fddeb8958b65578f4abf112a206f09df8038b690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c43ed878d3d4de49283bf2a6b35c2e39462a9762d40c20ab9854263450bb5a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62a54fe1-dbfe-c608-6e10-10295a723303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_vsub_vsub_of_dist_eq_of_dist_eq {c₁ c₂ p₁ p₂ : P} (hc₁ : dist p₁ c₁ = dist p₂ c₁)
    (hc₂ : dist p₁ c₂ = dist p₂ c₂) : ⟪c₂ -ᵥ c₁, p₂ -ᵥ p₁⟫ = 0 := by
  rw [← Submodule.mem_orthogonal_singleton_iff_inner_left, ← direction_perpBisector]
  apply vsub_mem_direction <;> rwa [mem_perpBisector_iff_dist_eq']

end EuclideanGeometry

variable {V' P' : Type*} [NormedAddCommGroup V'] [InnerProductSpace ℝ V'] [MetricSpace P']
variable [NormedAddTorsor V' P']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variantf113c2dfc5c4c3cd289ce6b3a5dee3795ea166fd8b0094df074c95cf739c4d88.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddeb8958b65578f4abf112a206f09df8038b690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
