# continuousAt_gauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83fea903-8fd3-4070-3638-ecc29b96f628",
  "kind": "theorem",
  "lexical_name": "continuousAt_gauge",
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
  "slug": "continuousat-gauge--4cf51060edabdc2ca8d98b0c",
  "source": {
    "blob": "415db982bc4a48c22e0df9c86eb1e74e69a417a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 468,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf51060edabdc2ca8d98b0cb670113b48cd509af5d31ced6162c62e0348defd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83fea903-8fd3-4070-3638-ecc29b96f628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_gauge (hc : Convex ℝ s) (hs₀ : s ∈ 𝓝 0) : ContinuousAt (gauge s) x := by
  have ha : Absorbent ℝ s := absorbent_nhds_zero hs₀
  refine (nhds_basis_Icc_pos _).tendsto_right_iff.2 fun ε hε₀ ↦ ?_
  rw [← map_add_left_nhds_zero, eventually_map]
  have : ε • s ∩ -(ε • s) ∈ 𝓝 0 :=
    inter_mem ((set_smul_mem_nhds_zero_iff hε₀.ne').2 hs₀)
      (neg_mem_nhds_zero _ ((set_smul_mem_nhds_zero_iff hε₀.ne').2 hs₀))
  filter_upwards [this] with y hy
  constructor
  · rw [sub_le_iff_le_add]
    calc
      gauge s x = gauge s (x + y + (-y)) := by simp
      _ ≤ gauge s (x + y) + gauge s (-y) := gauge_add_le hc ha _ _
      _ ≤ gauge s (x + y) + ε := by grw [gauge_le_of_mem hε₀.le (mem_neg.1 hy.2)]
  · calc
      gauge s (x + y) ≤ gauge s x + gauge s y := gauge_add_le hc ha _ _
      _ ≤ gauge s x + ε := by grw [gauge_le_of_mem hε₀.le hy.1]

/-- If `s` is a convex neighborhood of the origin in a topological real vector space, then `gauge s`
is continuous. If the ambient space is a normed space, then `gauge s` is Lipschitz continuous, see
`Convex.lipschitz_gauge`. -/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `415db982bc4a48c22e0df9c86eb1e74e69a417a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
