# actualHalfExponentialPeriodicCutoff_lower_column

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd103907-f246-2df3-5a7f-738fc840b98f",
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
  "slug": "actualhalfexponentialperiodiccutoff-lower-column--35aa0afd6dbfc853d92f4aa1",
  "source": {
    "blob": "8ae1c7ec76ea504c846b3742e62449d4a34955ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt02/Variant275ac183dad1fdb5bce907470d24e3435518dfb3dc614a008ff113ca5b71ea83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35aa0afd6dbfc853d92f4aa1cd60cec5d4aeeb3d62bc56966b41ffedd8ba3239",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt02/Variant275ac183dad1fdb5bce907470d24e3435518dfb3dc614a008ff113ca5b71ea83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd103907-f246-2df3-5a7f-738fc840b98f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfExponentialPeriodicCutoff_lower_column {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hscaled := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  have hpoly : A ^ 2 + 1 ≤ (A / 2) ^ 3 / 6 := by nlinarith
  have he := Real.pow_div_factorial_le_exp (A / 2) (by linarith : 0 ≤ A / 2) 3
  norm_num only [Nat.factorial, Nat.cast_ofNat] at he
  unfold actualHalfExponentialPeriodicCutoff
  simp only [Nat.cast_add, Nat.cast_one]
  exact (add_le_add_right hU 1).trans (hpoly.trans he)

/-- The stronger actual source orders retain both the closed lower column and true NAT quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt02/Variant275ac183dad1fdb5bce907470d24e3435518dfb3dc614a008ff113ca5b71ea83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualHalfExponentialStrongWindowAttempt02/Variant275ac183dad1fdb5bce907470d24e3435518dfb3dc614a008ff113ca5b71ea83.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae1c7ec76ea504c846b3742e62449d4a34955ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
