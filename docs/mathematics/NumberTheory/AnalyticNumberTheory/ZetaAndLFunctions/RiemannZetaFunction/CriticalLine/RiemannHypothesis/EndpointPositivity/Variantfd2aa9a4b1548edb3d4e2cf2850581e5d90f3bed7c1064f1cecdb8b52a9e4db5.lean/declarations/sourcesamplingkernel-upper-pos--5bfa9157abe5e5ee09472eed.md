# sourceSamplingKernel_upper_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cdccfd8c958358183d30a5cd4e7133a420a7ed8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c85cc3c3-3c1f-79b6-edc6-1241b20f067c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bcd0186-c2a2-6740-86a3-188b6cce8cd9",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_upper_pos",
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
  "slug": "sourcesamplingkernel-upper-pos--5bfa9157abe5e5ee09472eed",
  "source": {
    "blob": "8cdccfd8c958358183d30a5cd4e7133a420a7ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variantfd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bfa9157abe5e5ee09472eed1d88892603fe18ecdf59c89e756c8221eef2531c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variantfd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bcd0186-c2a2-6740-86a3-188b6cce8cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_upper_pos (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q := by
  have hq0 : 0 < q := (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 4)).trans_le hq.1
  have hnonneg (k : ℕ) (hk : k ∈ SourceSampling.samplingIndices A q) :
      0 ≤ Real.log (k : ℝ) / Real.sqrt (q * (k : ℝ)) *
        sourceCorrelation explicitSecondDerivative A (Real.log (q * (k : ℝ))) := by
    have hk1 := ((SourceSampling.mem_samplingIndices_iff A q k hq0).mp hk).1
    by_cases hkeq : k = 1
    · simp [hkeq]
    have hk2 : 2 ≤ k := by omega
    apply mul_nonneg
    · exact div_nonneg (Real.log_nonneg (by exact_mod_cast hk1)) (Real.sqrt_nonneg _)
    · exact sourceCorrelation_endpoint_nonneg A _ hA (upper_product_log_lower A q k hq.1 hk2)
  have hmem : 2 ∈ SourceSampling.samplingIndices A q :=
    (SourceSampling.mem_samplingIndices_iff A q 2 hq0).mpr ⟨by norm_num, by
      norm_num only [Nat.cast_ofNat]
      linarith [hq.2]⟩
  have hp : 0 < Real.log (2 : ℝ) / Real.sqrt (q * (2 : ℝ)) *
      sourceCorrelation explicitSecondDerivative A (Real.log (q * (2 : ℝ))) := by
    apply mul_pos
    · exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by positivity))
    · apply sourceCorrelation_endpoint_pos A _ hA
      refine ⟨by simpa using upper_product_log_lower A q 2 hq.1 le_rfl, ?_⟩
      exact (Real.log_lt_iff_lt_exp (by positivity : 0 < q * (2 : ℝ))).mpr
        (by linarith [hq.2])
  exact hp.trans_le (Finset.single_le_sum hnonneg hmem)

end
end EndpointPositivityScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variantfd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variantfd2aa9a4b1548edb3d4e2cf2850581e5d90f3bed7c1064f1cecdb8b52a9e4db5.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cdccfd8c958358183d30a5cd4e7133a420a7ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
