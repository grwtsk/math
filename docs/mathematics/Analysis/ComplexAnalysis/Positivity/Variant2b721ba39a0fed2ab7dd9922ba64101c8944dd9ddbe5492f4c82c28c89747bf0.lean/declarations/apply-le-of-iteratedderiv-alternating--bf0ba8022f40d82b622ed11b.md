# apply_le_of_iteratedDeriv_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2ae7d9222a05a02fa0bb25f8d71eeca366e879a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea9b1f44-3020-25c7-5e1d-e65b9ce3ff5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cef3a933-c9ef-6efd-df24-b46748199a0f",
  "kind": "theorem",
  "lexical_name": "apply_le_of_iteratedDeriv_alternating",
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
  "slug": "apply-le-of-iteratedderiv-alternating--bf0ba8022f40d82b622ed11b",
  "source": {
    "blob": "b2ae7d9222a05a02fa0bb25f8d71eeca366e879a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf0ba8022f40d82b622ed11b5abe650c20a936d5ae63357573a8222d993256a6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef3a933-c9ef-6efd-df24-b46748199a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_le_of_iteratedDeriv_alternating {f : ℂ → ℂ} {c : ℂ} (hf : Differentiable ℂ f)
    (h : ∀ n ≠ 0, 0 ≤ (-1) ^ n * iteratedDeriv n f c) ⦃z : ℂ⦄ (hz : z ≤ c) :
    f c ≤ f z := by
  convert apply_le_of_iteratedDeriv_nonneg (f := fun z ↦ f (-z))
    (hf.comp <| differentiable_neg) (fun n hn ↦ ?_) (neg_le_neg_iff.mpr hz) using 1
  · simp only [neg_neg]
  · simp only [neg_neg]
  · simpa only [iteratedDeriv_comp_neg, neg_neg, smul_eq_mul] using h n hn

end Differentiable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ae7d9222a05a02fa0bb25f8d71eeca366e879a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
