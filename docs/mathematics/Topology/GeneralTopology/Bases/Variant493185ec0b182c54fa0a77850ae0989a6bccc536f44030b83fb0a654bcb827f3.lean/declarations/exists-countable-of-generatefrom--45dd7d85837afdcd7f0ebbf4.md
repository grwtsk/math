# exists_countable_of_generateFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1025,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebe519e7-64f8-7cb3-6f85-464fc876fb4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:210ec79e-0ae6-3b2b-daea-8cd4981d9874",
  "kind": "lemma",
  "lexical_name": "exists_countable_of_generateFrom",
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
  "slug": "exists-countable-of-generatefrom--45dd7d85837afdcd7f0ebbf4",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1025,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45dd7d85837afdcd7f0ebbf43843c2199fac525a8af0c3a0aec3f1dfaa65db4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:210ec79e-0ae6-3b2b-daea-8cd4981d9874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_countable_of_generateFrom
    {α : Type*} [ts : TopologicalSpace α] [SecondCountableTopology α] {t : Set (Set α)}
    (ht : ts = generateFrom t) :
    ∃ s ⊆ t, s.Countable ∧ ts = generateFrom s := by
  let t' := (fun f => ⋂₀ f) '' { f : Set (Set α) | f.Finite ∧ f ⊆ t }
  have : IsTopologicalBasis t' := TopologicalSpace.isTopologicalBasis_of_subbasis ht
  obtain ⟨s', s't', s'_count, hs'⟩ : ∃ s' ⊆ t', s'.Countable ∧ IsTopologicalBasis s' :=
    this.exists_countable
  have A : ∀ u ∈ s', ∃ (f : Set (Set α)), f.Finite ∧ f ⊆ t ∧ ⋂₀ f = u :=
    fun u hu ↦ by simpa [t', and_assoc] using s't' hu
  choose! f f_fin ft hf using A
  refine ⟨⋃ u ∈ s', f u, by simpa using ft, ?_, ?_⟩
  · apply s'_count.biUnion
    intro u hu
    exact Finite.countable (f_fin u hu)
  · apply le_antisymm
    · apply le_generateFrom_iff_subset_isOpen.2
      simp only [iUnion_subset_iff]
      intro u hu v hv
      rw [ht]
      apply isOpen_generateFrom_of_mem
      exact ft u hu hv
    · rw [hs'.eq_generateFrom]
      apply le_generateFrom_iff_subset_isOpen.2
      intro u hu
      rw [← hf u hu, sInter_eq_biInter]
      change IsOpen[generateFrom _] (⋂ i ∈ f u, i)
      apply @Finite.isOpen_biInter _ _ (generateFrom (⋃ u ∈ s', f u)) _ _
      · apply f_fin u hu
      · intro i hi
        apply isOpen_generateFrom_of_mem
        simp
        grind

section Sigma

variable {ι : Type*} {E : ι → Type*} [∀ i, TopologicalSpace (E i)]

/-- In a disjoint union space `Σ i, E i`, one can form a topological basis by taking the union of
topological bases on each of the parts of the space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
