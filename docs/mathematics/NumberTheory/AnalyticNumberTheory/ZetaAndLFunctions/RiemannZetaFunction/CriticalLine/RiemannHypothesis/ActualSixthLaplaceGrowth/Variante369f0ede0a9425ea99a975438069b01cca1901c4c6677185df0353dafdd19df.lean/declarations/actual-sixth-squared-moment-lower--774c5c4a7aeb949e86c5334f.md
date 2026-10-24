# actual_sixth_squared_moment_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cab4a76-4a95-2062-95ce-949ae26fb78c",
  "kind": "theorem",
  "lexical_name": "actual_sixth_squared_moment_lower",
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
  "slug": "actual-sixth-squared-moment-lower--774c5c4a7aeb949e86c5334f",
  "source": {
    "blob": "d9e23669f6630852e9664ff3161c86bfcf18b60f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:774c5c4a7aeb949e86c5334f2b11c36b46a831912bd72ea5a6536a52b86bb8e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cab4a76-4a95-2062-95ce-949ae26fb78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_squared_moment_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) ≤
      (1 / 6) * (testMoment A (1 / 6)) ^ 2 := by
  have hpos : 0 < A := by linarith
  have hb := actual_sixth_normalized_moment_abs_lower hA
  have h0 : 0 ≤ (2 / 9 : ℝ) * (Real.exp ((A - 2) / 6) /
      (A ^ 4 * Real.sqrt A)) := by positivity
  have hs := pow_le_pow_left₀ h0 hb 2
  rw [sq_abs] at hs
  have hscaled := mul_le_mul_of_nonneg_left hs (by norm_num : (0 : ℝ) ≤ 1 / 6)
  have he : Real.exp ((A - 2) / 6) ^ 2 = Real.exp ((A - 2) / 3) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have heq : (1 / 6 : ℝ) * ((2 / 9 : ℝ) * (Real.exp ((A - 2) / 6) /
      (A ^ 4 * Real.sqrt A))) ^ 2 =
      (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) := by
    simp only [mul_pow, div_pow, he, Real.sq_sqrt hpos.le]
    field_simp [hpos.ne']
    ring
  rw [heq] at hscaled
  exact hscaled

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplaceGrowth
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e23669f6630852e9664ff3161c86bfcf18b60f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
