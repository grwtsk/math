# tendsto_valuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1092,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c284cc1-9ef0-f98d-1c39-3a9ee545b75d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4734d242-6094-0dc8-44e9-76f59301516b",
  "kind": "theorem",
  "lexical_name": "tendsto_valuation",
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
  "slug": "tendsto-valuation--599ee5c6e88a4745b9e4540f",
  "source": {
    "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1123,
    "line": 1092,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:599ee5c6e88a4745b9e4540fa9c2cb38ba4b7d9c7a1a505ef93a439f213e9007",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4734d242-6094-0dc8-44e9-76f59301516b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1092–1123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_valuation (a : (idealX K).adicCompletion K⟮X⟯) :
    Tendsto (Valued.v : K⟮X⟯ → ℤᵐ⁰) (comap (↑) (𝓝 a)) (𝓝 (Valued.v a : ℤᵐ⁰)) := by
  have := Valued.is_topological_valuation (R := (idealX K).adicCompletion K⟮X⟯)
  by_cases ha : a = 0
  · rw [tendsto_def]
    intro S hS
    rw [ha, map_zero, WithZeroTopology.hasBasis_nhds_zero.1 S] at hS
    obtain ⟨γ, γ_ne_zero, γ_le⟩ := hS
    use {t | Valued.v t < γ}
    constructor
    · rw [ha, this]
      obtain ⟨x, hx⟩ := valuedAdicCompletion_surjective K⟮X⟯ (idealX K) γ
      use Units.mk0 (Valued.v.restrict x) (by
        simp only [Valuation.restrict_def, ne_eq, map_eq_zero]
        intro h
        simp only [h, map_zero] at hx
        tauto)
      simp [Units.val_mk0, Valuation.restrict_lt_iff, hx]
    · refine Set.Subset.trans (fun a _ ↦ ?_) (Set.preimage_mono γ_le)
      rw [Set.mem_preimage, Set.mem_Iio, ← Valued.valuedCompletion_apply a]
      simp_all
  · rw [WithZeroTopology.tendsto_of_ne_zero ((Valuation.ne_zero_iff Valued.v).mpr ha),
      Filter.eventually_comap, Filter.Eventually, Valued.mem_nhds]
    use Units.mk0 (Valued.v.restrict a) (by simp [Valuation.restrict_def, ha])
    simp only [Units.val_mk0, v_def, Set.ofPred_subset_ofPred]
    rintro y val_y b rfl
    rw [← valuedAdicCompletion_eq_valuation']
    exact (Valuation.restrict_inj _).mp <| Valuation.map_eq_of_sub_lt Valued.v.restrict val_y

set_option backward.isDefEq.respectTransparency false in
/-- The extension of the `X`-adic valuation from `K⟮X⟯` up to its abstract completion coincides,
modulo the isomorphism with `K⸨X⸩`, with the `X`-adic valuation on `K⸨X⸩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean#L1092).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ed25b74e7312f234de3998a8e927b9103b7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
