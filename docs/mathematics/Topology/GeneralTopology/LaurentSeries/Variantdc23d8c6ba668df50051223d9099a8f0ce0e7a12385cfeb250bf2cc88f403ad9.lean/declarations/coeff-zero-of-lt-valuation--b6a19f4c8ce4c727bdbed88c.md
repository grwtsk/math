# coeff_zero_of_lt_valuation

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
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7467412f-952a-1ffb-4958-6c7c5c22c90a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe84b003-1293-d260-58c3-f751ab3b6d83",
  "kind": "theorem",
  "lexical_name": "coeff_zero_of_lt_valuation",
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
  "slug": "coeff-zero-of-lt-valuation--b6a19f4c8ce4c727bdbed88c",
  "source": {
    "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 546,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a19f4c8ce4c727bdbed88ca5a962ed385b583ecda2042d787704ce8a72885f",
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

Occurrence: `result:fe84b003-1293-d260-58c3-f751ab3b6d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_zero_of_lt_valuation {n D : ℤ} {f : K⸨X⸩}
    (H : Valued.v f ≤ exp (-D)) : n < D → f.coeff n = 0 := by
  intro hnd
  by_cases! h_n_ord : n < f.order
  · exact coeff_eq_zero_of_lt_order h_n_ord
  set F := powerSeriesPart f with hF
  by_cases! ord_nonpos : f.order ≤ 0
  · obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat ord_nonpos
    obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le (neg_le_iff_add_nonneg.mp (hs ▸ h_n_ord))
    obtain ⟨d, hd⟩ := Int.eq_ofNat_of_zero_le (a := D + s) (by lia)
    rw [eq_add_neg_of_add_eq hm, add_comm, ← hs, ← powerSeriesPart_coeff]
    apply (intValuation_le_iff_coeff_lt_eq_zero K F).mp _ m (by linarith)
    rw [hF, ofPowerSeries_powerSeriesPart f, hs, neg_neg, ← hd, neg_add_rev, exp_add, map_mul,
      ← ofPowerSeries_X_pow s, PowerSeries.coe_pow, valuation_X_pow K s]
    gcongr
  · obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat (Int.neg_nonpos_of_nonneg (le_of_lt ord_nonpos))
    obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le (a := n - s) (by grind)
    obtain ⟨d, hd⟩ := Int.eq_ofNat_of_zero_le (a := D - s) (by lia)
    rw [sub_eq_iff_eq_add.mp hm, add_comm, ← neg_neg (s : ℤ), ← hs, neg_neg,
      ← powerSeriesPart_coeff]
    apply (intValuation_le_iff_coeff_lt_eq_zero K F).mp _ m (by linarith)
    rw [hF, ofPowerSeries_powerSeriesPart f, map_mul, ← hd, hs, neg_sub, sub_eq_add_neg,
      exp_add, valuation_single_zpow, neg_neg]
    gcongr

/-- The valuation of a Laurent series is the order of the first non-zero coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ed25b74e7312f234de3998a8e927b9103b7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
