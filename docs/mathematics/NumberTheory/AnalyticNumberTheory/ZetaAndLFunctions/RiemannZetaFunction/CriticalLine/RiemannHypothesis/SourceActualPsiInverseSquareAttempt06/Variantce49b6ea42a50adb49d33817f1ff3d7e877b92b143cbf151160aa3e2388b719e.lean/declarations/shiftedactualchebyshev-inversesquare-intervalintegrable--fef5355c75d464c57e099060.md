# shiftedActualChebyshev_inverseSquare_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bb3c1c5-d01c-691e-9cef-4a9687aa90c5",
  "kind": "theorem",
  "lexical_name": "shiftedActualChebyshev_inverseSquare_intervalIntegrable",
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
  "slug": "shiftedactualchebyshev-inversesquare-intervalintegrable--fef5355c75d464c57e099060",
  "source": {
    "blob": "44f0547c48b38fab980cd216278daf5c3b20e123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef5355c75d464c57e099060897614cdb53770a2d59e2c65845603644ddfc96b",
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

Occurrence: `result:5bb3c1c5-d01c-691e-9cef-4a9687aa90c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedActualChebyshev_inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y => shiftedActualChebyshev y / y ^ 2) volume 2 X := by
  let c := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  apply ((psi_inverseSquare_intervalIntegrable X hX).sub
    (reciprocal_intervalIntegrable X hX)).add
      ((inverseSquare_intervalIntegrable X hX).const_mul c) |>.congr
  intro y hy
  have hy0 : y ≠ 0 := by
    have h := (uIoc_of_le hX ▸ hy).1
    linarith
  dsimp only [shiftedActualChebyshev, c]
  field_simp

/-- Exact requested identity for EVERY real X >= 2, with closed prime powers and its true gamma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantce49b6ea42a50adb49d33817f1ff3d7e877b92b143cbf151160aa3e2388b719e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f0547c48b38fab980cd216278daf5c3b20e123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
