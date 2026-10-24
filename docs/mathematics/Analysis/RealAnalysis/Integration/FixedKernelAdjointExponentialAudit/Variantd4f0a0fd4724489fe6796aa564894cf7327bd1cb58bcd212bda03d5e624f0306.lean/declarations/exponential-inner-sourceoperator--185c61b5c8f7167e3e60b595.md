# exponential_inner_sourceOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6dbd95743708c7837b4b4b8edf09cacc1ca40f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 639,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a770e3a-0338-3502-65e5-119cf103c4f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41c56211-1bd1-cd49-6d4c-1037c757e8ce",
  "kind": "theorem",
  "lexical_name": "exponential_inner_sourceOperator",
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
  "slug": "exponential-inner-sourceoperator--185c61b5c8f7167e3e60b595",
  "source": {
    "blob": "d6dbd95743708c7837b4b4b8edf09cacc1ca40f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 639,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185c61b5c8f7167e3e60b595ea76b7cdb78911dea1ed3f21a27db99ca2ad3dd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c56211-1bd1-cd49-6d4c-1037c757e8ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_inner_sourceOperator (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (exponentialVector z hz) (sourceOperator f) =
      actualLaplace z * inner ℂ (exponentialVector z hz) f := by
  rw [sourceOperator_apply]
  have hdual : ∀ u : FullLineConvolutionScratch.FullH,
      inner ℂ (exponentialVector z hz) (restriction u) =
        inner ℂ (zeroExtension (exponentialVector z hz)) u := by
    intro u
    rw [← inner_conj_symm, inner_restriction_zeroExtension, inner_conj_symm]
  rw [hdual, ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable
    (zeroExtension f))]
  calc
    _ = ∫ a : ℝ, ((fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := by
      apply integral_congr_ae
      filter_upwards [] with a
      rw [inner_smul_right]
      by_cases ha : 0 ≤ a
      · rw [exponential_inner_shift a ha z hz f]
        ring
      · rw [fixedKernel_zero_of_nonpos a (le_of_not_ge ha), Complex.ofReal_zero,
          zero_mul, zero_mul, zero_mul]
    _ = (∫ a : ℝ, (fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := integral_mul_const _ _
    _ = _ := by
      congr 1
      exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
        (fun t ht ↦ by rw [fixedKernel_zero_of_nonpos t (le_of_not_gt ht),
          Complex.ofReal_zero, zero_mul])).symm

/-- The actual Hilbert adjoint acts on exponential vectors by the conjugated source transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6dbd95743708c7837b4b4b8edf09cacc1ca40f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
