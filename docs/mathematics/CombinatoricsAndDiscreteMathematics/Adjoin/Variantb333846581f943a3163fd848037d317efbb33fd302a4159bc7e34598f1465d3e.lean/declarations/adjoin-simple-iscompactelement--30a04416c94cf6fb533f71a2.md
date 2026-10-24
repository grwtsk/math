# adjoin_simple_isCompactElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 588,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0f85cc0-141e-ab44-829f-fbae19b494b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b83ce08-821f-2981-c4af-1c84af0c30bd",
  "kind": "theorem",
  "lexical_name": "adjoin_simple_isCompactElement",
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
  "slug": "adjoin-simple-iscompactelement--30a04416c94cf6fb533f71a2",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 588,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a04416c94cf6fb533f71a26b04f262bb3bfb39e775f417130e5cd7c17dc38d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b83ce08-821f-2981-c4af-1c84af0c30bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_simple_isCompactElement (x : E) : IsCompactElement F⟮x⟯ := by
  rw [isCompactElement_iff_le_of_directed_sSup_le]
  rintro s ⟨F₀, hF₀⟩ hs hx
  simp only [adjoin_simple_le_iff] at hx ⊢
  let F : IntermediateField F E :=
    { carrier := ⋃ E ∈ s, ↑E
      add_mem' := by
        rintro x₁ x₂ ⟨-, ⟨F₁, rfl⟩, ⟨-, ⟨hF₁, rfl⟩, hx₁⟩⟩ ⟨-, ⟨F₂, rfl⟩, ⟨-, ⟨hF₂, rfl⟩, hx₂⟩⟩
        obtain ⟨F₃, hF₃, h₁₃, h₂₃⟩ := hs F₁ hF₁ F₂ hF₂
        exact mem_iUnion_of_mem F₃ (mem_iUnion_of_mem hF₃ (F₃.add_mem (h₁₃ hx₁) (h₂₃ hx₂)))
      mul_mem' := by
        rintro x₁ x₂ ⟨-, ⟨F₁, rfl⟩, ⟨-, ⟨hF₁, rfl⟩, hx₁⟩⟩ ⟨-, ⟨F₂, rfl⟩, ⟨-, ⟨hF₂, rfl⟩, hx₂⟩⟩
        obtain ⟨F₃, hF₃, h₁₃, h₂₃⟩ := hs F₁ hF₁ F₂ hF₂
        exact mem_iUnion_of_mem F₃ (mem_iUnion_of_mem hF₃ (F₃.mul_mem (h₁₃ hx₁) (h₂₃ hx₂)))
      inv_mem' := by
        rintro x ⟨-, ⟨E, rfl⟩, ⟨-, ⟨hE, rfl⟩, hx⟩⟩
        exact mem_iUnion_of_mem E (mem_iUnion_of_mem hE (E.inv_mem hx))
      algebraMap_mem' := fun x =>
        mem_iUnion_of_mem F₀ (mem_iUnion_of_mem hF₀ (F₀.algebraMap_mem x)) }
-- Porting note: original proof of `key` was
-- `sSup_le fun E1 hE1 => Set.subset_iUnion_of_subset E1 (subset_iUnion _ hE1)`
  have key : sSup s ≤ F := sSup_le fun E1 hE1 => by
    refine' Set.subset_iUnion_of_subset E1 _
    intro x hx
    simpa [hE1] using hx
  obtain ⟨-, ⟨E, rfl⟩, -, ⟨hE, rfl⟩, hx⟩ := key hx
  exact ⟨E, hE, hx⟩
#align intermediate_field.adjoin_simple_is_compact_element IntermediateField.adjoin_simple_isCompactElement

-- Porting note: original proof times out.
/-- Adjoining a finite subset is compact in the lattice of intermediate fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
