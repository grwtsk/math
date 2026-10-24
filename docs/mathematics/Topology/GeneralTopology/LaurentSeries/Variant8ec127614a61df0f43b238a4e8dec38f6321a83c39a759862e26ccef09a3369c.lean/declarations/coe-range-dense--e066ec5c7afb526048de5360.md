# coe_range_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c36b577c-3308-4d3a-4ff1-2e49fb5113fb",
  "kind": "theorem",
  "lexical_name": "coe_range_dense",
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
  "slug": "coe-range-dense--e066ec5c7afb526048de5360",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 966,
    "line": 946,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e066ec5c7afb526048de5360ebfd4f0f5ef5cf798aab05f5e7a6cc7f6adfd7b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c36b577c-3308-4d3a-4ff1-2e49fb5113fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 946–966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_range_dense : DenseRange ((↑) : RatFunc K → K⸨X⸩) := by
  rw [denseRange_iff_closure_range]
  ext f
  simp only [UniformSpace.mem_closure_iff_symm_ball, Set.mem_univ, iff_true, Set.Nonempty,
    Set.mem_inter_iff, Set.mem_range, Set.mem_setOf_eq, exists_exists_eq_and]
  intro V hV h_symm
  rw [uniformity_eq_comap_neg_add_nhds_zero_swapped] at hV
  obtain ⟨T, hT₀, hT₁⟩ := hV
  obtain ⟨γ, hγ⟩ := Valued.mem_nhds_zero.mp hT₀
  obtain ⟨P, _⟩ := exists_ratFunc_val_lt f γ
  use P
  apply hT₁
  apply hγ
  simpa only [add_comm, ← sub_eq_add_neg, gt_iff_lt, Set.mem_setOf_eq]

end Dense

section Comparison

open RatFunc AbstractCompletion IsDedekindDomain.HeightOneSpectrum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L946).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
