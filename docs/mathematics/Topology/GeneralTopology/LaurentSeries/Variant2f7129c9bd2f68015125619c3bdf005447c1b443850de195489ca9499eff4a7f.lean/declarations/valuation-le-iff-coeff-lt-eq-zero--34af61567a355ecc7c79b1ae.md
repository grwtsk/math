# valuation_le_iff_coeff_lt_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77bca2d5-59f4-84fc-7db8-41a3de8173b7",
  "kind": "theorem",
  "lexical_name": "valuation_le_iff_coeff_lt_eq_zero",
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
  "slug": "valuation-le-iff-coeff-lt-eq-zero--34af61567a355ecc7c79b1ae",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34af61567a355ecc7c79b1aeeb2319d6eb88ff4cadf5d657e129501682d8a6ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77bca2d5-59f4-84fc-7db8-41a3de8173b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_le_iff_coeff_lt_eq_zero {D : ℤ} {f : K⸨X⸩} :
    Valued.v f ≤ exp (-D : ℤ) ↔ ∀ n : ℤ, n < D → f.coeff n = 0 := by
  refine ⟨fun hnD n hn => coeff_zero_of_lt_valuation K hnD hn, fun h_val_f => ?_⟩
  let F := powerSeriesPart f
  by_cases! ord_nonpos : f.order ≤ 0
  · obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat ord_nonpos
    rw [← f.single_order_mul_powerSeriesPart, hs, map_mul, valuation_single_zpow, neg_neg, mul_comm,
      ← le_mul_inv_iff₀, exp_neg, ← mul_inv, ← exp_add, ← exp_neg]
    · by_cases! hDs : D + s ≤ 0
      · apply le_trans ((PowerSeries.idealX K).valuation_le_one F)
        rwa [← log_le_iff_le_exp one_ne_zero, le_neg, log_one, neg_zero]
      · obtain ⟨d, hd⟩ := Int.eq_ofNat_of_zero_le hDs.le
        rw [hd]
        apply (intValuation_le_iff_coeff_lt_eq_zero K F).mpr
        intro n hn
        rw [powerSeriesPart_coeff f n, hs]
        apply h_val_f
        lia
    · simp [ne_eq, zero_lt_iff]
  · obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat <| neg_nonpos_of_nonneg ord_nonpos.le
    rw [neg_inj] at hs
    rw [← f.single_order_mul_powerSeriesPart, hs, map_mul, valuation_single_zpow, mul_comm,
      ← le_mul_inv_iff₀, ← exp_neg, ← exp_add, neg_neg]
    · by_cases! hDs : D - s ≤ 0
      · apply le_trans ((PowerSeries.idealX K).valuation_le_one F)
        rw [← log_le_iff_le_exp one_ne_zero, log_one]
        lia
      · obtain ⟨d, hd⟩ := Int.eq_ofNat_of_zero_le hDs.le
        rw [← neg_neg (-D + ↑s), ← sub_eq_neg_add, neg_sub, hd]
        apply (intValuation_le_iff_coeff_lt_eq_zero K F).mpr
        intro n hn
        rw [powerSeriesPart_coeff f n, hs]
        apply h_val_f (s + n)
        lia
    · simp [ne_eq, zero_lt_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
