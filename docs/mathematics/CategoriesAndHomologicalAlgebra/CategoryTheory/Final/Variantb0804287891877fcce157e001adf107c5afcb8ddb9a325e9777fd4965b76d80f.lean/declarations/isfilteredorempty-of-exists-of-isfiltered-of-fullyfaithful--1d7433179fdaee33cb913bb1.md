# IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f5ca989-48c5-8215-779a-f9f1c7b90317",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5db7949-a55d-caa3-a8c4-d6ce1aa650c6",
  "kind": "theorem",
  "lexical_name": "IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful",
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
  "slug": "isfilteredorempty-of-exists-of-isfiltered-of-fullyfaithful--1d7433179fdaee33cb913bb1",
  "source": {
    "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d7433179fdaee33cb913bb1170288eed1908abccdd6b90cd42944873462a1eb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5db7949-a55d-caa3-a8c4-d6ce1aa650c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFilteredOrEmpty.of_exists_of_isFiltered_of_fullyFaithful [IsFilteredOrEmpty D] [F.Full]
    [F.Faithful] (h : ∀ d, ∃ c, Nonempty (d ⟶ F.obj c)) : IsFilteredOrEmpty C where
  cocone_objs c c' := by
    obtain ⟨c₀, ⟨f⟩⟩ := h (IsFiltered.max (F.obj c) (F.obj c'))
    exact ⟨c₀, F.preimage (IsFiltered.leftToMax _ _ ≫ f),
      F.preimage (IsFiltered.rightToMax _ _ ≫ f), trivial⟩
  cocone_maps {c c'} f g := by
    obtain ⟨c₀, ⟨f₀⟩⟩ := h (IsFiltered.coeq (F.map f) (F.map g))
    refine ⟨_, F.preimage (IsFiltered.coeqHom (F.map f) (F.map g) ≫ f₀), F.map_injective ?_⟩
    simp [reassoc_of% (IsFiltered.coeq_condition (F.map f) (F.map g))]

/-- In this situation, `F` is also initial, see
`Functor.initial_of_exists_of_isCofiltered_of_fullyFaithful`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc890983657a740e8a426453ff473cdca8c23e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
