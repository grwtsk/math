# Finset.all_card_le_biUnion_card_iff_existsInjective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2156e15f-27c0-83db-da73-b7bfd219a679",
  "kind": "theorem",
  "lexical_name": "Finset.all_card_le_biUnion_card_iff_existsInjective'",
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
  "slug": "finset-all-card-le-biunion-card-iff-existsinjective--ccd250d22efec3fd710c833a",
  "source": {
    "blob": "d4a8ed3b0acafdf3233b93a1991ab599968583a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd250d22efec3fd710c833a89c27b03e0fbe9ffcde1b7515f8384bee4c5ca75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2156e15f-27c0-83db-da73-b7bfd219a679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.all_card_le_biUnion_card_iff_existsInjective' {ι α : Type*} [Finite ι]
    [DecidableEq α] (t : ι → Finset α) :
    (∀ s : Finset ι, s.card ≤ (s.biUnion t).card) ↔
      ∃ f : ι → α, Function.Injective f ∧ ∀ x, f x ∈ t x := by
  constructor
  · exact HallMarriageTheorem.hall_hard_inductive
  · rintro ⟨f, hf₁, hf₂⟩ s
    rw [← card_image_of_injective s hf₁]
    apply card_le_of_subset
    intro
    rw [mem_image, mem_biUnion]
    rintro ⟨x, hx, rfl⟩
    exact ⟨x, hx, hf₂ x⟩
#align finset.all_card_le_bUnion_card_iff_exists_injective' Finset.all_card_le_biUnion_card_iff_existsInjective'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantc500a398f6699bcb65d45891aa012b6e931972f8f426e489dca40fa7cf59eae7.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a8ed3b0acafdf3233b93a1991ab599968583a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
