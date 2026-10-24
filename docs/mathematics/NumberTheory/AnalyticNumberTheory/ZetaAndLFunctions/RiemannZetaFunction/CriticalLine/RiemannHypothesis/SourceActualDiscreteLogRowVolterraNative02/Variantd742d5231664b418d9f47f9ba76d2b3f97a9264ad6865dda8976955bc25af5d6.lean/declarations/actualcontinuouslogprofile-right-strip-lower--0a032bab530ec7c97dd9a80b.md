# actualContinuousLogProfile_right_strip_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:836eaf1c-eb10-4df3-ca6b-1190789ac5f9",
  "kind": "theorem",
  "lexical_name": "actualContinuousLogProfile_right_strip_lower",
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
  "slug": "actualcontinuouslogprofile-right-strip-lower--0a032bab530ec7c97dd9a80b",
  "source": {
    "blob": "807cef1a5941b860dd33d856de711b586c41d766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantd742d5231664b418d9f47f9ba76d2b3f97a9264ad6865dda8976955bc25af5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a032bab530ec7c97dd9a80b1504019eee88d11d3083c21447afc9e11933b295",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantd742d5231664b418d9f47f9ba76d2b3f97a9264ad6865dda8976955bc25af5d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836eaf1c-eb10-4df3-ca6b-1190789ac5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualContinuousLogProfile_right_strip_lower (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ A) :
    s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) ≤
      actualContinuousLogProfile A (A-s) := by
  have hz : 0 < Real.sqrt (sourceNormalization A) :=
    Real.sqrt_pos.2 (source_normalization_pos A hA)
  have hden : 0 < A^4*Real.sqrt A*Real.sqrt (sourceNormalization A) := by positivity
  rw [actualContinuousLogProfile_eq_volterra A (A-s) hA (by linarith) (by linarith)]
  have hint : 0 ≤ ∫ y in A-s..A,
      Real.exp (y/2)*(bumpInterior A y/Real.sqrt (sourceNormalization A)) := by
    apply intervalIntegral.integral_nonneg (by linarith)
    intro y hy
    unfold bumpInterior
    positivity
  have hpow : 1 ≤ (2-s/A)^4 := by
    have hq : s/A ≤ 1 := (div_le_iff₀ (by linarith : 0 < A)).2 (by simpa using hsA)
    have hp : 1 ≤ 2-s/A := by linarith
    nlinarith [sq_nonneg (2-s/A), sq_nonneg ((2-s/A)^2-1)]
  have hb : s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) ≤
      bumpInterior A (A-s)/Real.sqrt (sourceNormalization A) := by
    rw [bump_endpoint A s hA, div_div]
    apply div_le_div_of_nonneg_right _ hden.le
    nlinarith [show 0 ≤ s^4 by positivity]
  exact hb.trans (le_add_of_nonneg_right (mul_nonneg (Real.exp_pos _).le hint))

/-- The literal discrete-minus-continuous remainder is negative on this genuine strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantd742d5231664b418d9f47f9ba76d2b3f97a9264ad6865dda8976955bc25af5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantd742d5231664b418d9f47f9ba76d2b3f97a9264ad6865dda8976955bc25af5d6.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807cef1a5941b860dd33d856de711b586c41d766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
