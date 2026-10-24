# IsCompact.finite_compact_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 959,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0db0b029-6dd7-41c0-622f-0b2f09f6a891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67ad0998-f66a-a86a-687c-f32229c9a3e0",
  "kind": "theorem",
  "lexical_name": "IsCompact.finite_compact_cover",
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
  "slug": "iscompact-finite-compact-cover--bc27b6c99724fb167bcf127d",
  "source": {
    "blob": "e7869c22b117f30312b28f43d05e17de874c5006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 959,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc27b6c99724fb167bcf127d213603dc5fc83a58ed511642de7b6aba555a884c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ad0998-f66a-a86a-687c-f32229c9a3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.finite_compact_cover {s : Set X} (hs : IsCompact s) {ι : Type*}
    (t : Finset ι) (U : ι → Set X) (hU : ∀ i ∈ t, IsOpen (U i)) (hsC : s ⊆ ⋃ i ∈ t, U i) :
    ∃ K : ι → Set X, (∀ i, IsCompact (K i)) ∧ (∀ i, K i ⊆ U i) ∧ s = ⋃ i ∈ t, K i := by
  classical
  induction t using Finset.induction generalizing U s with
  | empty =>
    refine ⟨fun _ => ∅, fun _ => isCompact_empty, fun i => empty_subset _, ?_⟩
    simpa only [subset_empty_iff, Finset.notMem_empty, iUnion_false, iUnion_empty] using hsC
  | insert x t hx ih =>
    simp only [Finset.set_biUnion_insert] at hsC
    simp only [Finset.forall_mem_insert] at hU
    have hU' : ∀ i ∈ t, IsOpen (U i) := fun i hi => hU.2 i hi
    rcases hs.binary_compact_cover hU.1 (isOpen_biUnion hU') hsC with
      ⟨K₁, K₂, h1K₁, h1K₂, h2K₁, h2K₂, hK⟩
    rcases ih h1K₂ U hU' h2K₂ with ⟨K, h1K, h2K, h3K⟩
    refine ⟨update K x K₁, ?_, ?_, ?_⟩
    · intro i
      rcases eq_or_ne i x with rfl | hi
      · simp only [update_self, h1K₁]
      · simp only [update_of_ne hi, h1K]
    · intro i
      rcases eq_or_ne i x with rfl | hi
      · simp only [update_self, h2K₁]
      · simp only [update_of_ne hi, h2K]
    · simp only [Finset.set_biUnion_insert_update _ hx, hK, h3K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantab4aa62e8ee48cbac075f0d601a9ce8639232c220aafc415285dbb6eab08527a.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7869c22b117f30312b28f43d05e17de874c5006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
