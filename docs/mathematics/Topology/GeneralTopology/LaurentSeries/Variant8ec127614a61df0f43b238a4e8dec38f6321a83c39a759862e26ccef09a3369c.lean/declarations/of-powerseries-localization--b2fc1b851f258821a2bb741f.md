# of_powerSeries_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dcd8abdbedade1e7508ad1dc16a7883b759ca409954f8498f5723e4bfdbeab4",
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
  "slug": "of-powerseries-localization--b2fc1b851f258821a2bb741f",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2fc1b851f258821a2bb741fb342bd9e5401cac9f9113c88e315cbd87eae576d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dcd8abdbedade1e7508ad1dc16a7883b759ca409954f8498f5723e4bfdbeab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance of_powerSeries_localization [CommRing R] :
    IsLocalization (Submonoid.powers (PowerSeries.X : R⟦X⟧)) R⸨X⸩ where
  map_units' := by
    rintro ⟨_, n, rfl⟩
    refine ⟨⟨single (n : ℤ) 1, single (-n : ℤ) 1, ?_, ?_⟩, ?_⟩
    · simp
    · simp
    · dsimp; rw [ofPowerSeries_X_pow]
  surj' z := by
    by_cases h : 0 ≤ z.order
    · refine ⟨⟨PowerSeries.X ^ Int.natAbs z.order * powerSeriesPart z, 1⟩, ?_⟩
      simp only [RingHom.map_one, mul_one, RingHom.map_mul, coe_algebraMap, ofPowerSeries_X_pow,
        Submonoid.coe_one]
      rw [Int.natAbs_of_nonneg h, single_order_mul_powerSeriesPart]
    · refine ⟨⟨powerSeriesPart z, PowerSeries.X ^ Int.natAbs z.order, ⟨_, rfl⟩⟩, ?_⟩
      simp only [coe_algebraMap, ofPowerSeries_powerSeriesPart]
      rw [mul_comm _ z]
      refine congr rfl ?_
      rw [ofPowerSeries_X_pow, Int.ofNat_natAbs_of_nonpos]
      exact le_of_not_ge h
  exists_of_eq {x y} := by
    rw [coe_algebraMap, ofPowerSeries_injective.eq_iff]
    rintro rfl
    exact ⟨1, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
