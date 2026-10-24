# summable_exp_neg_mul_nat_add_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91765e0f-2268-d8c1-768b-f7904256edc5",
  "kind": "theorem",
  "lexical_name": "summable_exp_neg_mul_nat_add_rpow",
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
  "slug": "summable-exp-neg-mul-nat-add-rpow--ba1daba1223e94e5156f16b6",
  "source": {
    "blob": "526a3d4795714d8b887cf33df827a148fa46649c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 26,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba1daba1223e94e5156f16b6bde8dd5d6a53aa216a0d669c02b4011ee5f45fdf",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91765e0f-2268-d8c1-768b-f7904256edc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_exp_neg_mul_nat_add_rpow (σ q : ℝ) (hσ : 0 < σ) :
    Summable (fun n : ℕ ↦ Real.exp (-σ * n) * ((n : ℝ) + 2) ^ q) := by
  let k : ℕ := ⌈q⌉₊
  let r : ℝ := Real.exp (-σ)
  have hr0 : 0 < r := Real.exp_pos _
  have hr : ‖r‖ < 1 := by
    rw [Real.norm_eq_abs, abs_of_pos hr0]
    exact Real.exp_lt_one_iff.mpr (by linarith)
  have hs := summable_pow_mul_geometric_of_norm_lt_one (R := ℝ) k hr
  have hshift : Summable (fun n : ℕ ↦ ((n : ℝ) + 2) ^ k * r ^ (n + 2)) := by
    simpa only [Nat.cast_add, Nat.cast_ofNat] using (summable_nat_add_iff 2).mpr hs
  have hpoly : Summable (fun n : ℕ ↦ Real.exp (-σ * n) * ((n : ℝ) + 2) ^ k) := by
    have hscaled := hshift.mul_left (r ^ 2)⁻¹
    apply hscaled.congr
    intro n
    have he : Real.exp (-σ * (n : ℝ)) = r ^ n := by
      simpa only [r, mul_comm] using Real.exp_nat_mul (-σ) n
    rw [he, pow_add]
    field_simp [ne_of_gt hr0]
  refine Summable.of_nonneg_of_le (fun n ↦ by positivity) (fun n ↦ ?_) hpoly
  have hp := Real.rpow_le_rpow_of_exponent_le
    (le_trans (by norm_num : (1 : ℝ) ≤ 2)
      (le_add_of_nonneg_left (Nat.cast_nonneg n)))
    (show q ≤ (k : ℝ) from Nat.le_ceil q)
  rw [Real.rpow_natCast] at hp
  exact mul_le_mul_of_nonneg_left hp (Real.exp_pos _).le

/-- Unit blocks have an integrable quadratic majorant; no amplitude estimate is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526a3d4795714d8b887cf33df827a148fa46649c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
