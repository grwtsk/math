# sourceMobiusKernel_sharp_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63214de4-7ae1-10be-045c-2af782e2c037",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_sharp_upper_zero",
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
  "slug": "sourcemobiuskernel-sharp-upper-zero--f30a446db469312cc33ed1be",
  "source": {
    "blob": "314bee26545ceddc83bcdfa9387d13e1204d7b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant3d4470c6ccc4aab510b030d9e655a0d3372375afc0c5cbd87cea4e1248c47ac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f30a446db469312cc33ed1bee49e25d7cffa08b4c3f9070faff3d324fbad6584",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant3d4470c6ccc4aab510b030d9e655a0d3372375afc0c5cbd87cea4e1248c47ac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63214de4-7ae1-10be-045c-2af782e2c037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_sharp_upper_zero {A d : ℝ} (hA : 1 ≤ A)
    (hd : Real.exp (2 * A) / 2 ≤ d) : sourceMobiusKernel A d = 0 := by
  have hA0 : 0 < A := by linarith
  have hd0 : 0 < d := (by positivity : 0 < Real.exp (2 * A) / 2).trans_le hd
  unfold sourceMobiusKernel
  apply Finset.sum_eq_zero
  intro k hk
  by_cases hk1 : k = 1
  · subst k
    simp [sourceKernelTerm]
  · have hk2 : (2 : ℝ) ≤ k := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hk).1; omega : 2 ≤ k)
    have hprod : Real.exp (2 * A) ≤ d * (k : ℝ) := by
      nlinarith [mul_le_mul_of_nonneg_left hk2 hd0.le]
    have hlog : 2 * A ≤ Real.log (d * (k : ℝ)) := by
      have h := Real.log_le_log (Real.exp_pos (2 * A)) hprod
      simpa only [Real.log_exp] using h
    have hz := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A
      (Real.log (d * (k : ℝ))) hA0 (hlog.trans (le_abs_self _))
    simp [sourceKernelTerm, exponentialTest, hz]

/-- The genuine upper-unit continuous row; no below-unit profile is inserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant3d4470c6ccc4aab510b030d9e655a0d3372375afc0c5cbd87cea4e1248c47ac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceOuterHalfScalarCutoffAndLinkedRowCancellation/Variant3d4470c6ccc4aab510b030d9e655a0d3372375afc0c5cbd87cea4e1248c47ac2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314bee26545ceddc83bcdfa9387d13e1204d7b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
