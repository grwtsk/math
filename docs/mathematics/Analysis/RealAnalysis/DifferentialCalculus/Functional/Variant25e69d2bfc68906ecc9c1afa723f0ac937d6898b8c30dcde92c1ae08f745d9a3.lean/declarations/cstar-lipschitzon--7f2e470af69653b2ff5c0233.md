# cStar_lipschitzOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48112bd3-8dc7-e9d2-077a-1fa5ed7cbdbc",
  "kind": "theorem",
  "lexical_name": "cStar_lipschitzOn",
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
  "slug": "cstar-lipschitzon--7f2e470af69653b2ff5c0233",
  "source": {
    "blob": "42291c6dafca5e513a306ef3953a2e7f7d1f43f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f2e470af69653b2ff5c02334939fd888d24b2f90b2e73e0162c876099982e3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48112bd3-8dc7-e9d2-077a-1fa5ed7cbdbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cStar_lipschitzOn {x y : ℝ} (hx0 : 0 ≤ x) (hx1 : x ≤ 1) (hy0 : 0 ≤ y) (hy1 : y ≤ 1) :
    |cStar x - cStar y| ≤ 14 * |x - y| := by
  have hs2 : (0:ℝ) < Real.sqrt 2 := by positivity
  have h12 : (1:ℝ) ≤ Real.sqrt 2 := by nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)]
  have h32 : Real.sqrt 2 ≤ 3 / 2 := by nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)]
  set Nx := Real.sqrt 2 * Real.sin (theta x) with hNxd
  set Ny := Real.sqrt 2 * Real.sin (theta y) with hNyd
  set Dx := Real.cos (theta x) + theta x * Real.sin (theta x) with hDxd
  set Dy := Real.cos (theta y) + theta y * Real.sin (theta y) with hDyd
  have hDx0 : (3:ℝ)/4 ≤ Dx := cStar_denom_ge hx0 hx1
  have hDy0 : (3:ℝ)/4 ≤ Dy := cStar_denom_ge hy0 hy1
  have hθd : theta x - theta y = (x - y) / Real.sqrt 2 := by unfold theta; ring
  have hθabs : |theta x - theta y| ≤ |x - y| := by
    rw [hθd, abs_div, abs_of_pos hs2]
    exact div_le_self (abs_nonneg _) h12
  have hsinθ : |Real.sin (theta x) - Real.sin (theta y)| ≤ |x - y| / Real.sqrt 2 := by
    rw [← abs_of_pos hs2, ← abs_div, ← hθd]
    exact Real.abs_sin_sub_sin_le _ _
  have hsinθ' : |Real.sin (theta x) - Real.sin (theta y)| ≤ |x - y| :=
    le_trans (Real.abs_sin_sub_sin_le _ _) hθabs
  have hcosθ : |Real.cos (theta x) - Real.cos (theta y)| ≤ |x - y| :=
    le_trans (Real.abs_cos_sub_cos_le _ _) hθabs
  have hθyabs : |theta y| ≤ 1 := by
    rw [abs_of_nonneg (theta_nonneg hy0)]
    exact le_trans (theta_le hy1 hy0) (le_of_lt sqrt_two_inv_lt_one)
  -- |Nx − Ny| ≤ |x − y|·(3/2)  (crude: √2 ≤ 3/2, |sin difference| ≤ |x−y|)
  have hNd : |Nx - Ny| ≤ 3 / 2 * |x - y| := by
    rw [hNxd, hNyd, ← mul_sub, abs_mul, abs_of_pos hs2]
    exact mul_le_mul h32 hsinθ' (abs_nonneg _) (by norm_num)
  -- |Dx − Dy| ≤ 3|x − y|
  have hDd : |Dx - Dy| ≤ 3 * |x - y| := by
    have e : Dx - Dy = (Real.cos (theta x) - Real.cos (theta y))
        + ((theta x - theta y) * Real.sin (theta x)
          + theta y * (Real.sin (theta x) - Real.sin (theta y))) := by
      rw [hDxd, hDyd]; ring
    have h1 : |(theta x - theta y) * Real.sin (theta x)| ≤ |x - y| := by
      rw [abs_mul]
      calc |theta x - theta y| * |Real.sin (theta x)| ≤ |x - y| * 1 :=
            mul_le_mul hθabs (Real.abs_sin_le_one _) (abs_nonneg _) (abs_nonneg _)
        _ = |x - y| := mul_one _
    have h2 : |theta y * (Real.sin (theta x) - Real.sin (theta y))| ≤ |x - y| := by
      rw [abs_mul]
      calc |theta y| * |Real.sin (theta x) - Real.sin (theta y)| ≤ 1 * |x - y| :=
            mul_le_mul hθyabs hsinθ' (abs_nonneg _) zero_le_one
        _ = |x - y| := one_mul _
    calc |Dx - Dy| = |(Real.cos (theta x) - Real.cos (theta y))
        + ((theta x - theta y) * Real.sin (theta x)
          + theta y * (Real.sin (theta x) - Real.sin (theta y)))| := by rw [e]
      _ ≤ |Real.cos (theta x) - Real.cos (theta y)|
          + |(theta x - theta y) * Real.sin (theta x)
            + theta y * (Real.sin (theta x) - Real.sin (theta y))| := abs_add_le _ _
      _ ≤ |Real.cos (theta x) - Real.cos (theta y)|
          + (|(theta x - theta y) * Real.sin (theta x)|
            + |theta y * (Real.sin (theta x) - Real.sin (theta y))|) := by
          linarith [abs_add_le ((theta x - theta y) * Real.sin (theta x))
            (theta y * (Real.sin (theta x) - Real.sin (theta y)))]
      _ ≤ 3 * |x - y| := by linarith
  -- |Ny| ≤ 3/2, |Dy| ≤ 2
  have hNy : |Ny| ≤ 3 / 2 := by
    rw [hNyd, abs_mul, abs_of_pos hs2]
    calc Real.sqrt 2 * |Real.sin (theta y)| ≤ (3/2) * 1 :=
          mul_le_mul h32 (Real.abs_sin_le_one _) (abs_nonneg _) (by norm_num)
      _ = 3 / 2 := mul_one _
  have hDy2 : |Dy| ≤ 2 := by
    rw [hDyd]
    calc |Real.cos (theta y) + theta y * Real.sin (theta y)|
        ≤ |Real.cos (theta y)| + |theta y * Real.sin (theta y)| := abs_add_le _ _
      _ ≤ 1 + 1 * 1 := by
          refine add_le_add (Real.abs_cos_le_one _) ?_
          rw [abs_mul]
          exact mul_le_mul hθyabs (Real.abs_sin_le_one _) (abs_nonneg _) zero_le_one
      _ = 2 := by norm_num
  -- assemble
  have hDxne : Dx ≠ 0 := by linarith
  have hDyne : Dy ≠ 0 := by linarith
  have key : cStar x - cStar y = (Nx * Dy - Ny * Dx) / (Dx * Dy) := by
    unfold cStar
    rw [div_sub_div _ _ hDxne hDyne]
    ring
  rw [key, abs_div]
  have hnum : |Nx * Dy - Ny * Dx| ≤ 15 / 2 * |x - y| := by
    have e : Nx * Dy - Ny * Dx = (Nx - Ny) * Dy + Ny * (Dy - Dx) := by ring
    rw [e]
    calc |(Nx - Ny) * Dy + Ny * (Dy - Dx)|
        ≤ |(Nx - Ny) * Dy| + |Ny * (Dy - Dx)| := abs_add_le _ _
      _ = |Nx - Ny| * |Dy| + |Ny| * |Dy - Dx| := by rw [abs_mul, abs_mul]
      _ ≤ (3 / 2 * |x - y|) * 2 + (3 / 2) * (3 * |x - y|) := by
          refine add_le_add (mul_le_mul hNd hDy2 (abs_nonneg _) (by positivity)) ?_
          rw [abs_sub_comm]
          exact mul_le_mul hNy hDd (abs_nonneg _) (by norm_num)
      _ = 15 / 2 * |x - y| := by ring
  have hden : 9 / 16 ≤ |Dx * Dy| := by
    rw [abs_of_pos (by nlinarith : (0:ℝ) < Dx * Dy)]
    nlinarith
  calc |Nx * Dy - Ny * Dx| / |Dx * Dy| ≤ (15 / 2 * |x - y|) / (9 / 16) := by
        apply div_le_div₀ (by positivity) hnum (by norm_num) hden
    _ ≤ 14 * |x - y| := by rw [div_div_eq_mul_div]; nlinarith [abs_nonneg (x - y)]

/-- c*_λ is continuous on [0,1] (its denominator is ≥ 3/4 there); this is all the λ → 1⁻ passage needs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42291c6dafca5e513a306ef3953a2e7f7d1f43f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
