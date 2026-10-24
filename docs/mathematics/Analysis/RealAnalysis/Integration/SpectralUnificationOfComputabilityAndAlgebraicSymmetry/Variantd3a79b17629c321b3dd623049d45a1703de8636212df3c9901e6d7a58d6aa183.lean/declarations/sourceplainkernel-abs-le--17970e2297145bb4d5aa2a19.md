# sourcePlainKernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4775c93c-fdb5-e99a-d536-a87fa4942388",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14ea5425-4f70-b24b-6ad7-fdee754b2ecc",
  "kind": "theorem",
  "lexical_name": "sourcePlainKernel_abs_le",
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
  "slug": "sourceplainkernel-abs-le--17970e2297145bb4d5aa2a19",
  "source": {
    "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 460,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17970e2297145bb4d5aa2a192cca2862b77bef14ac3668e34f767fc639a903ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14ea5425-4f70-b24b-6ad7-fdee754b2ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainKernel_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourcePlainKernel A x| ≤ (3+10/A) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hb := sourceCorrelation_profileSupBounds A hA
  have he := finite_plain_error hc hx0 hb (sourceKernelCutoff A)
  rw [plain_finite_integral_eq hc hx0 _ (plain_source_tail A x hA hx)] at he
  have hi := plain_integral_abs_le (x := x) (sourceCorrelation_twoMomentProfile A hA) hb
  have ht := abs_add_le
    (leftSampleSum (plainTerm (sourceCorrelation explicitSecondDerivative A) x)
      (sourceKernelCutoff A) - ∫ u in Ioi (1 : ℝ),
        plainTerm (sourceCorrelation explicitSecondDerivative A) x u)
    (∫ u in Ioi (1 : ℝ), plainTerm (sourceCorrelation explicitSecondDerivative A) x u)
  rw [sub_add_cancel] at ht
  have hs : leftSampleSum (plainTerm (sourceCorrelation explicitSecondDerivative A) x)
      (sourceKernelCutoff A) = sourcePlainKernel A x := by
    apply Finset.sum_congr rfl
    intro k hk
    exact plainTerm_source A x k hx0 (Finset.mem_Icc.mp hk).1
  rw [hs] at ht he
  have h : |sourcePlainKernel A x| ≤ Real.exp (-Real.log x/2) * (3+10/A) := by
    calc
      _ ≤ _ := ht
      _ ≤ _ := add_le_add he hi
      _ = _ := by ring
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx0] at h
  simpa only [div_eq_mul_inv, mul_comm] using h

end
end EstimatePlainKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
