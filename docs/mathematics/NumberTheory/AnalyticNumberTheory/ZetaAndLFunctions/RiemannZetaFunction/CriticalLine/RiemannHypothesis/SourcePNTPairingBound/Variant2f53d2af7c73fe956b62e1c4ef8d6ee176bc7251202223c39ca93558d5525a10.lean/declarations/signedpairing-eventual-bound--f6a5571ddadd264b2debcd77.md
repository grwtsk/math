# signedPairing_eventual_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68802fa8-5e33-7d11-a007-e7e6d9f94965",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d605708-afc6-5448-7cf5-c226f2f12126",
  "kind": "theorem",
  "lexical_name": "signedPairing_eventual_bound",
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
  "slug": "signedpairing-eventual-bound--f6a5571ddadd264b2debcd77",
  "source": {
    "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 117,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a5571ddadd264b2debcd7776171ada3a74fbd992de6ceadd31060978705d70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d605708-afc6-5448-7cf5-c226f2f12126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedPairing_eventual_bound :
    ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C*(Real.exp (A/2) + Real.exp A*Real.exp (-c*A^((1:ℝ)/10))) := by
  obtain ⟨c, hc, C, hC, T, hT, htail⟩ := SourcePNTInput.errorProfile_quantitative_tail
  let D := max C (Real.log 4+5)
  have hD : 0 ≤ D := le_trans hC.le (le_max_left _ _)
  refine ⟨2*D*correlationBudget, mul_nonneg (mul_nonneg (by norm_num) hD)
    correlationBudget_nonneg, c, hc, ?_⟩
  filter_upwards [eventually_ge_atTop T] with A hA
  have hA1 : 1 ≤ A := hT.trans hA
  have hstart : lowerEndpoint ≤ A := by
    apply le_trans _ hA1
    unfold lowerEndpoint
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ) < 2)
    norm_num at h ⊢
    exact h
  apply signedPairing_bound A D c hA1 hstart hD
  · intro t _
    exact (SourcePNTInput.errorProfile_abs_le t).trans
      (mul_le_mul_of_nonneg_right (le_max_right _ _) (Real.exp_nonneg _))
  · intro t ht
    apply (htail A hA t ht.1).trans
    gcongr
    exact le_max_left _ _

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c751e91015f391c8cb811c6de54a47e74f3e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
