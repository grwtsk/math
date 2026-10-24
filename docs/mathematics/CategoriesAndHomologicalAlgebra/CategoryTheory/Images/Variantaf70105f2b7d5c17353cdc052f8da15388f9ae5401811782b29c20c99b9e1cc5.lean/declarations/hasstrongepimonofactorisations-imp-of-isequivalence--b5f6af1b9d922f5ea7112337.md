# hasStrongEpiMonoFactorisations_imp_of_isEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04478b99-0031-d6f2-af2c-57484193ce17",
  "kind": "theorem",
  "lexical_name": "hasStrongEpiMonoFactorisations_imp_of_isEquivalence",
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
  "slug": "hasstrongepimonofactorisations-imp-of-isequivalence--b5f6af1b9d922f5ea7112337",
  "source": {
    "blob": "5799f5f17fe78ff97a16424cdd949070e746095c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1053,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantaf70105f2b7d5c17353cdc052f8da15388f9ae5401811782b29c20c99b9e1cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f6af1b9d922f5ea7112337cd348e0249dc78fa1530568d4fb9422bb2317c56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantaf70105f2b7d5c17353cdc052f8da15388f9ae5401811782b29c20c99b9e1cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04478b99-0031-d6f2-af2c-57484193ce17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1053–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrongEpiMonoFactorisations_imp_of_isEquivalence (F : C ⥤ D) [IsEquivalence F]
    [h : HasStrongEpiMonoFactorisations C] : HasStrongEpiMonoFactorisations D :=
  ⟨fun {X} {Y} f => by
    let em : StrongEpiMonoFactorisation (F.inv.map f) :=
      (HasStrongEpiMonoFactorisations.has_fac (F.inv.map f)).some
    haveI : Mono (F.map em.m ≫ F.asEquivalence.counitIso.hom.app Y) := mono_comp _ _
    haveI : StrongEpi (F.asEquivalence.counitIso.inv.app X ≫ F.map em.e) := strongEpi_comp _ _
    exact
      Nonempty.intro
        { I := F.obj em.I
          e := F.asEquivalence.counitIso.inv.app X ≫ F.map em.e
          m := F.map em.m ≫ F.asEquivalence.counitIso.hom.app Y
          fac := by
            simpa only [Category.assoc, ← F.map_comp_assoc, em.fac, IsEquivalence.fun_inv_map,
              Iso.inv_hom_id_app, Iso.inv_hom_id_app_assoc] using Category.comp_id _ }⟩
#align category_theory.functor.has_strong_epi_mono_factorisations_imp_of_is_equivalence CategoryTheory.Functor.hasStrongEpiMonoFactorisations_imp_of_isEquivalence

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantaf70105f2b7d5c17353cdc052f8da15388f9ae5401811782b29c20c99b9e1cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantaf70105f2b7d5c17353cdc052f8da15388f9ae5401811782b29c20c99b9e1cc5.lean#L1053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5799f5f17fe78ff97a16424cdd949070e746095c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
