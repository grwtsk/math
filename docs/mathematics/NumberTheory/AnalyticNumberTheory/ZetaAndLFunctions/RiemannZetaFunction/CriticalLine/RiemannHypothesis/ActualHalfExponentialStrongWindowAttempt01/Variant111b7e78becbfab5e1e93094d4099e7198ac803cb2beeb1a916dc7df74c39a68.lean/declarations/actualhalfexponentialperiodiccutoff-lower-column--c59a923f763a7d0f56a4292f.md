# actualHalfExponentialPeriodicCutoff_lower_column

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97126ae7-3400-b4a9-b595-df3db6ebb27f",
  "kind": "theorem",
  "lexical_name": "actualHalfExponentialPeriodicCutoff_lower_column",
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
  "slug": "actualhalfexponentialperiodiccutoff-lower-column--c59a923f763a7d0f56a4292f",
  "source": {
    "blob": "1c555e7df66f54baf099d6b5b3f1e7f36238c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt01/Variant111b7e78becbfab5e1e93094d4099e7198ac803cb2beeb1a916dc7df74c39a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c59a923f763a7d0f56a4292f13cf14521ee5ad4ceebe1ea3b6e7c982561b939f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt01/Variant111b7e78becbfab5e1e93094d4099e7198ac803cb2beeb1a916dc7df74c39a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97126ae7-3400-b4a9-b595-df3db6ebb27f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfExponentialPeriodicCutoff_lower_column {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hscaled := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  have hpoly : A ^ 2 + 1 ≤ (A / 2) ^ 3 / 6 := by nlinarith
  have he := Real.pow_div_factorial_le_exp (by linarith : 0 ≤ A / 2) 3
  norm_num only [Nat.factorial, Nat.cast_ofNat] at he
  unfold actualHalfExponentialPeriodicCutoff
  simp only [Nat.cast_add, Nat.cast_one]
  exact (add_le_add_right hU 1).trans (hpoly.trans he)

/-- The stronger actual source orders retain both the closed lower column and true NAT quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt01/Variant111b7e78becbfab5e1e93094d4099e7198ac803cb2beeb1a916dc7df74c39a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt01/Variant111b7e78becbfab5e1e93094d4099e7198ac803cb2beeb1a916dc7df74c39a68.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c555e7df66f54baf099d6b5b3f1e7f36238c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
