# case_c_one_d_one

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
      "line": 568,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ec87bee-e045-f779-908c-cceac10ca891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54ca431b-3b7d-915f-de9f-6c34ecab504c",
  "kind": "lemma",
  "lexical_name": "case_c_one_d_one",
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
  "slug": "case-c-one-d-one--907ca917f4f4ca93eb41eafe",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907ca917f4f4ca93eb41eafe892ea7045f3344b2b2854485652bc4504fa4cea5",
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

Occurrence: `result:54ca431b-3b7d-915f-de9f-6c34ecab504c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma case_c_one_d_one (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) (hg' : ‖denom g z‖ ≤ 1)
    (hc : g 1 0 = 1) (hd : g 1 1 = 1) :
    (g = S * T ∨ g = T * S * T) ∧ z = ρ := by
  have hgeq : g = T ^ g 0 0 * S * T := by
    refine Subtype.ext ?_
    rw [coe_mul, coe_mul, coe_T_zpow, coe_S, coe_T, mul_fin_two, mul_fin_two]
    ring_nf
    ext i j
    fin_cases i <;> fin_cases j <;> [tauto; simp; tauto; tauto]
    grind [g.property, det_fin_two]
  rw [hgeq]
  obtain ⟨hnorm, hre⟩ : normSq z = 1 ∧ z.re = -1 / 2 := by
    have hnorm : normSq ((z : ℂ) + 1) ≤ 1 := by simpa [denom, hc, hd, norm_def] using hg'
    have : normSq (z + 1) = normSq z + (2 * z.re + 1) := by simp [normSq]; ring
    rw [this] at hnorm
    constructor <;> linarith [hz.1, show 0 ≤ 2 * z.re + 1 by linarith [(neg_le_abs _).trans hz.2]]
  have hρ : z = ρ := by
    apply eq_of_re_of_norm
    · simp [hre, ρ]
    · rw [norm_def, hnorm, norm_ρ, Real.sqrt_one]
  refine ⟨?_, hρ⟩
  have hSTρ : (S * T) • ρ = ρ := by
    rw [mul_smul, ← SL_neg_smul S, ← S_inv, inv_smul_eq_iff, eq_comm, UpperHalfPlane.ext_iff,
      modular_S_smul, modular_T_smul, UpperHalfPlane.coe_mk, coe_vadd,
      ← mul_one (_ : ℂ)⁻¹, inv_mul_eq_iff_eq_mul₀ (neg_ne_zero.mpr ρ.ne_zero)]
    grind [ρ_sq, ofReal_one]
  rw [hgeq, hρ, mul_assoc, mul_smul, hSTρ] at hg
  suffices g 0 0 = 0 ∨ g 0 0 = 1 by rcases this with h | h <;> simp [h]
  have hgzre := hg.2
  simp only [Fin.isValue, ρ, neg_div, one_div, ← coe_re, coe_T_zpow_smul_eq, add_re, intCast_re,
    abs_le, le_add_iff_nonneg_right, Int.cast_nonneg_iff, neg_add_le_iff_le_add,
    show (2⁻¹ : ℝ) + 2⁻¹ = 1 by norm_num] at hgzre
  rw [← Int.cast_one (R := ℝ), Int.cast_le] at hgzre
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
