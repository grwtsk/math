# range_subpathAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "981761e87fb3cc62d77c0b450f2f348ed6183c16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:301d1592-16d4-3976-88e4-f46e99c9b967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81182a7c-63b9-5769-7d00-382307a5af28",
  "kind": "lemma",
  "lexical_name": "range_subpathAux",
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
  "slug": "range-subpathaux--1faec857d13d23f91759599d",
  "source": {
    "blob": "981761e87fb3cc62d77c0b450f2f348ed6183c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1faec857d13d23f91759599d7c7bc13575d0ce1a35f2fa36d0293f0f85786f28",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81182a7c-63b9-5769-7d00-382307a5af28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_subpathAux (t₀ t₁ : I) : range (Icc.convexComb t₀ t₁) = uIcc t₀ t₁ := by
  rw [range_eq_iff]
  constructor
  · intro s
    exact convex_uIcc (t₀ : ℝ) t₁ left_mem_uIcc right_mem_uIcc
      (one_minus_nonneg s) (nonneg s) (sub_add_cancel _ _)
  · intro t (ht : (t : ℝ) ∈ uIcc (t₀ : ℝ) (t₁ : ℝ))
    rw [← segment_eq_uIcc, segment_eq_image] at ht
    obtain ⟨s, hs, hst⟩ := ht
    use ⟨s, hs⟩
    ext
    exact hst

/-- The range of a subpath is the image of the original path on the relevant interval. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981761e87fb3cc62d77c0b450f2f348ed6183c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
