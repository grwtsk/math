# tendsto_valuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c694bb2-5ee8-3f9e-ffbb-8c79122dfc6e",
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
  "slug": "tendsto-valuation--22006756b77b724ae8037a40",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1129,
    "line": 1095,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22006756b77b724ae8037a40c24cbcb1880108365d08f9fbb5936a1a7f042e62",
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

Occurrence: `result:8c694bb2-5ee8-3f9e-ffbb-8c79122dfc6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_valuation (a : (idealX K).adicCompletion (RatFunc K)) :
    Tendsto (Valued.v : RatFunc K → ℤₘ₀) (comap (↑) (𝓝 a)) (𝓝 (Valued.v a : ℤₘ₀)) := by
  set ψ := (Valued.v : RatFunc K → ℤₘ₀) with hψ
  have := Valued.is_topological_valuation (R := (idealX K).adicCompletion (RatFunc K))
  by_cases ha : a = 0
  · rw [tendsto_def]
    intro S hS
    rw [ha, map_zero, WithZeroTopology.hasBasis_nhds_zero.1 S] at hS
    obtain ⟨γ, γ_ne_zero, γ_le⟩ := hS
    use {t | Valued.v t < γ}
    constructor
    · rw [ha, this]
      use Units.mk0 γ γ_ne_zero
      rw [Units.val_mk0]
    · refine Set.Subset.trans (fun a _ ↦ ?_) (Set.preimage_mono γ_le)
      rwa [Set.mem_preimage, Set.mem_Iio, hψ, ← Valued.valuedCompletion_apply a]
  · rw [WithZeroTopology.tendsto_of_ne_zero ((Valuation.ne_zero_iff Valued.v).mpr ha), hψ,
      Filter.eventually_comap, Filter.Eventually, Valued.mem_nhds]
    set γ := Valued.v a / (↑(Multiplicative.ofAdd (1 : ℤ)) : ℤₘ₀) with h_aγ
    have γ_ne_zero : γ ≠ 0 := by
      rw [ne_eq, _root_.div_eq_zero_iff, Valuation.zero_iff]
      simpa only [coe_ne_zero, or_false]
    use Units.mk0 γ γ_ne_zero
    intro y val_y b diff_b_y
    replace val_y : Valued.v y = Valued.v a := by
      refine Valuation.map_eq_of_sub_lt _ (val_y.trans ?_)
      rw [Units.val_mk0, h_aγ, ← coe_unzero ((Valuation.ne_zero_iff Valued.v).mpr ha), ←
        WithZero.coe_div, coe_lt_coe, div_lt_self_iff, ← ofAdd_zero,
        Multiplicative.ofAdd_lt]
      exact Int.zero_lt_one
    rw [← Valued.extension_extends, ← val_y, ← diff_b_y]
    congr

/- The extension of the `X`-adic valuation from `RatFunc K` up to its abstract completion coincides,
modulo the isomorphism with `K⸨X⸩`, with the `X`-adic valuation on `K⸨X⸩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
