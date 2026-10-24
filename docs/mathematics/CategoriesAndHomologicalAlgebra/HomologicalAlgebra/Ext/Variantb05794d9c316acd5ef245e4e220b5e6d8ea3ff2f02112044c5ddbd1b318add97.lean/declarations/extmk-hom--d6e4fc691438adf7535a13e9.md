# extMk_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b463b496-e45a-7d8c-fdd0-b374dd3731f3",
  "kind": "lemma",
  "lexical_name": "extMk_hom",
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
  "slug": "extmk-hom--d6e4fc691438adf7535a13e9",
  "source": {
    "blob": "0840c8c9350e98c65c413ba540a7eb89439f784d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e4fc691438adf7535a13e9255f7b70b83a110ef4863dc1be4b9069bedc717a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b463b496-e45a-7d8c-fdd0-b374dd3731f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extMk_hom
    [HasDerivedCategory C] {n : ℕ} (f : X ⟶ R.cocomplex.X n) (m : ℕ) (hm : n + 1 = m)
    (hf : f ≫ R.cocomplex.d n m = 0) :
    (R.extMk f m hm hf).hom =
    (ShiftedHom.mk₀ _ rfl ((DerivedCategory.singleFunctorIsoCompQ C 0).hom.app X)).comp
      ((ShiftedHom.map (Cocycle.equivHomShift.symm
        (Cocycle.fromSingleMk (f ≫ (R.cochainComplexXIso n n rfl).inv) (zero_add _) m
          (by lia) (by simp [cochainComplex_d _ _ _ n m rfl rfl, reassoc_of% hf]))) _).comp
            (.mk₀ _ rfl (inv (DerivedCategory.Q.map R.ι') ≫
              (DerivedCategory.singleFunctorIsoCompQ C 0).inv.app Y))
                (zero_add _)) (add_zero _) :=
  extEquivCohomologyClass_symm_mk_hom _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantb05794d9c316acd5ef245e4e220b5e6d8ea3ff2f02112044c5ddbd1b318add97.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0840c8c9350e98c65c413ba540a7eb89439f784d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
