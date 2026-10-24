# Subgroup.dense_of_infDist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4506f11-3dcc-7b8b-3283-fdfd67a28ab3",
  "kind": "lemma",
  "lexical_name": "Subgroup.dense_of_infDist_le",
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
  "slug": "subgroup-dense-of-infdist-le--dfdb246b43270d9865080190",
  "source": {
    "blob": "d95372d832e2da4d287a43f8323beff41be5a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfdb246b43270d9865080190f7d23335e7c217e347e7e77bdf02874362b39300",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4506f11-3dcc-7b8b-3283-fdfd67a28ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.dense_of_infDist_le {G : Type*} [SeminormedGroup G]
    (H : Subgroup G) (ε : ℝ) (h1 : 0 < ε) (h2 : ε < 1)
    (h : ∀ g : G, infDist g H ≤ ε * ‖g‖) : Dense (H : Set G) := by
  simp only [dense_iff_closure_eq, Set.eq_univ_iff_forall, OneMemClass.coe_nonempty,
    mem_closure_iff_infDist_zero]
  intro g
  by_contra hg
  obtain ⟨y, hy, _⟩ : ∃ y ∈ H, dist g y < ε⁻¹ * infDist g H :=
    (infDist_lt_iff ⟨1, H.one_mem⟩).mp ((lt_mul_iff_one_lt_left (lt_of_le_of_ne infDist_nonneg
      (Ne.symm hg))).mpr ((one_lt_inv₀ h1).mpr h2))
  obtain ⟨z, hz, _⟩ : ∃ z ∈ H, dist (y⁻¹ * g) z < infDist g H := by
    refine (infDist_lt_iff ⟨1, H.one_mem⟩).mp (lt_of_le_of_lt (h (y⁻¹ * g)) ?_)
    calc ε * ‖y⁻¹ * g‖
      _ = ε * dist g y := by rw [dist_eq_norm_inv_mul']
      _ < ε * (ε⁻¹ * infDist g H) := by gcongr
      _ = infDist g (H : Set G) := by rw [← mul_assoc, mul_inv_cancel₀ h1.ne', one_mul]
  have : dist g (y * z) < infDist g (H : Set G) := by
    rwa [dist_eq_norm_inv_mul, ← mul_assoc, ← inv_inv (g⁻¹ * y),
      ← SeminormedGroup.dist_eq (g⁻¹ * y)⁻¹ z, mul_inv_rev, inv_inv]
  exact absurd this (not_lt.mpr (infDist_le_dist_of_mem (mul_mem hy hz)))

end Dense
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lemmas/Variant7be4803004b955c9fcd15cba2e677cb831df6847318ae7fe144764fa82cb34d9.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95372d832e2da4d287a43f8323beff41be5a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
