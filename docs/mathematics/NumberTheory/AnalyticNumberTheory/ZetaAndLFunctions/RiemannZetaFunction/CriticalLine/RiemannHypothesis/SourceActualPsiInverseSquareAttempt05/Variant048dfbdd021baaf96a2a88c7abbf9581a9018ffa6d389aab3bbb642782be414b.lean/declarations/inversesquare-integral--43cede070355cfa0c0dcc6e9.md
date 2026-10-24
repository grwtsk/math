# inverseSquare_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b09bf3b-aa6c-286c-6b52-302339b4c0e1",
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
  "slug": "inversesquare-integral--43cede070355cfa0c0dcc6e9",
  "source": {
    "blob": "ddd5e2a30d921c39b9f4d534a6752ba259891d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt05/Variant048dfbdd021baaf96a2a88c7abbf9581a9018ffa6d389aab3bbb642782be414b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43cede070355cfa0c0dcc6e95d57b2da6e400046fa99c4aac7fc56dc945e49a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt05/Variant048dfbdd021baaf96a2a88c7abbf9581a9018ffa6d389aab3bbb642782be414b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b09bf3b-aa6c-286c-6b52-302339b4c0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverseSquare_integral (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, (1 : ℝ) / y ^ 2) = 1 / 2 - 1 / X := by
  have hd (y : ℝ) (hy : y ∈ uIcc (2 : ℝ) X) :
      HasDerivAt (fun y : ℝ => -y⁻¹) (1 / y ^ 2) y := by
    rw [uIcc_of_le hX] at hy
    have h := (hasDerivAt_inv (show y ≠ 0 by linarith [hy.1])).neg
    simpa only [neg_neg, one_div] using h
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (inverseSquare_intervalIntegrable X hX)
  exact hi.trans (by norm_num [one_div] <;> ring)

/-- The independently supplied Xi has an integrable inverse-square finite density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt05/Variant048dfbdd021baaf96a2a88c7abbf9581a9018ffa6d389aab3bbb642782be414b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt05/Variant048dfbdd021baaf96a2a88c7abbf9581a9018ffa6d389aab3bbb642782be414b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd5e2a30d921c39b9f4d534a6752ba259891d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
