# integral_fourierInv_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1f6584a7fefed470b6b49c9ba72a99c973b6732",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2364fb04-db43-6d0f-b72a-25ce5259c400",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6be6495f-7340-4853-c278-e4049a5ccf7c",
  "kind": "theorem",
  "lexical_name": "integral_fourierInv_mul_eq",
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
  "slug": "integral-fourierinv-mul-eq--fc3a5001f6d031260836df56",
  "source": {
    "blob": "e1f6584a7fefed470b6b49c9ba72a99c973b6732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 12,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc3a5001f6d031260836df5621e9082fa5db83dea2235c6906148262d6bfc442",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be6495f-7340-4853-c278-e4049a5ccf7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_fourierInv_mul_eq (f g : ℝ → ℂ)
    (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x := by
  have hflip : (-(innerₗ ℝ)).flip = -(innerₗ ℝ) := by
    ext
    simp
  have he := VectorFourier.integral_bilin_fourierIntegral_eq_flip
    (ContinuousLinearMap.mul ℂ ℂ) (L := -(innerₗ ℝ))
    Real.continuous_fourierChar continuous_inner.neg hf hg
  simp only [hflip, ContinuousLinearMap.mul_apply', VectorFourier.fourierIntegral,
    LinearMap.neg_apply, neg_neg] at he
  simpa only [Real.fourierInv_eq, innerₗ_apply_apply] using he

/-- An integrable input has a continuous genuine inverse Fourier integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variantb0931bd8c18e77845f3055c9d69954c38b7cf42fea871f0cd72913bd5d9ff745.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f6584a7fefed470b6b49c9ba72a99c973b6732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
