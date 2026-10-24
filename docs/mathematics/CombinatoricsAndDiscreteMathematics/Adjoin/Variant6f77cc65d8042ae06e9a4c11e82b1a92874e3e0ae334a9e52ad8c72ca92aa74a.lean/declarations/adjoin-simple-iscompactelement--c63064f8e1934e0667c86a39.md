# adjoin_simple_isCompactElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feb88f93-6091-954b-df18-8842a319f298",
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
  "slug": "adjoin-simple-iscompactelement--c63064f8e1934e0667c86a39",
  "source": {
    "blob": "c3706b8a02530204e89d7161d83deebb527a9cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 596,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c63064f8e1934e0667c86a39cec75d35fb606da44c48eb234624db8701e76d44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feb88f93-6091-954b-df18-8842a319f298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–626.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3706b8a02530204e89d7161d83deebb527a9cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
