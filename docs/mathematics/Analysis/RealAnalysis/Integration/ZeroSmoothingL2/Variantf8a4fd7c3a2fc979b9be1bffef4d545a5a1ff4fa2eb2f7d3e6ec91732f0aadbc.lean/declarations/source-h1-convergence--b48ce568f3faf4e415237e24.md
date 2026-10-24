# source_h1_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ef4e6471195c75022c04ba4b4e99b93a2075717",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:331b8b48-fe81-59bf-c5dc-2d834d8659ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7e0f39c-7152-bf0c-db89-a3bb809d9516",
  "kind": "theorem",
  "lexical_name": "source_h1_convergence",
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
  "slug": "source-h1-convergence--b48ce568f3faf4e415237e24",
  "source": {
    "blob": "4ef4e6471195c75022c04ba4b4e99b93a2075717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b48ce568f3faf4e415237e24747a06f643d0048542baab70cf2b2a43188072a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e0f39c-7152-bf0c-db89-a3bb809d9516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_h1_convergence (A : ℝ) (hA : 1 ≤ A) :
    MemLp (actualTest A) 2 volume ∧
    MemLp (deriv (actualTest A)) 2 volume ∧
    (tsupport (actualTest A) ⊆ Icc (-A - 1) (A + 1) ∧
      tsupport (deriv (actualTest A)) ⊆ Icc (-A - 1) (A + 1)) ∧
    (∀ (ε : ℝ) (hε : 0 < ε),
      MemLp (smoothedTest A ε hε) 2 volume ∧
      MemLp (deriv (smoothedTest A ε hε)) 2 volume ∧
      Integrable (fun x ↦ (smoothedTest A ε hε x - actualTest A x) ^ 2) volume ∧
      Integrable (fun x ↦
        (deriv (smoothedTest A ε hε) x - deriv (actualTest A) x) ^ 2) volume ∧
      tsupport (smoothedTest A ε hε) ⊆ Icc (-A - ε) (A + ε) ∧
      tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - ε) (A + ε) ∧
      (ε ≤ 1 → tsupport (smoothedTest A ε hε) ⊆ Icc (-A - 1) (A + 1) ∧
        tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - 1) (A + 1))) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ lpNorm
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x) 2 volume)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ lpNorm
      (fun x ↦ deriv (smoothedTest A ε ε.property) x - deriv (actualTest A) x) 2 volume)
      positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ h1Error A ε ε.property)
      positiveScaleAtZero (𝓝 0) := by
  refine ⟨actualTest_memLp_two A hA, actualTest_deriv_memLp_two A hA,
    actualTest_common_support A hA, ?_, ?_, ?_, ?_⟩
  · intro ε hε
    exact ⟨smoothedTest_memLp_two A ε hA hε, smoothedTest_deriv_memLp_two A ε hA hε,
      testError_sq_integrable A ε hA hε, derivativeError_sq_integrable A ε hA hε,
      smoothedTest_tsupport_subset A ε hA hε, smoothedTest_deriv_tsupport_subset A ε hA hε,
      fun hε1 ↦ ⟨smoothedTest_tsupport_subset_common A ε hA hε hε1,
        smoothedTest_deriv_tsupport_subset_common A ε hA hε hε1⟩⟩
  · exact testError_l2_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · exact derivativeError_l2_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero
  · exact h1Error_tendsto_zero A hA _ (fun ε ↦ ε.property) positiveScale_tendsto_zero

end
end ZeroSmoothingL2
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variantf8a4fd7c3a2fc979b9be1bffef4d545a5a1ff4fa2eb2f7d3e6ec91732f0aadbc.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef4e6471195c75022c04ba4b4e99b93a2075717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
