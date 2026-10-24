# sub_mul_AminusPh_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c165380c-1e8b-c4cf-bc7a-e95016c1d744",
  "kind": "lemma",
  "lexical_name": "sub_mul_AminusPh_eq",
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
  "slug": "sub-mul-aminusph-eq--93c81c6a4e8cde43419ad243",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93c81c6a4e8cde43419ad243baab65577dfa02c2bd04702d61f233b2f9c57535",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c165380c-1e8b-c4cf-bc7a-e95016c1d744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_mul_AminusPh_eq (hT : 0 ≤ T) (hΦ : Continuous Φ) {y y' : ℝ} (hθ : y - y' ≠ 0)
    (φ φ' : ℝ) :
    (y - y') * AminusPh Φ T y y' φ φ'
      = (Real.sin ((y - y') * (2 * T) - (φ - φ')) * Cm Φ T y
          + Real.cos ((y - y') * (2 * T) - (φ - φ')) * Sm Φ T y
          - (Real.sin ((y - y') * T - (φ - φ')) * Cm Φ T y'
            + Real.cos ((y - y') * T - (φ - φ')) * Sm Φ T y'))
        + (Real.sin ((y - y') * (2 * T) - (φ - φ')) * Cp Φ T y'
          + Real.cos ((y - y') * (2 * T) - (φ - φ')) * Sp Φ T y'
          - (Real.sin ((y - y') * T - (φ - φ')) * Cp Φ T y
            + Real.cos ((y - y') * T - (φ - φ')) * Sp Φ T y)) := by
  unfold AminusPh Cm Sm Cp Sp
  have hcont : Continuous fun x => Φ x ^ 2 * ((y - y') *
      Jker (y - y') (x * y - (φ - φ')) (max (T - x) T) (min (2 * T - x) (2 * T))) := by
    have := continuous_Jker_offset_ph (y - y') y (φ - φ') T; fun_prop
  rw [← integral_const_mul]
  have e1 : ∀ x, (y - y') * (Φ x ^ 2 *
      Jker (y - y') (x * y - (φ - φ')) (max (T - x) T) (min (2 * T - x) (2 * T)))
      = Φ x ^ 2 * ((y - y') *
          Jker (y - y') (x * y - (φ - φ')) (max (T - x) T) (min (2 * T - x) (2 * T))) := by
    intro x; ring
  simp_rw [e1]
  rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (by linarith : -T ≤ T),
    ← intervalIntegral.integral_add_adjacent_intervals (b := 0)
      (hcont.intervalIntegrable _ _) (hcont.intervalIntegrable _ _)]
  have hL : ∫ x in (-T)..0, Φ x ^ 2 * ((y - y') *
      Jker (y - y') (x * y - (φ - φ')) (max (T - x) T) (min (2 * T - x) (2 * T)))
      = ∫ x in (-T)..0, Φ x ^ 2 * (Real.sin (((y - y') * (2 * T) - (φ - φ')) + x * y)
          - Real.sin (((y - y') * T - (φ - φ')) + x * y')) := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [Set.uIcc_of_le (by linarith : -T ≤ 0)] at hx
    simp only
    congr 1
    rw [max_eq_left (by linarith [hx.2]), min_eq_right (by linarith [hx.2]), Jker_of_ne hθ,
      mul_div_cancel₀ _ hθ]
    congr 1
    · rw [show (y - y') * (2 * T) + (x * y - (φ - φ')) = ((y - y') * (2 * T) - (φ - φ')) + x * y by ring]
    · rw [show (y - y') * (T - x) + (x * y - (φ - φ')) = ((y - y') * T - (φ - φ')) + x * y' by ring]
  have hR : ∫ x in (0:ℝ)..T, Φ x ^ 2 * ((y - y') *
      Jker (y - y') (x * y - (φ - φ')) (max (T - x) T) (min (2 * T - x) (2 * T)))
      = ∫ x in (0:ℝ)..T, Φ x ^ 2 * (Real.sin (((y - y') * (2 * T) - (φ - φ')) + x * y')
          - Real.sin (((y - y') * T - (φ - φ')) + x * y)) := by
    apply intervalIntegral.integral_congr
    intro x hx
    rw [Set.uIcc_of_le hT] at hx
    simp only
    congr 1
    rw [max_eq_right (by linarith [hx.1]), min_eq_left (by linarith [hx.1]), Jker_of_ne hθ,
      mul_div_cancel₀ _ hθ]
    congr 1
    · rw [show (y - y') * (2 * T - x) + (x * y - (φ - φ')) = ((y - y') * (2 * T) - (φ - φ')) + x * y' by ring]
    · rw [show (y - y') * T + (x * y - (φ - φ')) = ((y - y') * T - (φ - φ')) + x * y by ring]
  rw [hL, hR, integral_sq_mul_sin_sub_sin hΦ, integral_sq_mul_sin_sub_sin hΦ]

end PhaseO1

/-! ## The magnitude/phase form of P_{X,c} -/

section PXcForm

/-- n^(−1/2 − iτ) = (√n)⁻¹·e^{−i·τ·log n} for n ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
