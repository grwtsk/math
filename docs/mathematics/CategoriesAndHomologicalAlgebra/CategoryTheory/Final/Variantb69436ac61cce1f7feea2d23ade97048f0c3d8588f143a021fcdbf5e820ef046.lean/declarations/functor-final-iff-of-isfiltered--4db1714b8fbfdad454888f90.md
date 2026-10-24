# Functor.final_iff_of_isFiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca06b931-c915-e2fd-a971-87261be8c4d3",
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
  "slug": "functor-final-iff-of-isfiltered--4db1714b8fbfdad454888f90",
  "source": {
    "blob": "73bf54c45f474ea31848b3213ba175e79bb25407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 269,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db1714b8fbfdad454888f904e75c99d85a22b5dd53e3ea1937276524786479d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca06b931-c915-e2fd-a971-87261be8c4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–285.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bf54c45f474ea31848b3213ba175e79bb25407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
