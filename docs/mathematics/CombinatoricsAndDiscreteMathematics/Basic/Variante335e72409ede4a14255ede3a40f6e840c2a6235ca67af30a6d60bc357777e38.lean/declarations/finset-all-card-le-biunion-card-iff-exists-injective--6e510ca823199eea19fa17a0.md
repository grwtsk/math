# Finset.all_card_le_biUnion_card_iff_exists_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "810d0be432acc50e4b3384b4323a68cf5f779e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b463c3a-6c1e-7e66-438d-9414940bffe8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6b1d7c0-16a6-f561-f03b-9df7c002e446",
  "kind": "theorem",
  "lexical_name": "Finset.all_card_le_biUnion_card_iff_exists_injective",
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
  "slug": "finset-all-card-le-biunion-card-iff-exists-injective--6e510ca823199eea19fa17a0",
  "source": {
    "blob": "810d0be432acc50e4b3384b4323a68cf5f779e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e510ca823199eea19fa17a05ba0eab65fcf9c29d7c8cf12db0f634fe4d30aff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b1d7c0-16a6-f561-f03b-9df7c002e446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.all_card_le_biUnion_card_iff_exists_injective {ι : Type u} {α : Type v}
    [DecidableEq α] (t : ι → Finset α) :
    (∀ s : Finset ι, #s ≤ #(s.biUnion t)) ↔
      ∃ f : ι → α, Function.Injective f ∧ ∀ x, f x ∈ t x := by
  constructor
  · intro h
    -- Set up the functor
    haveI : ∀ ι' : (Finset ι)ᵒᵖ, Nonempty ((hallMatchingsFunctor t).obj ι') := fun ι' =>
      hallMatchingsOn.nonempty t h ι'.unop
    classical
      haveI : ∀ ι' : (Finset ι)ᵒᵖ, Finite ((hallMatchingsFunctor t).obj ι') := by
        intro ι'
        rw [hallMatchingsFunctor]
        infer_instance
      -- Apply the compactness argument
      obtain ⟨u, hu⟩ := nonempty_sections_of_finite_inverse_system (hallMatchingsFunctor t)
      -- Interpret the resulting section of the inverse limit
      refine ⟨?_, ?_, ?_⟩
      ·-- Build the matching function from the section
        exact fun i =>
          (u (Opposite.op ({i} : Finset ι))).val ⟨i, by simp only [Opposite.unop_op, mem_singleton]⟩
      · -- Show that it is injective
        intro i i'
        have subi : ({i} : Finset ι) ⊆ {i, i'} := by simp
        have subi' : ({i'} : Finset ι) ⊆ {i, i'} := by simp
        rw [← Finset.le_iff_subset] at subi subi'
        simp only
        rw [← hu (CategoryTheory.homOfLE subi).op, ← hu (CategoryTheory.homOfLE subi').op]
        let uii' := u (Opposite.op ({i, i'} : Finset ι))
        exact fun h => Subtype.mk_eq_mk.mp (uii'.property.1 h)
      · -- Show that it maps each index to the corresponding finite set
        intro i
        apply (u (Opposite.op ({i} : Finset ι))).property.2
  · -- The reverse direction is a straightforward cardinality argument
    rintro ⟨f, hf₁, hf₂⟩ s
    rw [← Finset.card_image_of_injective s hf₁]
    apply Finset.card_le_card
    intro
    rw [Finset.mem_image, Finset.mem_biUnion]
    rintro ⟨x, hx, rfl⟩
    exact ⟨x, hx, hf₂ x⟩

/-- Given a relation such that the image of every singleton set is finite, then the image of every
finite set is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante335e72409ede4a14255ede3a40f6e840c2a6235ca67af30a6d60bc357777e38.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810d0be432acc50e4b3384b4323a68cf5f779e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
