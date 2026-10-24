# isCofiltered_costructuredArrow_of_isCofiltered_of_exists

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
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74665acc-b114-079e-bbbc-bb710c9cc1e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:950af4e9-1d68-ab39-da92-80826960064a",
  "kind": "theorem",
  "lexical_name": "isCofiltered_costructuredArrow_of_isCofiltered_of_exists",
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
  "slug": "iscofiltered-costructuredarrow-of-iscofiltered-of-exists--ed67adae0fc7369cbad6c3ee",
  "source": {
    "blob": "efc890983657a740e8a426453ff473cdca8c23e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed67adae0fc7369cbad6c3ee76d7049ae595f5015072854736c8a76b7945b92f",
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

Occurrence: `result:950af4e9-1d68-ab39-da92-80826960064a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCofiltered_costructuredArrow_of_isCofiltered_of_exists [IsCofilteredOrEmpty C] (d : D)
    (h₁ : ∃ c, Nonempty (F.obj c ⟶ d)) (h₂ : ∀ {c : C} (s s' : F.obj c ⟶ d),
      ∃ (c' : C) (t : c' ⟶ c), F.map t ≫ s = F.map t ≫ s') :
    IsCofiltered (CostructuredArrow F d) := by
  suffices IsFiltered (CostructuredArrow F d)ᵒᵖ from isCofiltered_of_isFiltered_op _
  suffices IsFiltered (StructuredArrow (op d) F.op) from
    IsFiltered.of_equivalence (costructuredArrowOpEquivalence _ _).symm
  apply isFiltered_structuredArrow_of_isFiltered_of_exists
  · obtain ⟨c, ⟨t⟩⟩ := h₁
    exact ⟨op c, ⟨Quiver.Hom.op t⟩⟩
  · intro c s s'
    obtain ⟨c', t, ht⟩ := h₂ s.unop s'.unop
    exact ⟨op c', Quiver.Hom.op t, Quiver.Hom.unop_inj ht⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb0804287891877fcce157e001adf107c5afcb8ddb9a325e9777fd4965b76d80f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc890983657a740e8a426453ff473cdca8c23e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
