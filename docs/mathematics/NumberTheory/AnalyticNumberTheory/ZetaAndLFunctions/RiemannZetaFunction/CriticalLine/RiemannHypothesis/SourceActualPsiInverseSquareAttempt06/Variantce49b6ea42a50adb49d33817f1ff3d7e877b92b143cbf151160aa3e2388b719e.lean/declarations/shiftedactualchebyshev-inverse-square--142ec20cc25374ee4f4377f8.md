# shiftedActualChebyshev_inverse_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32252fc6-1642-6e99-bc79-2dae186e5086",
  "kind": "theorem",
  "lexical_name": "shiftedActualChebyshev_inverse_square",
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
  "slug": "shiftedactualchebyshev-inverse-square--142ec20cc25374ee4f4377f8",
  "source": {
    "blob": "44f0547c48b38fab980cd216278daf5c3b20e123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142ec20cc25374ee4f4377f88ea1945de4dd6be580e493f30917564eda74a524",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32252fc6-1642-6e99-bc79-2dae186e5086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedActualChebyshev_inverse_square (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, shiftedActualChebyshev y / y ^ 2) =
      mangoldtLogError (Real.log X) + Real.eulerMascheroniConstant -
        shiftedActualChebyshev X / X := by
  have hX0 : 0 < X := by linarith
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have he : (∫ y in 2..X, shiftedActualChebyshev y / y ^ 2) =
      (∫ y in 2..X, Chebyshev.psi y / y ^ 2) -
      (∫ y in 2..X, (1 : ℝ) / y) + c * (∫ y in 2..X, (1 : ℝ) / y ^ 2) := by
    calc
      _ = ∫ y in 2..X, Chebyshev.psi y / y ^ 2 - 1 / y + c * (1 / y ^ 2) := by
        apply intervalIntegral.integral_congr
        intro y hy
        have hy0 : y ≠ 0 := by
          rw [uIcc_of_le hX] at hy
          linarith [hy.1]
        dsimp only [shiftedActualChebyshev, c]
        field_simp
      _ = _ := by
        rw [intervalIntegral.integral_add
          ((psi_inverseSquare_intervalIntegrable X hX).sub
            (reciprocal_intervalIntegrable X hX))
          ((inverseSquare_intervalIntegrable X hX).const_mul c),
          intervalIntegral.integral_sub (psi_inverseSquare_intervalIntegrable X hX)
            (reciprocal_intervalIntegrable X hX), intervalIntegral.integral_const_mul]
  rw [he, actual_psi_inverse_square X hX, inverseSquare_integral X hX,
    integral_one_div_of_pos (by norm_num) hX0,
    Real.log_div hX0.ne' (by norm_num)]
  unfold mangoldtLogError shiftedActualChebyshev
  dsimp only [c]
  field_simp
  ring

end FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f0547c48b38fab980cd216278daf5c3b20e123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
