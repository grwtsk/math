# logarithm_grid_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:660e2782-cd40-5613-0413-f6657cffb433",
  "kind": "theorem",
  "lexical_name": "logarithm_grid_error_le",
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
  "slug": "logarithm-grid-error-le--b6cd8bf6054aa14641a10421",
  "source": {
    "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 281,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6cd8bf6054aa14641a1042153869f05efae6a52d3ebfad15fd0a8559aa6bb78",
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

Occurrence: `result:660e2782-cd40-5613-0413-f6657cffb433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithm_grid_error_le
    {X : ℕ} (hX : 0 < X)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |logarithm t -
      logarithm (location X (gridIndex X t))| ≤
        1 / (X : ℝ) := by
  let y : ℝ := (X : ℝ) * (1 + t)
  let m : ℕ := gridIndex X t
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hmbounds := gridIndex_bounds hX ht
  have hmX : X ≤ m := by simpa [m] using hmbounds.1
  have hmpos : (0 : ℝ) < (m : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le hX hmX)
  have hy0 : 0 ≤ y := by
    dsimp [y]
    exact mul_nonneg hXr.le (by linarith [ht.1])
  have hmy : (m : ℝ) ≤ y := by
    dsimp [m, y, gridIndex]
    exact Nat.floor_le hy0
  have hylt : y < (m : ℝ) + 1 := by
    dsimp [m, y, gridIndex]
    exact_mod_cast Nat.lt_floor_add_one ((X : ℝ) * (1 + t))
  have hypos : 0 < y := mul_pos hXr (by linarith [ht.1])
  have hratio1 : 1 ≤ y / (m : ℝ) :=
    (le_div_iff₀ hmpos).2 (by simpa using hmy)
  have hlog0 : 0 ≤ Real.log (y / (m : ℝ)) :=
    Real.log_nonneg hratio1
  have hlogle :
      Real.log (y / (m : ℝ)) ≤ y / (m : ℝ) - 1 :=
    Real.log_le_sub_one_of_pos (div_pos hypos hmpos)
  have hfrac :
      y / (m : ℝ) - 1 ≤ 1 / (X : ℝ) := by
    have hdiff : y - (m : ℝ) < 1 := by linarith
    have hmXr : (X : ℝ) ≤ (m : ℝ) := by exact_mod_cast hmX
    have h1m : 1 / (m : ℝ) ≤ 1 / (X : ℝ) :=
      one_div_le_one_div_of_le hXr hmXr
    calc
      y / (m : ℝ) - 1
          = (y - (m : ℝ)) / (m : ℝ) := by
            field_simp [hmpos.ne']
      _ ≤ 1 / (m : ℝ) :=
        div_le_div_of_nonneg_right (le_of_lt hdiff) hmpos.le
      _ ≤ 1 / (X : ℝ) := h1m
  have hlog :
      |Real.log (y / (m : ℝ))| ≤ 1 / (X : ℝ) := by
    rw [abs_of_nonneg hlog0]
    exact hlogle.trans hfrac
  have hX0 : (X : ℝ) ≠ 0 := hXr.ne'
  have hm0 : (m : ℝ) ≠ 0 := hmpos.ne'
  have hlogarithm :
      logarithm t -
        logarithm (location X m) =
      Real.log (y / (m : ℝ)) := by
    unfold logarithm location
    rw [show 1 + ((m : ℝ) / (X : ℝ) - 1) =
        (m : ℝ) / (X : ℝ) by ring]
    rw [show 1 + t = y / (X : ℝ) by
      dsimp [y]
      field_simp [hX0]]
    rw [← Real.log_div
      (div_ne_zero hypos.ne' hX0)
      (div_ne_zero hm0 hX0)]
    congr 1
    field_simp [hX0, hm0]
  rw [hlogarithm]
  exact hlog

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0848b6c414d19057d9738771f5225587186cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
