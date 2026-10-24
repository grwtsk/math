# sampling_sum_sub_firstMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab9d1e99aabdd9923037d53ea11a54fe15af7191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9e0216c-0c68-a1df-c208-3805fedee50c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:998da8a3-faf8-236c-396b-1a8641173ac2",
  "kind": "theorem",
  "lexical_name": "sampling_sum_sub_firstMoment_abs_le",
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
  "slug": "sampling-sum-sub-firstmoment-abs-le--6c226195f80773f685980a05",
  "source": {
    "blob": "ab9d1e99aabdd9923037d53ea11a54fe15af7191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c226195f80773f685980a05b9b5793857b774277b2a69cc157ff3377022a379",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:998da8a3-faf8-236c-396b-1a8641173ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampling_sum_sub_firstMoment_abs_le (F : ℝ → ℝ) (x L L' B : ℝ) (N : ℕ)
    (hx : 0 < x) (hN : 1 ≤ N) (hF : ContDiff ℝ 1 F) (hcompact : HasCompactSupport F)
    (hbound : ∀ t : ℝ, |F t| ≤ L) (hderiv : ∀ t : ℝ, |deriv F t| ≤ L')
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B)
    (hcut : ∀ u : ℝ, (N : ℝ) ≤ u → samplingIntegrand F x u = 0) :
    |(∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) - B / x| ≤
      (8 * L + 4 * L') / Real.sqrt x := by
  have hd : ∀ u ∈ Icc (1 : ℝ) N, DifferentiableAt ℝ (samplingIntegrand F x) u := by
    intro u hu
    exact (sampling_hasDerivAt F x u hx (lt_of_lt_of_le zero_lt_one hu.1)
      (hF.differentiable (by norm_num))).differentiableAt
  have herr := SamplingError.abs_sum_sub_integral_Ioi_le (samplingIntegrand F x) N hN hd
    (sampling_integrable F x hx hF.continuous hcompact)
    (sampling_deriv_integrable F x L L' hx hF hbound hderiv) hcut
  have hvariation := sampling_deriv_integral_abs_le F x L L' hx hF hbound hderiv
  have hintegral := sampling_integral_sub_firstMoment_abs_le F x L B hx
    hF.continuous hcompact hbound hz0 hB
  calc
    _ = |((∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) -
        ∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) +
        ((∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x)| := by congr 1; ring
    _ ≤ |(∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) -
        ∫ u in Ioi (1 : ℝ), samplingIntegrand F x u| +
        |(∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x| := abs_add_le _ _
    _ ≤ 4 * (L + L') / Real.sqrt x + 4 * L / Real.sqrt x :=
      add_le_add (herr.trans hvariation) hintegral
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling

#check FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_sum_sub_firstMoment_abs_le

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.half_moment_transport_with_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_integral_sub_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_integral_sub_firstMoment_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_sum_sub_firstMoment_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9d1e99aabdd9923037d53ea11a54fe15af7191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
