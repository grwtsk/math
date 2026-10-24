# AffineSpace.asymptoticNhds_le_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce565bd-c1fa-ab24-a6b3-dd5eae8aabcd",
  "kind": "theorem",
  "lexical_name": "AffineSpace.asymptoticNhds_le_cobounded",
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
  "slug": "affinespace-asymptoticnhds-le-cobounded--7771ca9de7cb4b3c0bafdfc6",
  "source": {
    "blob": "c6d3cca76862e8debf7ae8fae84ba2c926f2aa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7771ca9de7cb4b3c0bafdfc67e90883e8c9093ee5aeb21dc6210f3ef857c657d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce565bd-c1fa-ab24-a6b3-dd5eae8aabcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineSpace.asymptoticNhds_le_cobounded {v : V} (hv : v ≠ 0) :
    asymptoticNhds ℝ P v ≤ cobounded P := by
  have ⟨p⟩ : Nonempty P := inferInstance
  rw [← tendsto_id', ← Metric.tendsto_dist_right_atTop_iff p,
    asymptoticNhds_eq_smul_vadd v p, vadd_pure, ← map₂_smul, ← map_prod_eq_map₂, map_map,
    tendsto_map'_iff]
  change Tendsto (fun x : ℝ × V => dist (x.1 • x.2 +ᵥ p) p) (atTop ×ˢ 𝓝 v) atTop
  simp_rw [dist_vadd_left, norm_smul]
  exact Tendsto.atTop_mul_pos (norm_pos_iff.mpr hv)
    (tendsto_norm_atTop_atTop.comp tendsto_id.fst)
    tendsto_snd.norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d3cca76862e8debf7ae8fae84ba2c926f2aa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
