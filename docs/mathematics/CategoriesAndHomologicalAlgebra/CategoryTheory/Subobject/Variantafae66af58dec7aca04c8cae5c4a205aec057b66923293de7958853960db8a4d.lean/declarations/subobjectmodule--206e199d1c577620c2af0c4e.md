# subobjectModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b3e262cb423a4a7b9e5da09a01e10ccd6784ead3584656b75305d2dbaece60",
  "kind": "def",
  "lexical_name": "subobjectModule",
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
  "slug": "subobjectmodule--206e199d1c577620c2af0c4e",
  "source": {
    "blob": "a4875abda74d42af3de8ed6940fa3b9f408a24e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:206e199d1c577620c2af0c4ee29ae3ceff462678b5a177b12458fa9ab40cb37f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b3e262cb423a4a7b9e5da09a01e10ccd6784ead3584656b75305d2dbaece60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def subobjectModule : Subobject M ≃o Submodule R M :=
  OrderIso.symm
    { invFun := fun S => LinearMap.range S.arrow.hom
      toFun := fun N => Subobject.mk (ofHom N.subtype)
      right_inv := fun S => Eq.symm (by
        fapply eq_mk_of_comm
        · apply LinearEquiv.toModuleIso
          apply LinearEquiv.ofBijective (LinearMap.codRestrict
            (LinearMap.range S.arrow.hom) S.arrow.hom _)
          constructor
          · simp [← LinearMap.ker_eq_bot, LinearMap.ker_codRestrict]
            rw [ker_eq_bot_of_mono]
          · rw [← LinearMap.range_eq_top, LinearMap.range_codRestrict,
              Submodule.comap_subtype_self]
            exact LinearMap.mem_range_self _
        · ext x
          rfl)
      left_inv := fun N => by
        convert congr_arg LinearMap.range (ModuleCat.hom_ext_iff.mp
            (underlyingIso_arrow (ofHom N.subtype))) using 1
        · have :
            (underlyingIso (ofHom N.subtype)).inv =
              ofHom (underlyingIso (ofHom N.subtype)).symm.toLinearEquiv.toLinearMap := by
              ext x
              rfl
          rw [this, hom_comp, hom_ofHom, LinearEquiv.range_comp]
        · exact (Submodule.range_subtype _).symm
      map_rel_iff' := fun {S T} => by
        refine ⟨fun h => ?_, fun h => mk_le_mk_of_comm (↟(Submodule.inclusion h)) rfl⟩
        convert LinearMap.range_comp_le_range (ofMkLEMk _ _ h).hom (ofHom T.subtype).hom
        · rw [← hom_comp, ofMkLEMk_comp]
          exact (Submodule.range_subtype _).symm
        · exact (Submodule.range_subtype _).symm }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantafae66af58dec7aca04c8cae5c4a205aec057b66923293de7958853960db8a4d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4875abda74d42af3de8ed6940fa3b9f408a24e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
