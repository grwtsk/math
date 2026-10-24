# actual_full_multiple_sample_sub_main_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71b3f8b-b6d2-ff6e-d918-821d53f505b9",
  "kind": "theorem",
  "lexical_name": "actual_full_multiple_sample_sub_main_abs_le",
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
  "slug": "actual-full-multiple-sample-sub-main-abs-le--eee4847538a1243f6002a166",
  "source": {
    "blob": "dea9826e01e8b9d69853dc9311ed25d4a10e44fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee4847538a1243f6002a166eb5f8c4cf2ad83c48eb0fb95ac04bba81f5c85c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71b3f8b-b6d2-ff6e-d918-821d53f505b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_multiple_sample_sub_main_abs_le
    (A : ℝ) (hA : 1 ≤ A) (m d : ℕ) (hm : 0 < m) (hd : 0 < d) :
    |(∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
        sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)| ≤
      16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)) := by
  have hs : (∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) =
      ∑ j ∈ Finset.Icc 1 (sourceKernelCutoff A),
        plainProfile A ((d * m : ℕ) : ℝ) (j : ℝ) := by
    apply Finset.sum_congr rfl
    intro j hj
    exact actual_multiple_eq_plain_sample A hm hd (by have := (Finset.mem_Icc.mp hj).1; omega)
  rw [hs]
  exact plainProfile_sum_sub_mainTerm_abs_le hA (by
    exact_mod_cast (by nlinarith : 1 ≤ d * m))

end
end FormalResearch.RiemannHypothesis.SourceDivisorQuotientSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variantdb3c5e52641b19ebdef5757e2d649e22fe0ad64dce9602207d6959f551752be0.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea9826e01e8b9d69853dc9311ed25d4a10e44fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
