# completeRowsAt_eq_sourceMobiusKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af277f9343e9946b8ad8b8e82674dd6fc518b8f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e62eae31-4734-0e37-d3d0-f1aa52d0b4ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc76a57b-0923-8cae-c482-3c18474ad5be",
  "kind": "theorem",
  "lexical_name": "completeRowsAt_eq_sourceMobiusKernel",
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
  "slug": "completerowsat-eq-sourcemobiuskernel--68506d9e386f412b7d24d853",
  "source": {
    "blob": "af277f9343e9946b8ad8b8e82674dd6fc518b8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68506d9e386f412b7d24d853c505998ee1dcdea351576b6b40f088bc0b6b82c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc76a57b-0923-8cae-c482-3c18474ad5be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeRowsAt_eq_sourceMobiusKernel (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    completeMangoldtPlainRowsAt A d = sourceMobiusKernel A d := by
  have hf := finite_convolution_sum (sourceKernelCutoff A) vonMangoldt
    (zeta : ArithmeticFunction ℝ) (fun n ↦ sourcePlainWeight A ((d * n : ℕ) : ℝ))
    (sourcePlainWeight_scaled_zero_of_cutoff_lt A hA d hd)
  rw [vonMangoldt_mul_zeta] at hf
  simp only [ArithmeticFunction.log_apply] at hf
  have hz (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff A)) :
      (zeta : ArithmeticFunction ℝ) n = 1 := by
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hn).1; omega),
      Nat.cast_one]
  have hr :
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
          vonMangoldt m * (zeta : ArithmeticFunction ℝ) n *
            sourcePlainWeight A ((d * (m * n) : ℕ) : ℝ)) =
        completeMangoldtPlainRowsAt A d := by
    unfold completeMangoldtPlainRowsAt sourcePlainKernel
    apply Finset.sum_congr rfl
    intro m _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [hz n hn]
    simp only [mul_one, Nat.cast_mul, mul_assoc]
  rw [hr] at hf
  exact hf.symm.trans (sourceMobiusKernel_eq_plainWeight A d hd).symm

/-- The existing independent logarithmic main term controls the recombined row error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Varianta32c4ef06720f3a4b479e40ccb7039e80740f1471de800eba97b6f772b61699b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af277f9343e9946b8ad8b8e82674dd6fc518b8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
