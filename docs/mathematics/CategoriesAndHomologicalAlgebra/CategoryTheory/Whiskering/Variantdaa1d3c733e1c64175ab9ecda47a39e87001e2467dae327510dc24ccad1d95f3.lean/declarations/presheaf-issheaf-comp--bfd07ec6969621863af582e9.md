# Presheaf.IsSheaf.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "071e1b36be904bd8dddadc0b3ece0a267cf6126e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aef94fa-2bbb-1d0d-e523-721c059e6030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8309af8b-248c-4825-71dc-006b9f98ba72",
  "kind": "theorem",
  "lexical_name": "Presheaf.IsSheaf.comp",
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
  "slug": "presheaf-issheaf-comp--bfd07ec6969621863af582e9",
  "source": {
    "blob": "071e1b36be904bd8dddadc0b3ece0a267cf6126e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd07ec6969621863af582e9be1ae7f9828d78778dc0e9a0f816da1a82b01beb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8309af8b-248c-4825-71dc-006b9f98ba72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Presheaf.IsSheaf.comp {P : Cᵒᵖ ⥤ A} (hP : Presheaf.IsSheaf J P) :
    Presheaf.IsSheaf J (P ⋙ F) := by
  rw [Presheaf.isSheaf_iff_multifork] at hP ⊢
  intro X S
  obtain ⟨h⟩ := hP X S
  replace h := isLimitOfPreserves F h
  replace h := Limits.IsLimit.ofIsoLimit h (S.mapMultifork F P)
  exact ⟨Limits.IsLimit.postcomposeHomEquiv (S.multicospanComp F P) _ h⟩
#align category_theory.presheaf.is_sheaf.comp CategoryTheory.Presheaf.IsSheaf.comp

variable (J)

/-- Composing a sheaf with a functor preserving the appropriate limits yields a functor
between sheaf categories. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantdaa1d3c733e1c64175ab9ecda47a39e87001e2467dae327510dc24ccad1d95f3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `071e1b36be904bd8dddadc0b3ece0a267cf6126e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
