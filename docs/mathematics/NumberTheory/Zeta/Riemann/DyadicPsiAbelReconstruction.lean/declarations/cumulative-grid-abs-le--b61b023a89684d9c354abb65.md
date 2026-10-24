# cumulative_grid_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a6a17aa-7ce8-0300-1f21-9b7840939542",
  "kind": "theorem",
  "lexical_name": "cumulative_grid_abs_le",
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
  "slug": "cumulative-grid-abs-le--b61b023a89684d9c354abb65",
  "source": {
    "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 353,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b61b023a89684d9c354abb65e6ed0502644f7f56b2e32283a9fca1fae0801dec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a6a17aa-7ce8-0300-1f21-9b7840939542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_grid_abs_le
    {X m : ℕ} (hX : 2 ≤ X)
    (hXm : X ≤ m) (hm2X : m ≤ 2 * X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A) :
    |cumulative X (location X m)| ≤
      3 * A / (X : ℝ) := by
  rw [cumulative_at_grid_eq_psiError hX hXm hm2X]
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by norm_num : 0 < 2) hX)
  have hmr : (0 : ℝ) < (m : ℝ) :=
    hXr.trans_le (by exact_mod_cast hXm)
  have hEX := hA.2 (X : ℝ) (by
    constructor
    · exact le_rfl
    · exact_mod_cast (by omega : X ≤ 2 * X))
  have hEm := hA.2 (m : ℝ) (by
    constructor
    · exact_mod_cast hXm
    · exact_mod_cast hm2X)
  have htermX :
      |psiError (X : ℝ) / (X : ℝ)| ≤ A / (X : ℝ) := by
    rw [abs_div, abs_of_pos hXr]
    exact div_le_div_of_nonneg_right hEX hXr.le
  have htermM :
      |psiError (m : ℝ) / (m : ℝ)| ≤ A / (X : ℝ) := by
    rw [abs_div, abs_of_pos hmr]
    calc
      |psiError (m : ℝ)| / (m : ℝ)
          ≤ A / (m : ℝ) :=
        div_le_div_of_nonneg_right hEm hmr.le
      _ ≤ A / (X : ℝ) :=
        div_le_div_of_nonneg_left hA.1 hXr
          (by exact_mod_cast hXm)
  have hint :
      |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2| ≤
        A / (X : ℝ) := by
    have hnorm :=
      intervalIntegral.norm_integral_le_of_norm_le_const
        (f := fun u : ℝ => psiError u / u^2)
        (a := (X : ℝ)) (b := (m : ℝ))
        (fun u hu => by
          rw [Set.uIoc_of_le (by exact_mod_cast hXm)] at hu
          have huX : (X : ℝ) ≤ u := hu.1.le
          have hu2X : u ≤ ((2 * X : ℕ) : ℝ) :=
            hu.2.trans (by exact_mod_cast hm2X)
          have hEu := hA.2 u ⟨huX, hu2X⟩
          have hu0 : 0 < u := hXr.trans_le huX
          rw [Real.norm_eq_abs, abs_div, abs_pow, abs_of_pos hu0]
          have hden : (X : ℝ)^2 ≤ u^2 := by nlinarith
          exact (div_le_div_of_nonneg_right hEu (sq_nonneg u)).trans
            (div_le_div_of_nonneg_left hA.1 (sq_pos_of_pos hXr) hden))
    rw [Real.norm_eq_abs] at hnorm
    have hlen :
        |(m : ℝ) - (X : ℝ)| ≤ (X : ℝ) := by
      rw [abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast hXm))]
      have hm : (m : ℝ) ≤ 2 * (X : ℝ) := by exact_mod_cast hm2X
      linarith
    calc
      |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2|
          ≤ (A / (X : ℝ)^2) *
              |(m : ℝ) - (X : ℝ)| := hnorm
      _ ≤ (A / (X : ℝ)^2) * (X : ℝ) :=
        mul_le_mul_of_nonneg_left hlen (div_nonneg hA.1 (sq_nonneg _))
      _ = A / (X : ℝ) := by
        field_simp [hXr.ne']
  have htri :
      |psiError (m : ℝ) / (m : ℝ) -
          psiError (X : ℝ) / (X : ℝ) +
          ∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2|
        ≤
      (|psiError (m : ℝ) / (m : ℝ)| +
          |psiError (X : ℝ) / (X : ℝ)|) +
        |∫ u in (X : ℝ)..(m : ℝ), psiError u / u^2| := by
    exact (abs_add_le _ _).trans
      (add_le_add (abs_sub _ _) le_rfl)
  exact htri.trans (by linarith [show 3 * A / (X : ℝ) = 3 * (A / (X : ℝ)) by ring])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0848b6c414d19057d9738771f5225587186cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
