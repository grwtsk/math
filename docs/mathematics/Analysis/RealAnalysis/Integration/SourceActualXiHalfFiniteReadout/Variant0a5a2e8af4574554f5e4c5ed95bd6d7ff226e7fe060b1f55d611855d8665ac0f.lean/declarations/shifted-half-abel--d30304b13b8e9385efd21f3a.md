# shifted_half_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9281101-af89-74e1-90b9-78343e1916a8",
  "kind": "theorem",
  "lexical_name": "shifted_half_abel",
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
  "slug": "shifted-half-abel--d30304b13b8e9385efd21f3a",
  "source": {
    "blob": "d67828f534b9473de280816c4ad8bd4fbd84ad56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d30304b13b8e9385efd21f3ad11f6f4b9450196db7817f3ce73b56828a337b1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9281101-af89-74e1-90b9-78343e1916a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shifted_half_abel {Y : ℝ} (hY : 2 ≤ Y) :
    (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      2 * ((∑ n ∈ Finset.Icc 0 (Nat.floor Y),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) - Chebyshev.psi Y / Real.sqrt Y -
        Real.sqrt Y + Real.sqrt 2 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) *
            (1 / Real.sqrt 2 - 1 / Real.sqrt Y)) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have h1 : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    exact (continuousAt_const.div Real.continuous_sqrt.continuousAt
      (Real.sqrt_pos.2 (by linarith [hx.1])).ne').continuousWithinAt
  have h2 : IntervalIntegrable (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    have hp : 0 < x := by linarith [hx.1]
    exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
      (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt
  have he : (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) -
        (∫ x in 2..Y, 1 / Real.sqrt x) + c * (∫ x in 2..Y, 1 / x ^ (3 / 2 : ℝ)) := by
    calc
      _ = ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) -
          1 / Real.sqrt x + c * (1 / x ^ (3 / 2 : ℝ)) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hY] at hx
        have hp : 0 < x := by linarith [hx.1]
        dsimp only
        rw [power_three_halves hp]
        dsimp only [shiftedActualChebyshev, c]
        field_simp
      _ = _ := by
        rw [intervalIntegral.integral_add ((psi_half_integrable hY).sub h1) (h2.const_mul c),
          intervalIntegral.integral_sub (psi_half_integrable hY) h1,
          intervalIntegral.integral_const_mul]
  rw [he, psi_half_abel hY, (continuous_integrals hY).1, (continuous_integrals hY).2]
  dsimp only [c]
  ring

/-- Finite closed Abel keeps the seven atom in its lower psi trace and every later prime power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67828f534b9473de280816c4ad8bd4fbd84ad56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
