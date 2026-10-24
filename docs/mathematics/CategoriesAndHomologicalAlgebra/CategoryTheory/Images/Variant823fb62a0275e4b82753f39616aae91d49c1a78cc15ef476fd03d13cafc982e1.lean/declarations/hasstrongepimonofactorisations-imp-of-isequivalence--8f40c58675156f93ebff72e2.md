# hasStrongEpiMonoFactorisations_imp_of_isEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1028,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b88a71ec-4128-c7dc-08f9-4708bbf28303",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:adeace0f-8e35-2b27-45a0-dc10cc3b4477",
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
  "slug": "hasstrongepimonofactorisations-imp-of-isequivalence--8f40c58675156f93ebff72e2",
  "source": {
    "blob": "e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1028,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f40c58675156f93ebff72e2be06a5160c45435ca27ff93cbd96aa8439df8433",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adeace0f-8e35-2b27-45a0-dc10cc3b4477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1028–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStrongEpiMonoFactorisations_imp_of_isEquivalence (F : C ⥤ D) [IsEquivalence F]
    [h : HasStrongEpiMonoFactorisations C] : HasStrongEpiMonoFactorisations D :=
  ⟨fun {X} {Y} f => by
    let em : StrongEpiMonoFactorisation (F.inv.map f) :=
      (HasStrongEpiMonoFactorisations.has_fac (F.inv.map f)).some
    have : Mono (F.map em.m ≫ F.asEquivalence.counitIso.hom.app Y) := mono_comp _ _
    have : StrongEpi (F.asEquivalence.counitIso.inv.app X ≫ F.map em.e) := strongEpi_comp _ _
    exact
      Nonempty.intro
        { I := F.obj em.I
          e := F.asEquivalence.counitIso.inv.app X ≫ F.map em.e
          m := F.map em.m ≫ F.asEquivalence.counitIso.hom.app Y
          fac := by
            simp only [Category.assoc, ← F.map_comp_assoc,
              MonoFactorisation.fac, fun_inv_map, id_obj, Iso.inv_hom_id_app, Category.comp_id,
              Iso.inv_hom_id_app_assoc] }⟩

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean#L1028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
