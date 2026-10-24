# symmetricLogComb_le_four_thirds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128a0572-4bc5-db54-f2bc-0cb0f61de62b",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_le_four_thirds",
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
  "slug": "symmetriclogcomb-le-four-thirds--941a0cecdfd763681b717708",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941a0cecdfd763681b7177082cf65ffaa835612e03b6d659bfd133d89362343d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128a0572-4bc5-db54-f2bc-0cb0f61de62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_le_four_thirds (t : ℝ) (ht_pos : 0 < t) (ht_le : t ≤ 1/2) :
    symmetricLogComb t ≤ 4/3 := by
  have ht_lt : t < 1 := by linarith
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt2_pos : 0 < 1 - t^2 := by nlinarith [sq_nonneg t]
  have hlog1p_pos : 0 < log (1 + t) := log_pos (by linarith : (1 : ℝ) < 1 + t)
  have hlog1m_neg : log (1 - t) < 0 := log_neg h1mt_pos (by linarith : 1 - t < (1 : ℝ))
  have hden_neg : log (1 + t) * log (1 - t) < 0 := mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg

  -- Lower bound for log(1+t).
  have hlog1p_lb : 2 * t / (t + 2) ≤ log (1 + t) := le_log_one_add_of_nonneg (le_of_lt ht_pos)

  -- Upper bound for log(1-t): log(1-t) ≤ -2t/(2-t).
  have hlog1m_ub : log (1 - t) ≤ -(2 * t / (2 - t)) := by
    have hfrac_nonneg : 0 ≤ t / (1 - t) := div_nonneg (le_of_lt ht_pos) (le_of_lt h1mt_pos)
    have h := le_log_one_add_of_nonneg hfrac_nonneg
    have h1mt_ne : 1 - t ≠ 0 := ne_of_gt h1mt_pos
    have hleft : 2 * (t / (1 - t)) / (t / (1 - t) + 2) = 2 * t / (2 - t) := by
      have h2mt_ne : 2 - t ≠ 0 := by linarith
      field_simp [h1mt_ne, h2mt_ne]
      ring
    have hright : log (1 + t / (1 - t)) = -log (1 - t) := by
      calc
        log (1 + t / (1 - t)) = log ((1 - t + t) / (1 - t)) := by
          congr
          field_simp [h1mt_ne]
        _ = log ((1 : ℝ) / (1 - t)) := by ring
        _ = log ((1 - t)⁻¹) := by field_simp [h1mt_ne]
        _ = -log (1 - t) := by simpa using log_inv h1mt_ne
    rw [hleft, hright] at h
    linarith

  -- Product bound.
  have hprod_ub : log (1 + t) * log (1 - t) ≤ (2 * t / (t + 2)) * (-(2 * t / (2 - t))) := by
    have hlog1p_nonneg : 0 ≤ log (1 + t) := le_of_lt hlog1p_pos
    have hneg_nonpos : -(2 * t / (2 - t)) ≤ 0 := by
      have : 0 ≤ 2 * t / (2 - t) := by
        refine div_nonneg ?_ ?_
        · positivity
        · linarith
      linarith
    have h1 : log (1 + t) * log (1 - t) ≤ log (1 + t) * (-(2 * t / (2 - t))) :=
      mul_le_mul_of_nonneg_left hlog1m_ub hlog1p_nonneg
    have h2 : log (1 + t) * (-(2 * t / (2 - t))) ≤ (2 * t / (t + 2)) * (-(2 * t / (2 - t))) :=
      mul_le_mul_of_nonpos_right hlog1p_lb hneg_nonpos
    exact le_trans h1 h2

  -- Numerator lower bound: log(1-u) ≥ -u/(1-u), with u = t².
  have hnum_lb : -(t^2) / (1 - t^2) ≤ log (1 - t^2) := by
    have h := one_sub_inv_le_log_of_pos h1mt2_pos
    have hrew : -(t^2) / (1 - t^2) = (1 : ℝ) - 1 / (1 - t^2) := by
      field_simp [ne_of_gt h1mt2_pos]
      ring_nf
    calc
      -(t^2) / (1 - t^2) = (1 : ℝ) - 1 / (1 - t^2) := hrew
      _ ≤ log (1 - t^2) := by simpa [one_div] using h

  rw [symmetricLogComb_alt t ht_pos ht_lt]
  have hmain : (4 / 3 : ℝ) * (log (1 + t) * log (1 - t)) ≤ log (1 - t^2) := by
    have hstep1 : (4 / 3 : ℝ) * (log (1 + t) * log (1 - t))
        ≤ (4 / 3 : ℝ) * ((2 * t / (t + 2)) * (-(2 * t / (2 - t)))) :=
      mul_le_mul_of_nonneg_left hprod_ub (by positivity)
    have hstep2 : (4 / 3 : ℝ) * ((2 * t / (t + 2)) * (-(2 * t / (2 - t)))
        ) ≤ -(t^2) / (1 - t^2) := by
      have h2mt_ne : 2 - t ≠ 0 := by linarith
      have htp2_ne : t + 2 ≠ 0 := by linarith
      have hrew : (4 / 3 : ℝ) * ((2 * t / (t + 2)) * (-(2 * t / (2 - t))))
          = -(16 * t^2) / (3 * ((t + 2) * (2 - t))) := by
        field_simp [h2mt_ne, htp2_ne]
        ring
      rw [hrew]
      have hcoef : 1 / (1 - t^2) ≤ 16 / (3 * ((t + 2) * (2 - t))) := by
        have hA : 0 < 3 * ((t + 2) * (2 - t)) := by nlinarith
        have hAB : 3 * ((t + 2) * (2 - t)) ≤ 16 * (1 - t^2) := by nlinarith [ht_le]
        have hrecip : 1 / (16 * (1 - t^2)) ≤ 1 / (3 * ((t + 2) * (2 - t))) :=
          one_div_le_one_div_of_le hA hAB
        have hmul := mul_le_mul_of_nonneg_left hrecip (by norm_num : (0 : ℝ) ≤ 16)
        have h1mt2_ne : (1 - t^2) ≠ 0 := by nlinarith
        have hleft : 16 * (1 / (16 * (1 - t^2))) = 1 / (1 - t^2) := by
          field_simp [h1mt2_ne]
        have hright : 16 * (1 / (3 * ((t + 2) * (2 - t)))) = 16 / (3 * ((t + 2) * (2 - t))) := by
          ring
        calc
          1 / (1 - t^2) = 16 * (1 / (16 * (1 - t^2))) := by symm; exact hleft
          _ ≤ 16 * (1 / (3 * ((t + 2) * (2 - t)))) := hmul
          _ = 16 / (3 * ((t + 2) * (2 - t))) := hright
      have ht2_nonneg : 0 ≤ t^2 := sq_nonneg t
      have hmul : t^2 / (1 - t^2) ≤ (16 * t^2) / (3 * ((t + 2) * (2 - t))) := by
        have hmul' := mul_le_mul_of_nonneg_left hcoef ht2_nonneg
        simpa [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using hmul'
      have hneg : -(16 * t^2 / (3 * ((t + 2) * (2 - t)))) ≤ -(t^2 / (1 - t^2)) := neg_le_neg hmul
      simpa [neg_div] using hneg
    exact le_trans hstep1 (le_trans hstep2 hnum_lb)
  exact (div_le_iff_of_neg hden_neg).2 hmain

/-! ## Limit theorems for the symmetric combination -/

/-- Helper: log(1+t)/t → 1 as t → 0⁺.
    This follows from log'(1) = 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
