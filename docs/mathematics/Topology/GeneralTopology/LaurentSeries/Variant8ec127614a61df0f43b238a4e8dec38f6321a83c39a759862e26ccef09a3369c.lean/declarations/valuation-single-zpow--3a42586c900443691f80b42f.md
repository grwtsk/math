# valuation_single_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fde761b-75e6-ca6d-7702-cd4206aa0381",
  "kind": "theorem",
  "lexical_name": "valuation_single_zpow",
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
  "slug": "valuation-single-zpow--3a42586c900443691f80b42f",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 587,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a42586c900443691f80b42f4a8a5b28cd087ad59699464a4e1ac2c9fe666eae",
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

Occurrence: `result:8fde761b-75e6-ca6d-7702-cd4206aa0381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_single_zpow (s : ℤ) :
    Valued.v (HahnSeries.single s (1 : K) : K⸨X⸩) =
      Multiplicative.ofAdd (-(s : ℤ)) := by
  have : Valued.v (1 : K⸨X⸩) = (1 : ℤₘ₀) := Valued.v.map_one
  rw [← single_zero_one, ← add_neg_cancel s, ← mul_one 1, ← single_mul_single, map_mul,
    mul_eq_one_iff_eq_inv₀] at this
  · rw [this]
    obtain s | s := s
    · rw [Int.ofNat_eq_coe, ← HahnSeries.ofPowerSeries_X_pow] at this
      rw [Int.ofNat_eq_coe, ← this, PowerSeries.coe_pow, valuation_X_pow]
    · simp only [Int.negSucc_eq, ← Int.natCast_succ, neg_neg, ← HahnSeries.ofPowerSeries_X_pow,
        PowerSeries.coe_pow, valuation_X_pow, ofAdd_neg, WithZero.coe_inv, inv_inv]
  · simp only [Valuation.ne_zero_iff, ne_eq, one_ne_zero, not_false_iff, HahnSeries.single_ne_zero]

/- The coefficients of a power series vanish in degree strictly less than its valuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
