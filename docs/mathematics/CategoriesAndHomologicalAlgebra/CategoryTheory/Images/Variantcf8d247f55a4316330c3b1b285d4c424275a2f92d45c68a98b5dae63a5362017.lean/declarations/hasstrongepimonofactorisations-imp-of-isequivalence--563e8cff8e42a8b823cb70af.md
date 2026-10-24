# hasStrongEpiMonoFactorisations_imp_of_isEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae66ecd3-80bc-851f-a086-7f6eddafd71c",
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
  "slug": "hasstrongepimonofactorisations-imp-of-isequivalence--563e8cff8e42a8b823cb70af",
  "source": {
    "blob": "fbb2cbb450c2e31ed532d75a8aa84ee99835b9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 974,
    "line": 957,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:563e8cff8e42a8b823cb70af02f66c55bd20013216fc00b5bb0fe6ac2e2afce5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae66ecd3-80bc-851f-a086-7f6eddafd71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 957–974.

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
            simp only [asEquivalence_functor, Category.assoc, ← F.map_comp_assoc,
              MonoFactorisation.fac, fun_inv_map, id_obj, Iso.inv_hom_id_app, Category.comp_id,
              Iso.inv_hom_id_app_assoc] }⟩

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantcf8d247f55a4316330c3b1b285d4c424275a2f92d45c68a98b5dae63a5362017.lean#L957).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb2cbb450c2e31ed532d75a8aa84ee99835b9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
