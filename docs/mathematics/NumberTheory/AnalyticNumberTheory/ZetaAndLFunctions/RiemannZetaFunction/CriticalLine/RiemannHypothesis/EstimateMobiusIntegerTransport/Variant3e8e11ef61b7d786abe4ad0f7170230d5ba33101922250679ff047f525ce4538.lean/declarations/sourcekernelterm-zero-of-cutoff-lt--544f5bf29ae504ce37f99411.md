# sourceKernelTerm_zero_of_cutoff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7806e0a73f64bf68fbe7bffd864ac9c9041327ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6d52c56-036c-9838-c4f6-e79a3f6f9fba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1d48ad1-95b9-3504-42de-63a1c7d480d8",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_zero_of_cutoff_lt",
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
  "slug": "sourcekernelterm-zero-of-cutoff-lt--544f5bf29ae504ce37f99411",
  "source": {
    "blob": "7806e0a73f64bf68fbe7bffd864ac9c9041327ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544f5bf29ae504ce37f9941197af170c44ca037550147f12e34e253f8227ee50",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1d48ad1-95b9-3504-42de-63a1c7d480d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_zero_of_cutoff_lt
    (A : ℝ) (hA : 1 ≤ A)
    (d k : ℕ) (hd : 1 ≤ d) (hk : 1 ≤ k)
    (hcut : sourceKernelCutoff A < d * k) :
    sourceKernelTerm A k d = 0 := by
  have hprodpos : 0 < d * k :=
    Nat.mul_pos (lt_of_lt_of_le Nat.zero_lt_one hd)
      (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hupper :
      sourceUpper A < ((d * k : ℕ) : ℝ) := by
    have hnle :
        ¬ d * k ≤ ⌊sourceUpper A⌋₊ := by
      simpa [sourceKernelCutoff] using
        (Nat.not_le.mpr hcut)
    exact lt_of_not_ge (fun h =>
      hnle ((Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr h))
  have hlog :
      2 * A < Real.log ((d * k : ℕ) : ℝ) := by
    rw [Real.lt_log_iff_exp_lt (by exact_mod_cast hprodpos)]
    simpa [sourceUpper] using hupper
  have hcorr :
      sourceCorrelation Realization.explicitSecondDerivative A
          (Real.log ((d * k : ℕ) : ℝ)) = 0 := by
    apply
      CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
        A _ (by linarith)
    exact hlog.le.trans (le_abs_self _)
  unfold sourceKernelTerm exponentialTest
  rw [show (d : ℝ) * (k : ℝ) = ((d * k : ℕ) : ℝ) by norm_cast,
    hcorr, mul_zero, mul_zero]

/-- The fixed real-kernel sum may be restricted to products still inside the
closed source inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant3e8e11ef61b7d786abe4ad0f7170230d5ba33101922250679ff047f525ce4538.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7806e0a73f64bf68fbe7bffd864ac9c9041327ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
