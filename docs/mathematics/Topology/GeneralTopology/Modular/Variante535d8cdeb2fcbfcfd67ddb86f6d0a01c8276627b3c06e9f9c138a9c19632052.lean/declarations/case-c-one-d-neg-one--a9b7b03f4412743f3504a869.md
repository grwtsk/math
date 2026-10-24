# case_c_one_d_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84e3036e-abe2-32e2-555a-f99d86c2c289",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee2ba860-5ed1-a141-753f-51bdcf3bed37",
  "kind": "lemma",
  "lexical_name": "case_c_one_d_neg_one",
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
  "slug": "case-c-one-d-neg-one--a9b7b03f4412743f3504a869",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 603,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b7b03f4412743f3504a86998069bff52ca7b4bf5ba7babcc3bab2ff397d225",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee2ba860-5ed1-a141-753f-51bdcf3bed37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma case_c_one_d_neg_one (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) (hg' : ‖denom g z‖ ≤ 1)
    (hc : g 1 0 = 1) (hd : g 1 1 = -1) :
    (g = S * T⁻¹ ∨ g = T⁻¹ * S * T⁻¹) ∧ z = (1 : ℝ) +ᵥ ρ := by
  have : g 0 1 = -g 0 0 - 1 := by
    have := g.property
    simp_rw [det_fin_two] at this
    grind
  have hgeq : g = T ^ g 0 0 * S * T⁻¹ := by
    refine Subtype.ext ?_
    rw [coe_mul, coe_mul, coe_T_zpow, coe_S, ← zpow_neg_one, coe_T_zpow, mul_fin_two, mul_fin_two]
    ring_nf
    ext i j
    fin_cases i <;> fin_cases j <;> [tauto; skip; tauto; tauto]
    simp [this]
    ring_nf
  have hnorm : ‖(z : ℂ) - 1‖ ≤ 1 := by
    convert! hg' using 2
    simp [denom, hc, hd, sub_eq_add_neg]
  rw [norm_def, Real.sqrt_le_one] at hnorm
  have : normSq (z - 1) = normSq z + (-2 * z.re + 1) := by
    simp [normSq]
    ring
  rw [this] at hnorm
  obtain ⟨h, h'⟩ : normSq z = 1 ∧ z.re = 1 / 2 := by
    have : 1 ≤ normSq z := hz.1
    have : 0 ≤ -2 * z.re + 1 := by linarith [(le_abs_self _).trans hz.2]
    constructor <;> linarith
  have hρ : z = (1 : ℝ) +ᵥ ρ := by
    apply eq_of_re_of_norm
    · norm_num [h', ρ]
    · rw [norm_def, h, coe_vadd, ofReal_one,
        show 1 + (ρ : ℂ) = -ρ ^ 2 by grind [ρ_sq], norm_neg, norm_pow, norm_ρ, Real.sqrt_one,
        one_pow]
  refine ⟨?_, hρ⟩
  rw [hgeq, hρ, mul_assoc, mul_smul] at hg
  have : S • ρ = T • ρ := by
    rw [UpperHalfPlane.ext_iff, modular_S_smul, modular_T_smul, UpperHalfPlane.coe_mk,
      coe_vadd, ← mul_one (_ : ℂ)⁻¹, inv_mul_eq_iff_eq_mul₀ (neg_ne_zero.mpr ρ.ne_zero)]
    grind [ρ_sq, ofReal_one]
  have : (S * T⁻¹) • ((1 : ℝ) +ᵥ ρ) = (1 : ℝ) +ᵥ ρ := by
    rw [mul_smul, ← SL_neg_smul S, ← S_inv, inv_smul_eq_iff, ← zpow_neg_one,
    modular_T_zpow_smul, Int.cast_neg, Int.cast_one, neg_vadd_vadd,
    ← inv_smul_eq_iff, S_inv, SL_neg_smul, this, modular_T_smul]
  rw [this] at hg
  rw [hgeq]
  suffices g 0 0 = 0 ∨ g 0 0 = -1 by rcases this with h | h <;> simp [h]
  have : (-1 : ℝ) ≤ g 0 0 ∧ g 0 0 ≤ 0 := by
    simpa only [ρ, neg_div, one_div, ← coe_re, coe_T_zpow_smul_eq, coe_vadd, add_re, ofReal_re,
      show 1 + (-2⁻¹ : ℝ) = 2⁻¹ by norm_num, intCast_re, abs_le, ← sub_le_iff_le_add',
      show (-2⁻¹ : ℝ) - (2⁻¹ : ℝ) = -1 by norm_num, add_le_iff_nonpos_right, Int.cast_nonpos] using
      hg.2
  rw [← Int.cast_one, ← Int.cast_neg, Int.cast_le] at this
  grind

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
