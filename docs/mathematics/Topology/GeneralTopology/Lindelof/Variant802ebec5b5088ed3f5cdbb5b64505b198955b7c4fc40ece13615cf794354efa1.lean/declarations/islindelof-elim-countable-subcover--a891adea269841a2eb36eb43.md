# IsLindelof.elim_countable_subcover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be1f5c7d7dbb28b591700e58deb2e50a7ee34de4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48efc0d9-c544-229b-4b6a-8b3d51081047",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:714257dd-9c63-9002-3d0b-afbd9f2243ad",
  "kind": "theorem",
  "lexical_name": "IsLindelof.elim_countable_subcover",
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
  "slug": "islindelof-elim-countable-subcover--a891adea269841a2eb36eb43",
  "source": {
    "blob": "be1f5c7d7dbb28b591700e58deb2e50a7ee34de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a891adea269841a2eb36eb43fbcb3a7dee593c28bc5dcc89690d68c37b70eff7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:714257dd-9c63-9002-3d0b-afbd9f2243ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLindelof.elim_countable_subcover {ι : Type v} (hs : IsLindelof s) (U : ι → Set X)
    (hUo : ∀ i, IsOpen (U i)) (hsU : s ⊆ ⋃ i, U i) :
    ∃ r : Set ι, r.Countable ∧ (s ⊆ ⋃ i ∈ r, U i) := by
  have hmono : ∀ ⦃s t : Set X⦄, s ⊆ t → (∃ r : Set ι, r.Countable ∧ t ⊆ ⋃ i ∈ r, U i)
      → (∃ r : Set ι, r.Countable ∧ s ⊆ ⋃ i ∈ r, U i) := by
    intro _ _ hst ⟨r, ⟨hrcountable, hsub⟩⟩
    exact ⟨r, hrcountable, Subset.trans hst hsub⟩
  have hcountable_union : ∀ (S : Set (Set X)), S.Countable
      → (∀ s ∈ S, ∃ r : Set ι, r.Countable ∧ (s ⊆ ⋃ i ∈ r, U i))
      → ∃ r : Set ι, r.Countable ∧ (⋃₀ S ⊆ ⋃ i ∈ r, U i) := by
    intro S hS hsr
    choose! r hr using hsr
    refine ⟨⋃ s ∈ S, r s, hS.biUnion_iff.mpr (fun s hs ↦ (hr s hs).1), ?_⟩
    refine sUnion_subset ?h.right.h
    simp only [mem_iUnion, exists_prop, iUnion_exists, biUnion_and']
    exact fun i is x hx ↦ mem_biUnion is ((hr i is).2 hx)
  have h_nhds : ∀ x ∈ s, ∃ t ∈ 𝓝[s] x, ∃ r : Set ι, r.Countable ∧ (t ⊆ ⋃ i ∈ r, U i) := by
    intro x hx
    let ⟨i, hi⟩ := mem_iUnion.1 (hsU hx)
    refine ⟨U i, mem_nhdsWithin_of_mem_nhds ((hUo i).mem_nhds hi), {i}, by simp, ?_⟩
    simp only [mem_singleton_iff, iUnion_iUnion_eq_left]
    exact Subset.refl _
  exact hs.induction_on hmono hcountable_union h_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant802ebec5b5088ed3f5cdbb5b64505b198955b7c4fc40ece13615cf794354efa1.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1f5c7d7dbb28b591700e58deb2e50a7ee34de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
