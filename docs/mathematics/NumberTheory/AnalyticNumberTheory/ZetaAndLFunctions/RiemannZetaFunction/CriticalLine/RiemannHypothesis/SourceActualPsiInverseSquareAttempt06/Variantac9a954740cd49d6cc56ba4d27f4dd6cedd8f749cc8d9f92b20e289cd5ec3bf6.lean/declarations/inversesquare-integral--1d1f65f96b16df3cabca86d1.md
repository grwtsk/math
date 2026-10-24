# inverseSquare_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce0af352-d675-ffd3-aac0-f6715a6678ff",
  "kind": "theorem",
  "lexical_name": "inverseSquare_integral",
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
  "slug": "inversesquare-integral--1d1f65f96b16df3cabca86d1",
  "source": {
    "blob": "21a225dcbb1336cea4cc278e84ecf80346fd26c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d1f65f96b16df3cabca86d19b8a905d92df6bbddae623f88548f4c28e990cc2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce0af352-d675-ffd3-aac0-f6715a6678ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverseSquare_integral (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, (1 : ℝ) / y ^ 2) = 1 / 2 - 1 / X := by
  have hd (y : ℝ) (hy : y ∈ uIcc (2 : ℝ) X) :
      HasDerivAt (fun y : ℝ => -y⁻¹) (1 / y ^ 2) y := by
    rw [uIcc_of_le hX] at hy
    have h := (hasDerivAt_const y (-1 : ℝ)).div (hasDerivAt_id y)
      (show y ≠ 0 by linarith [hy.1])
    convert h using 1
    · funext z
      simp [div_eq_mul_inv]
    · simp
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (inverseSquare_intervalIntegrable X hX)
  exact hi.trans (by norm_num [one_div] <;> ring)

/-- The independently supplied Xi has an integrable inverse-square finite density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt06/Variantac9a954740cd49d6cc56ba4d27f4dd6cedd8f749cc8d9f92b20e289cd5ec3bf6.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a225dcbb1336cea4cc278e84ecf80346fd26c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
