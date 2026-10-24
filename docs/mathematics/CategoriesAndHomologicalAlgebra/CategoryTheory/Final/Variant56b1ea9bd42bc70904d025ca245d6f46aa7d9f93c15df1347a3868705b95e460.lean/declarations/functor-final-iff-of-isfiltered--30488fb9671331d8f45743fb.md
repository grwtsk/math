# Functor.final_iff_of_isFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15db72ae-4b99-fc21-fd07-13e72731ce15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f81fa7c4-d95a-aac0-4fa7-80e728264352",
  "kind": "theorem",
  "lexical_name": "Functor.final_iff_of_isFiltered",
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
  "slug": "functor-final-iff-of-isfiltered--30488fb9671331d8f45743fb",
  "source": {
    "blob": "f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30488fb9671331d8f45743fb160a1f7b06b12bbf2373cff4a01b7e08390f2290",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f81fa7c4-d95a-aac0-4fa7-80e728264352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.final_iff_of_isFiltered [IsFilteredOrEmpty C] :
    Final F ↔ (∀ d, ∃ c, Nonempty (d ⟶ F.obj c)) ∧ (∀ {d : D} {c : C} (s s' : d ⟶ F.obj c),
      ∃ (c' : C) (t : c ⟶ c'), s ≫ F.map t = s' ≫ F.map t) := by
  refine ⟨fun hF => ⟨?_, ?_⟩, fun h => final_of_exists_of_isFiltered F h.1 h.2⟩
  · intro d
    obtain ⟨f⟩ : Nonempty (StructuredArrow d F) := IsConnected.is_nonempty
    exact ⟨_, ⟨f.hom⟩⟩
  · let s₁ : C ≌ AsSmall.{max u₁ v₁ u₂ v₂} C := AsSmall.equiv
    let s₂ : D ≌ AsSmall.{max u₁ v₁ u₂ v₂} D := AsSmall.equiv
    have : IsFilteredOrEmpty (AsSmall.{max u₁ v₁ u₂ v₂} C) := .of_equivalence s₁
    intro d c s s'
    obtain ⟨c', t, ht⟩ := Functor.Final.exists_coeq_of_locally_small (s₁.inverse ⋙ F ⋙ s₂.functor)
      (AsSmall.up.map s) (AsSmall.up.map s')
    exact ⟨AsSmall.down.obj c', AsSmall.down.map t, s₂.functor.map_injective (by simp_all [s₁, s₂])⟩

/-- If `C` is cofiltered, then we can give an explicit condition for a functor `F : C ⥤ D` to
    be initial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant56b1ea9bd42bc70904d025ca245d6f46aa7d9f93c15df1347a3868705b95e460.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a44c3bd6ba4fdc148a33b8a0c240e30dbb6efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
