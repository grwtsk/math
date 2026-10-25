# le_range_of_union_finset_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8db3882da37ef299a35ab3b999665ea50ea11f52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5274fe3-3c49-4e4a-a99e-cdcdf83e62d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3006da2d-35a3-9698-310c-f7dfabeccc02",
  "kind": "theorem",
  "lexical_name": "le_range_of_union_finset_eq_top",
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
  "slug": "le-range-of-union-finset-eq-top--6a7931d0db82a54ad5c8efe3",
  "source": {
    "blob": "8db3882da37ef299a35ab3b999665ea50ea11f52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7931d0db82a54ad5c8efe33aefec693881e71429683c7c2a08ccbff0dd2f0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3006da2d-35a3-9698-310c-f7dfabeccc02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_range_of_union_finset_eq_top {α β : Type*} [Infinite β] (f : α → Finset β)
    (w : ⋃ a, (f a : Set β) = ⊤) : #β ≤ #(range f) := by
  have k : _root_.Infinite (range f) := by
    rw [infinite_coe_iff]
    apply mt (union_finset_finite_of_range_finite f)
    rw [w]
    exact infinite_univ
  by_contra h
  simp only [not_le] at h
  let u : ∀ b, ∃ a, b ∈ f a := fun b => by simpa using (w.ge :) (Set.mem_univ b)
  let u' : β → range f := fun b => ⟨f (u b).choose, by simp⟩
  have v' : ∀ a, u' ⁻¹' {⟨f a, by simp⟩} ≤ f a := by
    rintro a p m
    simp? [u']  at m says simp only [mem_preimage, mem_singleton_iff, Subtype.mk.injEq, u'] at m
    rw [← m]
    apply fun b => (u b).choose_spec
  obtain ⟨⟨-, ⟨a, rfl⟩⟩, p⟩ := exists_infinite_fiber u' h k
  exact (@Infinite.of_injective _ _ p (inclusion (v' a)) (inclusion_injective _)).false

end Cardinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8db3882da37ef299a35ab3b999665ea50ea11f52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
