# isConstructible_comap_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7aec199d5e7add500991da0aa3a6d38d43acd7b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaf4cb92-ee3b-a56d-6c53-685e97b3e93f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80ed6d6a-7841-de6e-d8e9-f251969b4d39",
  "kind": "lemma",
  "lexical_name": "isConstructible_comap_image",
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
  "slug": "isconstructible-comap-image--2f4bfd5bf06f19844116cb96",
  "source": {
    "blob": "7aec199d5e7add500991da0aa3a6d38d43acd7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f4bfd5bf06f19844116cb96ace3fc9f8b547bbd83f156a6c7af91b269e725f2",
  "verification": {
    "reference": "docs/verification/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ed6d6a-7841-de6e-d8e9-f251969b4d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConstructible_comap_image
    {f : R →+* S} (hf : f.FinitePresentation)
    {s : Set (PrimeSpectrum S)} (hs : IsConstructible s) :
    IsConstructible (comap f '' s) := by
  refine hf.polynomial_induction
    (fun _ _ _ _ f ↦ ∀ s, IsConstructible s → IsConstructible (comap f '' s))
    (fun _ _ _ _ f ↦ ∀ s, IsConstructible s → IsConstructible (comap f '' s))
    (fun _ _ _ ↦ isConstructible_comap_C) ?_ ?_ f s hs
  · intro R _ S _ f hf hf' s hs
    refine hs.image_of_isClosedEmbedding (isClosedEmbedding_comap_of_surjective _ f hf) ?_
    rw [range_comap_of_surjective _ f hf]
    exact isRetrocompact_zeroLocus_compl_of_fg hf'
  · intro R _ S _ T _ f g H₁ H₂ s hs
    simp only [comap_comp, Set.image_comp]
    exact H₁ _ (H₂ _ hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Chevalley/Variantc75870702c3ca2a31e8447953758cbc26e2f2ee5f9d1e148ac57dddf198cb697.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aec199d5e7add500991da0aa3a6d38d43acd7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
