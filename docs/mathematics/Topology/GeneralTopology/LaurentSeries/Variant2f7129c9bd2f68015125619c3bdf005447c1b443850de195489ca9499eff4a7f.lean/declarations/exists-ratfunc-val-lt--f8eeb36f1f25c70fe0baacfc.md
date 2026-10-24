# exists_ratFunc_val_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d37aeb5f-5645-33ad-d90a-8f4f934bd942",
  "kind": "theorem",
  "lexical_name": "exists_ratFunc_val_lt",
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
  "slug": "exists-ratfunc-val-lt--f8eeb36f1f25c70fe0baacfc",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 870,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8eeb36f1f25c70fe0baacfc54aeae68c3bbf5a6d91d50dab2b601e210fadadf",
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

Occurrence: `result:d37aeb5f-5645-33ad-d90a-8f4f934bd942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 870–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ratFunc_val_lt (f : K⸨X⸩) (γ : ℤᵐ⁰ˣ) :
    ∃ Q : K⟮X⟯, Valued.v (f - Q) < γ := by
  set F := f.powerSeriesPart with hF
  by_cases! ord_nonpos : f.order < 0
  · set η : ℤᵐ⁰ˣ := Units.mk0 (exp f.order) coe_ne_zero
      with hη
    obtain ⟨P, hP⟩ := exists_Polynomial_intValuation_lt F (η * γ)
    use RatFunc.X ^ f.order * (P : K⟮X⟯)
    have F_mul := f.ofPowerSeries_powerSeriesPart
    obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat (le_of_lt ord_nonpos)
    rw [← hF, hs, neg_neg, ← ofPowerSeries_X_pow s, ← inv_mul_eq_iff_eq_mul₀] at F_mul
    · have : (algebraMap K⟮X⟯ K⸨X⸩) 1 = 1 := by exact algebraMap.coe_one
      rw [hs, ← F_mul, PowerSeries.coe_pow, PowerSeries.coe_X, map_mul, zpow_neg,
        zpow_natCast, inv_eq_one_div (RatFunc.X ^ s), map_div₀, map_pow,
        RatFunc.coe_X]
      simp only [map_one]
      rw [← inv_eq_one_div, ← mul_sub, map_mul, map_inv₀,
        ← PowerSeries.coe_X, valuation_X_pow, ← hs, ← RatFunc.coe_coe, ← PowerSeries.coe_sub,
        ← coe_algebraMap, adicValued_apply, valuation_of_algebraMap,
        ← Units.val_mk0 (a := exp f.order) exp_ne_zero, ← hη]
      apply inv_mul_lt_of_lt_mul₀
      rwa [← Units.val_mul]
    · simp
  · obtain ⟨s, hs⟩ := Int.exists_eq_neg_ofNat (Int.neg_nonpos_of_nonneg ord_nonpos)
    obtain ⟨P, hP⟩ := exists_Polynomial_intValuation_lt (PowerSeries.X ^ s * F) γ
    use P
    rw [← X_order_mul_powerSeriesPart (neg_inj.1 hs).symm, ← RatFunc.coe_coe,
      ← PowerSeries.coe_sub, ← coe_algebraMap, adicValued_apply, valuation_of_algebraMap]
    exact hP

open MonoidWithZeroHom.ValueGroup₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L870).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
