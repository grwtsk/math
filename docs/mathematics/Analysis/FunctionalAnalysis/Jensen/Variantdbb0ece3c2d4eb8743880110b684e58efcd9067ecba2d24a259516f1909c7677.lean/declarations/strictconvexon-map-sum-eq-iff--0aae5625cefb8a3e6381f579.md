# StrictConvexOn.map_sum_eq_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:105ba816-5c49-adf3-68b8-8f26c4f89100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce87bb0d-127b-b8ff-035a-59ab36bd2b78",
  "kind": "lemma",
  "lexical_name": "StrictConvexOn.map_sum_eq_iff'",
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
  "slug": "strictconvexon-map-sum-eq-iff--0aae5625cefb8a3e6381f579",
  "source": {
    "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 214,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aae5625cefb8a3e6381f579a0a73c0055f39e6bc6c7b0e75aa8da7af1e8909e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce87bb0d-127b-b8ff-035a-59ab36bd2b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StrictConvexOn.map_sum_eq_iff' (hf : StrictConvexOn 𝕜 s f) (h₀ : ∀ i ∈ t, 0 ≤ w i)
    (h₁ : ∑ i ∈ t, w i = 1) (hmem : ∀ i ∈ t, p i ∈ s) :
    f (∑ i ∈ t, w i • p i) = ∑ i ∈ t, w i • f (p i) ↔
      ∀ j ∈ t, w j ≠ 0 → p j = ∑ i ∈ t, w i • p i := by
  have hw (i) (_ : i ∈ t) : w i • p i ≠ 0 → w i ≠ 0 := by aesop
  have hw' (i) (_ : i ∈ t) : w i • f (p i) ≠ 0 → w i ≠ 0 := by aesop
  rw [← sum_filter_of_ne hw, ← sum_filter_of_ne hw', hf.map_sum_eq_iff]
  · simp
  · simp +contextual [(h₀ _ _).gt_iff_ne]
  · rwa [sum_filter_ne_zero]
  · simp +contextual [hmem _ _]

/-- Canonical form of the **equality case of Jensen's equality**.

For a strictly concave function `f` and nonnegative weights `w`, we have
`f (∑ i ∈ t, w i • p i) = ∑ i ∈ t, w i • f (p i)` if and only if the points `p` with nonzero
weight are all equal (and in fact all equal to their center of mass wrt `w`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb5f5c192359128a63127e47d13e24b9105814c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
