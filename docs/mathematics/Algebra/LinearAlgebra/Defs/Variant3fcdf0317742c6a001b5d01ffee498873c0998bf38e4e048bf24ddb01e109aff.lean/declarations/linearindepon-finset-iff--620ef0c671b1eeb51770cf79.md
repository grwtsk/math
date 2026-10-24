# linearIndepOn_finset_iffₒₛ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c9cfb58-f7ae-546e-1da8-df99d56de127",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8a731ff-c818-79b0-b3d2-a334c8938498",
  "kind": "lemma",
  "lexical_name": "linearIndepOn_finset_iffₒₛ",
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
  "slug": "linearindepon-finset-iff--620ef0c671b1eeb51770cf79",
  "source": {
    "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 666,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620ef0c671b1eeb51770cf79194f1d8f55b26c060217fb58000e537f2c6b4578",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8a731ff-c818-79b0-b3d2-a334c8938498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndepOn_finset_iffₒₛ [DecidableEq ι] {s : Finset ι} :
    LinearIndepOn R v s ↔ ∀ t ⊆ s, ∀ (f : ι → R),
      ∑ i ∈ t, f i • v i = ∑ i ∈ s \ t, f i • v i → ∀ i ∈ s, f i = 0 := by
  rw [LinearIndepOn, Fintype.linearIndependent_iffₒₛ]
  refine ⟨fun h t ht f heq i hi => h { i | i.1 ∈ t } (f ∘ Subtype.val) ?_ ⟨i, hi⟩,
    fun h t f heq i => ?_⟩
  · simp only [Finset.compl_filter, Finset.sum_filter, Function.comp_apply, Finset.coe_sort_coe]
    rw [Finset.sum_coe_sort s fun i => if i ∈ t then f i • v i else 0,
      Finset.sum_coe_sort s fun i => if i ∉ t then f i • v i else 0]
    simpa [Finset.inter_eq_right.2 ht, Finset.sum_ite, Finset.filter_notMem_eq_sdiff]
  · specialize h (t.map (Embedding.subtype _)) (Finset.map_subtype_subset _)
      (fun i => if h : i ∈ s then f ⟨i, h⟩ else 0) ?_ i i.2
    · conv =>
        enter [2, 1, 1]
        rw [← s.subtype_map_of_mem (fun x hx => hx), Finset.subtype_eq_univ.2 (fun x hx => hx)]
        change Finset.map (Embedding.subtype (· ∈ (s : Set ι))) _
      rw [← Finset.map_sdiff]
      simpa [Embedding.subtype, ← Finset.compl_eq_univ_sdiff]
    simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
