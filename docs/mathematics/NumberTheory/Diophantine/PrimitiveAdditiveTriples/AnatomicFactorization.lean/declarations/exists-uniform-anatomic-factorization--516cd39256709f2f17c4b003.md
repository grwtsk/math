# exists_uniform_anatomic_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0862e7c5-68de-bcf3-759f-a15663d84288",
  "kind": "theorem",
  "lexical_name": "exists_uniform_anatomic_factorization",
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
  "slug": "exists-uniform-anatomic-factorization--516cd39256709f2f17c4b003",
  "source": {
    "blob": "0f88dd5a4c82b10260a889a53aca763c7bf46902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516cd39256709f2f17c4b003984942990c34ade3141a5758b18ccc4dd1d10a9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0862e7c5-68de-bcf3-759f-a15663d84288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_uniform_anatomic_factorization
    {ε₀ : ℝ} (hε₀ : 0 < ε₀) :
    ∃ d : ℕ, 6 ≤ d ∧
      ∀ (n : ℕ), 0 < n → ∃ (x : Fin d → ℕ), ∃ c : ℕ,
        n = c * ∏ j, x j ^ (j.val + 1) ∧
        0 < c ∧
        (∀ j, 0 < x j) ∧
        (∀ i j, i ≠ j → Nat.Coprime (x i) (x j)) ∧
        (c : ℝ) ≤ (n : ℝ) ^ ε₀ ∧
        (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤ (radical n : ℕ) ∧
        (radical n : ℕ) ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
  let δ : ℝ := min ε₀ (1 / 4)
  have hδ_pos : 0 < δ := by
    dsimp [δ]
    exact lt_min hε₀ (by norm_num)
  have hδ_le : δ ≤ ε₀ := by
    dsimp [δ]
    exact min_le_left _ _
  have hδ_half : δ < 1 / 2 := by
    have hquarter : δ ≤ 1 / 4 := by
      dsimp [δ]
      exact min_le_right _ _
    linarith
  let d : ℕ := ⌊5 / 2 * δ⁻¹ ^ 2⌋₊
  have htwo : 2 < δ⁻¹ := by
    have hpos := hδ_pos
    rw [← inv_inv 2]
    gcongr
    linarith only [hδ_half]
  have hsq : (4 : ℝ) < δ⁻¹ ^ 2 := by
    have hleft : 0 < δ⁻¹ - 2 := sub_pos.mpr htwo
    have hright : 0 < δ⁻¹ + 2 := by linarith
    nlinarith [mul_pos hleft hright]
  have hd_six : 6 ≤ d := by
    dsimp [d]
    rw [Nat.le_floor_iff (by positivity : (0 : ℝ) ≤ 5 / 2 * δ⁻¹ ^ 2)]
    change (6 : ℝ) ≤ 5 / 2 * δ⁻¹ ^ 2
    nlinarith
  refine ⟨d, hd_six, ?_⟩
  intro n hn
  obtain ⟨x, c, hrec, hc, hcop, hlow, hupp, hc_pos, hx_pos, hx_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := δ) hδ_pos hδ_half (d := d) rfl
      (n := n) (X := n) hn le_rfl
  have hn_nat_one : 1 ≤ n := hn
  have hn_one : (1 : ℝ) ≤ n := by
    exact_mod_cast hn_nat_one
  have hcop' : ∀ i j, i ≠ j → Nat.Coprime (x i) (x j) := by
    intro i j hij
    rw [Nat.coprime_iff_gcd_eq_one]
    exact hcop i j hij
  have hc' : (c : ℝ) ≤ (n : ℝ) ^ ε₀ := by
    exact hc.trans (Real.rpow_le_rpow_of_exponent_le hn_one hδ_le)
  have hlow' :
      (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤ (radical n : ℕ) := by
    calc
      (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤
          (n : ℝ) ^ (-δ) * ∏ j, x j := by
        apply mul_le_mul_of_nonneg_right
          (Real.rpow_le_rpow_of_exponent_le hn_one (neg_le_neg hδ_le))
        positivity
      _ ≤ (radical n : ℕ) := hlow
  have hupp' :
      (radical n : ℕ) ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
    calc
      (radical n : ℕ) ≤ (n : ℝ) ^ δ * ∏ j, x j := hupp
      _ ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
        apply mul_le_mul_of_nonneg_right
          (Real.rpow_le_rpow_of_exponent_le hn_one hδ_le)
        positivity
  exact ⟨x, c, hrec, hc_pos, hx_pos, hcop', hc', hlow', hupp'⟩

/-- Pointwise specialization of the uniform anatomic factorization. The common
index bound depends only on `ε₀`, as exposed by the uniform theorem above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f88dd5a4c82b10260a889a53aca763c7bf46902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
