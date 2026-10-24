# unit_isIso_of_L_fully_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0891f3307ce32dee98bcf451e47b2c0386b665480bf07c3e6cff27066e03d0b3",
  "kind": "instance",
  "lexical_name": "unit_isIso_of_L_fully_faithful",
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
  "slug": "unit-isiso-of-l-fully-faithful--c61ba6e6bdbaec611b24ad3b",
  "source": {
    "blob": "051e2014dfea770f8876c5149962c991ac08364e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c61ba6e6bdbaec611b24ad3be5fbdbb0345b52cb784267056266c0f5260818a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0891f3307ce32dee98bcf451e47b2c0386b665480bf07c3e6cff27066e03d0b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance unit_isIso_of_L_fully_faithful [Full L] [Faithful L] : IsIso (Adjunction.unit h) :=
  @NatIso.isIso_of_isIso_app _ _ _ _ _ _ (Adjunction.unit h) fun X =>
    @Yoneda.isIso _ _ _ _ ((Adjunction.unit h).app X)
      ⟨⟨{ app := fun Y f => L.preimage ((h.homEquiv (unop Y) (L.obj X)).symm f) },
          ⟨by
            ext x
            apply L.map_injective
            aesop_cat,
           by
            ext x
            dsimp
            simp only [Adjunction.homEquiv_counit, preimage_comp, preimage_map, Category.assoc]
            rw [← h.unit_naturality]
            simp⟩⟩⟩
set_option linter.uppercaseLean3 false in
#align category_theory.unit_is_iso_of_L_fully_faithful CategoryTheory.unit_isIso_of_L_fully_faithful

/-- If the right adjoint is fully faithful, then the counit is an isomorphism.

See <https://stacks.math.columbia.edu/tag/07RB> (we only prove the forward direction!)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `051e2014dfea770f8876c5149962c991ac08364e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
