# ex_pi_gt_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80893f4a-065b-a6a3-0c76-eeb57360085e",
  "kind": "theorem",
  "lexical_name": "ex_pi_gt_neg",
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
  "slug": "ex-pi-gt-neg--7e13c8fa1da8a0846718cc14",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e13c8fa1da8a0846718cc143b9759dba2ec748cbcaab0d782543ebb8fdf291d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80893f4a-065b-a6a3-0c76-eeb57360085e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ex_pi_gt_neg
    (m xₐ : ℝ)
    (hm : m ≤ 0)
    (hxₐ : 1 < xₐ)
    (hlower : ∀ x > xₐ,
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        + (m * x / log x ^ 6) < pi x) :
    ∀ x > exp 1 * xₐ,
      exp 1 * x / log x * pi (x / exp 1) >
        x ^ 2 * (
          1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5
          + 65 / log x ^ 6 + εneg m xₐ x / log x ^ 7) := by
  intro x hx
  have hxe : exp 1 < x := by
    have h1 : exp 1 ≤ exp 1 * xₐ := by
      nlinarith [hxₐ, exp_pos (1 : ℝ)]
    grind
  have hlog_gt1 : 1 < log x := by
    simpa using log_lt_log (show 0 < exp 1 by positivity) hxe
  have hlog_pos : 0 < log x := by linarith
  have hx_pos : 0 < x := lt_trans (exp_pos 1) hxe
  have hy_gt : x / exp 1 > xₐ := by
    have hmul : xₐ * exp 1 < x := by simpa [mul_comm] using hx
    exact (lt_div_iff₀ (exp_pos 1)).2 hmul
  have hlow := hlower (x / exp 1) hy_gt
  have hmul_pos : 0 < exp 1 * x / log x :=
    div_pos (mul_pos (exp_pos 1) hx_pos) hlog_pos
  have hmul := mul_lt_mul_of_pos_left hlow hmul_pos
  have hlog_div : log (x / exp 1) = log x - 1 := by
    rw [log_div (show x ≠ 0 by linarith) (show exp 1 ≠ 0 by positivity), log_exp]
  have hfrom0 :
      exp 1 * x / log x *
        ((x / exp 1) * ∑ k ∈ Finset.range 5, (k.factorial / (log x - 1) ^ (k + 1))
          + (m * (x / exp 1) / (log x - 1) ^ 6))
      < exp 1 * x / log x * pi (x / exp 1) := by
    simpa [hlog_div] using hmul
  let S : ℝ := ∑ k ∈ Finset.range 5, (k.factorial / (log x - 1) ^ (k + 1))
  have hfrom :
      x ^ 2 * ((1 / log x) * (S + m / (log x - 1) ^ 6))
      < exp 1 * x / log x * pi (x / exp 1) := by
    have hleft :
        exp 1 * x / log x * ((x / exp 1) * S + (m * (x / exp 1) / (log x - 1) ^ 6))
        = x ^ 2 * ((1 / log x) * (S + m / (log x - 1) ^ 6)) := by
      field_simp [hlog_pos.ne', show (exp 1 : ℝ) ≠ 0 by positivity]
    simpa [S, hleft] using hfrom0
  have hsum :
      S =
        1 / (log x - 1) + 1 / (log x - 1) ^ 2 + 2 / (log x - 1) ^ 3 +
        6 / (log x - 1) ^ 4 + 24 / (log x - 1) ^ 5 := by
    dsimp [S]
    simp [Finset.sum_range_succ, Nat.factorial]
  have hfac :
      (1 / log x) * S
      ≥
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
        + (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
            30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7 := by
    simpa [hsum] using shift_factorial_lower (log x) hlog_gt1
  have hxₐ_log_pos : 0 < log xₐ := log_pos hxₐ
  have hlogxₐ_le : log xₐ + 1 ≤ log x := by
    have hmul : exp 1 * xₐ < x := by simpa [mul_comm] using hx
    have hlog := log_lt_log (show 0 < exp 1 * xₐ by positivity) hmul
    have hlog_mul : log (exp 1 * xₐ) = log xₐ + 1 := by
      rw [log_mul (by positivity) (by positivity), log_exp]
      ring
    linarith
  have hmterm :
      m / (log x * (log x - 1) ^ 6)
      ≥ ((1 + 1 / log xₐ) ^ 6 * m) / log x ^ 7 := by
    simpa using shift_m_lower_of_nonpos m xₐ (log x) hm hxₐ_log_pos hlogxₐ_le
  have hcore :
      (1 / log x) * (S + m / (log x - 1) ^ 6)
      ≥
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
        + εneg m xₐ x / log x ^ 7 := by
    have hsplit :
        (1 / log x) * (S + m / (log x - 1) ^ 6)
        = (1 / log x) * S + m / (log x * (log x - 1) ^ 6) := by
      calc
        (1 / log x) * (S + m / (log x - 1) ^ 6)
            = (1 / log x) * S + (1 / log x) * (m / (log x - 1) ^ 6) := by ring
        _ = (1 / log x) * S + m / (log x * (log x - 1) ^ 6) := by
          field_simp [hlog_pos.ne']
    have hsum' := add_le_add hfac hmterm
    have hsum'' :
        1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
            (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
              30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
          + ((1 + 1 / log xₐ) ^ 6 * m) / log x ^ 7
        ≤ (1 / log x) * (S + m / (log x - 1) ^ 6) := by
      calc
        1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
            (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
              30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
          + ((1 + 1 / log xₐ) ^ 6 * m) / log x ^ 7
            ≤ (1 / log x) * S + m / (log x * (log x - 1) ^ 6) := hsum'
        _ = (1 / log x) * (S + m / (log x - 1) ^ 6) := hsplit.symm
    calc
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
          εneg m xₐ x / log x ^ 7
          =
            1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
              (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
                30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
              + ((1 + 1 / log xₐ) ^ 6 * m) / log x ^ 7 := by
                simp [εneg]
                ring
      _ ≤ (1 / log x) * (S + m / (log x - 1) ^ 6) := hsum''
  have htarget_le :
      x ^ 2 *
          (1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
            εneg m xₐ x / log x ^ 7)
      ≤ x ^ 2 * ((1 / log x) * (S + m / (log x - 1) ^ 6)) :=
    mul_le_mul_of_nonneg_left hcore (sq_nonneg x)
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
