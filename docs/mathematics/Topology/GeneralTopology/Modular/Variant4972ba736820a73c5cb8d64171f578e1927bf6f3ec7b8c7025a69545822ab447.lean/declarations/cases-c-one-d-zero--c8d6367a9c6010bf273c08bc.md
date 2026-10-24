# cases_c_one_d_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60ffe9bb-25fd-6077-467d-7bfa0ba7734f",
  "kind": "lemma",
  "lexical_name": "cases_c_one_d_zero",
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
  "slug": "cases-c-one-d-zero--c8d6367a9c6010bf273c08bc",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 539,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8d6367a9c6010bf273c08bc1e83d282402444d058273b187a5793072329e07f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ffe9bb-25fd-6077-467d-7bfa0ba7734f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cases_c_one_d_zero (hz : z ∈ 𝒟) (hg : g • z ∈ 𝒟) (hg' : ‖denom g z‖ ≤ 1)
    (hc : g 1 0 = 1) (hd : g 1 1 = 0) :
    (g = S ∧ ‖(z : ℂ)‖ = 1) ∨ (g = T⁻¹ * S ∧ z = ρ) ∨ (g = T * S ∧ z = (1 : ℝ) +ᵥ ρ) := by
  have hb : g 0 1 = -1 := by
    simpa [-SpecialLinearGroup.det_coe, det_fin_two, hd, hc, neg_eq_iff_eq_neg] using g.property
  have hz' : ‖(z : ℂ)‖ = 1 :=
    le_antisymm (by simpa [denom, hc, hd] using hg') (one_le_normSq_iff.mp hz.1)
  have hg' : g = T ^ g 0 0 * S := by
    ext i j
    simp only [coe_mul, coe_S, coe_T_zpow, Matrix.mul_fin_two, mul_zero, mul_one, zero_add,
      one_mul, add_zero, zero_mul]
    fin_cases i <;> fin_cases j <;> tauto
  rw [hg', mul_smul] at hg
  have hSre : re (S • z) = -z.re := by
    rw [modular_S_smul, ← coe_re, coe_mk, inv_re, normSq_eq_norm_sq, norm_neg, hz', one_pow,
      div_one, neg_re, coe_re]
  have := hg.2
  rw [← coe_re, coe_T_zpow_smul_eq, add_re, intCast_re, add_comm, coe_re, hSre] at this
  have := (abs_sub_abs_le_abs_add _ _).trans this
  rw [abs_neg, sub_le_iff_le_add] at this
  rcases lt_or_eq_of_le hz.2 with hzre | hzre
  · have := this.trans_lt ((add_lt_add_iff_left _).mpr hzre)
    rw [add_halves, ← Int.cast_abs, ← Int.cast_one (R := ℝ), Int.cast_lt] at this
    grind [Int.abs_lt_one_iff, zpow_zero]
  · rw [hzre, add_halves, ← Int.cast_abs, ← Int.cast_one (R := ℝ), Int.cast_le,
      Int.abs_le_one_iff] at this
    rcases this with h | h | h <;> simp only [h, Int.cast_zero, zero_add, Int.cast_one] at this
    · grind [zpow_zero]
    · rcases (abs_eq one_half_pos.le).mp hzre with hzre | hzre <;> [skip; norm_num [hzre] at this]
      rw [h, zpow_one] at hg'
      refine .inr <| .inr ⟨hg', eq_of_re_of_norm (by norm_num [hzre, ρ]) ?_⟩
      simp [hz', show 1 + (ρ : ℂ) = -ρ ^ 2 by grind [ρ_sq], norm_ρ]
    · rw [abs_eq (by norm_num)] at hzre
      rcases hzre with hzre | hzre <;> [norm_num [hzre] at this; skip]
      rw [h, zpow_neg_one] at hg'
      exact .inr <| .inl ⟨hg', eq_of_re_of_norm (by norm_num [hzre, ρ]) (by rw [hz', norm_ρ])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
