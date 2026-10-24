# of_powerSeries_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4c71f699f51c2b1fdd4e94aff9a4729c4bba103a9294e0ea22e610146a7f4bd",
  "kind": "instance",
  "lexical_name": "of_powerSeries_localization",
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
  "slug": "of-powerseries-localization--c6532809197469fb7b9e79a4",
  "source": {
    "blob": "cedaa88e867efe21ad908eb4147ccb4ae267aa4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 137,
    "path": "GRWTSK/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6532809197469fb7b9e79a411223d3eca08f57f02a2f80b634d9e3d964d3533",
  "verification": {
    "reference": "docs/verification/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4c71f699f51c2b1fdd4e94aff9a4729c4bba103a9294e0ea22e610146a7f4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance of_powerSeries_localization [CommRing R] :
    IsLocalization (Submonoid.powers (PowerSeries.X : PowerSeries R)) (LaurentSeries R) where
  map_units' := by
    rintro ⟨_, n, rfl⟩
    refine' ⟨⟨single (n : ℤ) 1, single (-n : ℤ) 1, _, _⟩, _⟩
    · simp only [single_mul_single, mul_one, add_right_neg]
      rfl
    · simp only [single_mul_single, mul_one, add_left_neg]
      rfl
    · simp
  surj' := by
    intro z
    by_cases h : 0 ≤ z.order
    · refine' ⟨⟨PowerSeries.X ^ Int.natAbs z.order * powerSeriesPart z, 1⟩, _⟩
      simp only [RingHom.map_one, mul_one, RingHom.map_mul, coe_algebraMap, ofPowerSeries_X_pow,
        Submonoid.coe_one]
      rw [Int.natAbs_of_nonneg h, single_order_mul_powerSeriesPart]
    · refine' ⟨⟨powerSeriesPart z, PowerSeries.X ^ Int.natAbs z.order, ⟨_, rfl⟩⟩, _⟩
      simp only [coe_algebraMap, ofPowerSeries_powerSeriesPart]
      rw [mul_comm _ z]
      refine' congr rfl _
      rw [ofPowerSeries_X_pow, Int.ofNat_natAbs_of_nonpos]
      exact le_of_not_ge h
  eq_iff_exists' := by
    intro x y
    rw [coe_algebraMap, ofPowerSeries_injective.eq_iff]
    constructor
    · rintro rfl
      exact ⟨1, rfl⟩
    · rintro ⟨⟨_, n, rfl⟩, hc⟩
      rw [← sub_eq_zero, ← mul_sub, PowerSeries.ext_iff] at hc
      rw [← sub_eq_zero, PowerSeries.ext_iff]
      intro m
      have h := hc (m + n)
      simp only at h
      rwa [LinearMap.map_zero, PowerSeries.X_pow_eq, PowerSeries.monomial,
        add_comm m, PowerSeries.coeff, Finsupp.single_add, MvPowerSeries.coeff_add_monomial_mul,
        one_mul] at h
#align laurent_series.of_power_series_localization LaurentSeries.of_powerSeries_localization

-- Porting note: this instance is needed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LaurentSeries/Variantef684714b49dbae26798baadd5745f805c126e201a379ee24e07605c8264844c.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cedaa88e867efe21ad908eb4147ccb4ae267aa4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
