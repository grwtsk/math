# comp_homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee881dab-2b0e-9e4d-b0ef-ce68f52447cd",
  "kind": "lemma",
  "lexical_name": "comp_homEquiv",
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
  "slug": "comp-homequiv--c6467628a0cfb7a380fd6c7f",
  "source": {
    "blob": "c0295ac81e7a133a015209fea0ce1e801c6ed914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 534,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantefd1ccac17f036eb39d07738b585e86c02d56bb7ce901b5abace3030f7444cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6467628a0cfb7a380fd6c7fbc304a7bd8dac1b39cff5fd5fcf6200845497060",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantefd1ccac17f036eb39d07738b585e86c02d56bb7ce901b5abace3030f7444cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee881dab-2b0e-9e4d-b0ef-ce68f52447cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_homEquiv :  (adj₁.comp adj₂).homEquiv =
    fun _ _ ↦ Equiv.trans (adj₂.homEquiv _ _) (adj₁.homEquiv _ _) :=
  mk'_homEquiv _

end

section ConstructLeft

-- Construction of a left adjoint. In order to construct a left
-- adjoint to a functor G : D → C, it suffices to give the object part
-- of a functor F : C → D together with isomorphisms Hom(FX, Y) ≃
-- Hom(X, GY) natural in Y. The action of F on morphisms can be
-- constructed from this data.
variable {F_obj : C → D}
variable (e : ∀ X Y, (F_obj X ⟶ Y) ≃ (X ⟶ G.obj Y))

/-- Construct a left adjoint functor to `G`, given the functor's value on objects `F_obj` and
a bijection `e` between `F_obj X ⟶ Y` and `X ⟶ G.obj Y` satisfying a naturality law
`he : ∀ X Y Y' g h, e X Y' (h ≫ g) = e X Y h ≫ G.map g`.
Dual to `rightAdjointOfEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantefd1ccac17f036eb39d07738b585e86c02d56bb7ce901b5abace3030f7444cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantefd1ccac17f036eb39d07738b585e86c02d56bb7ce901b5abace3030f7444cc1.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0295ac81e7a133a015209fea0ce1e801c6ed914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
