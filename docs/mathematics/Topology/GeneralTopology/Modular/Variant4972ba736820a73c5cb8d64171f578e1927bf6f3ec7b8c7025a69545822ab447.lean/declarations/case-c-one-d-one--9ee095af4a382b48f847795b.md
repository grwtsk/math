# case_c_one_d_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55f6fb1b-9603-31d2-8021-81a369ba1e26",
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
  "slug": "case-c-one-d-one--9ee095af4a382b48f847795b",
  "source": {
    "blob": "7c6ff5e0ef6481aedbc362481a943158f1515c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 576,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee095af4a382b48f847795b47a67f5eabac079d0d86300471a04ff5a41bbe45",
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

Occurrence: `result:55f6fb1b-9603-31d2-8021-81a369ba1e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–610.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variant4972ba736820a73c5cb8d64171f578e1927bf6f3ec7b8c7025a69545822ab447.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6ff5e0ef6481aedbc362481a943158f1515c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
