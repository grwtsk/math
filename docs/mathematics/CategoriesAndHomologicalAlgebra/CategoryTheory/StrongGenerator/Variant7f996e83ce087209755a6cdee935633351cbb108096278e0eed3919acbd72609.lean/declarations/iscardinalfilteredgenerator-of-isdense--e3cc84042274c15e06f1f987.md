# IsCardinalFilteredGenerator.of_isDense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fb29722-3963-1fca-9287-b71248cfa0e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c61fd6a-e2aa-9fd9-2ed2-3339b2366a9c",
  "kind": "lemma",
  "lexical_name": "IsCardinalFilteredGenerator.of_isDense",
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
  "slug": "iscardinalfilteredgenerator-of-isdense--e3cc84042274c15e06f1f987",
  "source": {
    "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3cc84042274c15e06f1f9875f18b938ae4924a27e989c213b6e643c36eb39bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c61fd6a-e2aa-9fd9-2ed2-3339b2366a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalFilteredGenerator.of_isDense
    [LocallySmall.{w} C] {J : Type u'} [Category.{v'} J] [EssentiallySmall.{w} J]
    (F : J ⥤ C) [F.IsDense] (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [∀ j, IsCardinalPresentable (F.obj j) κ]
    [∀ (X : C), IsCardinalFiltered (CostructuredArrow F X) κ] :
    ((⊤ : ObjectProperty J).map F).IsCardinalFilteredGenerator κ where
  le_isCardinalPresentable := by
    rintro X ⟨Y, hY, ⟨e⟩⟩
    exact isCardinalPresentable_of_iso e κ
  exists_colimitsOfShape X := by
    have ip := F.denseAt X
    let e := equivSmallModel.{w} (CostructuredArrow F X)
    exact ⟨SmallModel.{w} (CostructuredArrow F X), inferInstance,
      IsCardinalFiltered.of_equivalence κ e,
      ⟨{  diag := _
          ι := _
          isColimit := (F.denseAt X).whiskerEquivalence e.symm
          prop_diag_obj j := ⟨_, by simp, ⟨Iso.refl _⟩⟩ }⟩⟩

variable (κ) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232ac409a31120aa2b6d74c110de3785f322901d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
