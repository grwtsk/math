# closed_actual_weight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ceda21e-ee43-3676-fd38-66b77fa1e9c7",
  "kind": "theorem",
  "lexical_name": "closed_actual_weight_sum",
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
  "slug": "closed-actual-weight-sum--16c4ca8f1d646c5ec38408c4",
  "source": {
    "blob": "eb02b9b91935dc8f507fd05c4e686b1c8b57a7f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant5faffbf408ba0e683eac9b67b8ee4228612f2c2978b4c2b4d8de2b40d51f1078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c4ca8f1d646c5ec38408c45a5428b71b33c20f61672bac1e83ec327c22b2c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant5faffbf408ba0e683eac9b67b8ee4228612f2c2978b4c2b4d8de2b40d51f1078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ceda21e-ee43-3676-fd38-66b77fa1e9c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closed_actual_weight_sum (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
      ((ArithmeticFunction.vonMangoldt n/Real.sqrt n:ℝ):ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n):ℂ)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  rw [← actualInitialPrime_tsum_eq_strict A hA]
  symm
  apply tsum_eq_sum
  intro n hn
  have hN : ⌊Real.exp (2*A)⌋₊ < n := by simpa only [Finset.mem_range, not_lt] using hn
  have hnr : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
  have hl : 2*A ≤ Real.log n := by
    simpa only [Real.log_exp] using (Real.log_le_log (Real.exp_pos _) hnr.le)
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
    (by linarith) (hl.trans (le_abs_self _))]
  simp

/-- The finite polynomial's full line already gives the complete original strict inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant5faffbf408ba0e683eac9b67b8ee4228612f2c2978b4c2b4d8de2b40d51f1078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative01/Variant5faffbf408ba0e683eac9b67b8ee4228612f2c2978b4c2b4d8de2b40d51f1078.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb02b9b91935dc8f507fd05c4e686b1c8b57a7f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
