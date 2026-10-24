# subobjectModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af2c07375dcaa04a6e3682c05dc2fc5474b03c3660b9a56890cb66667ad9433",
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
  "slug": "subobjectmodule--587009a90d47319bea820f67",
  "source": {
    "blob": "267388e04f1fe1c99c27406e56c42bd1f2ea5917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:587009a90d47319bea820f675ea9f6ac2864ff18a1d734a97794628ab16367b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af2c07375dcaa04a6e3682c05dc2fc5474b03c3660b9a56890cb66667ad9433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def subobjectModule : Subobject M ≃o Submodule R M :=
  OrderIso.symm
    { invFun := fun S => LinearMap.range S.arrow
      toFun := fun N => Subobject.mk (↾N.subtype)
      right_inv := fun S => Eq.symm (by
        fapply eq_mk_of_comm
        · apply LinearEquiv.toModuleIso'Left
          apply LinearEquiv.ofBijective (LinearMap.codRestrict (LinearMap.range S.arrow) S.arrow _)
          constructor
          · simp [← LinearMap.ker_eq_bot, LinearMap.ker_codRestrict]
            rw [ker_eq_bot_of_mono]
          · rw [← LinearMap.range_eq_top, LinearMap.range_codRestrict, Submodule.comap_subtype_self]
            exact LinearMap.mem_range_self _
        · apply LinearMap.ext
          intro x
          rfl)
      left_inv := fun N => by
        -- Porting note: The type of `↾N.subtype` was ambiguous. Not entirely sure, I made the right
        -- choice here
        convert congr_arg LinearMap.range
            (underlyingIso_arrow (↾N.subtype : of R { x // x ∈ N } ⟶ M)) using 1
        · have :
            -- Porting note: added the `.toLinearEquiv.toLinearMap`
            (underlyingIso (↾N.subtype : of R _ ⟶ M)).inv =
              (underlyingIso (↾N.subtype : of R _ ⟶ M)).symm.toLinearEquiv.toLinearMap := by
              apply LinearMap.ext
              intro x
              rfl
          rw [this, comp_def, LinearEquiv.range_comp]
        · exact (Submodule.range_subtype _).symm
      map_rel_iff' := fun {S T} => by
        refine' ⟨fun h => _, fun h => mk_le_mk_of_comm (↟(Submodule.ofLe h)) rfl⟩
        convert LinearMap.range_comp_le_range (ofMkLEMk _ _ h) (↾T.subtype)
        · simpa only [← comp_def, ofMkLEMk_comp] using (Submodule.range_subtype _).symm
        · exact (Submodule.range_subtype _).symm }
#align Module.subobject_Module ModuleCat.subobjectModule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant922ece31e5708086e91d44d2f0fde45e1a0467c805dfa16961c752b64520c3c1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `267388e04f1fe1c99c27406e56c42bd1f2ea5917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
