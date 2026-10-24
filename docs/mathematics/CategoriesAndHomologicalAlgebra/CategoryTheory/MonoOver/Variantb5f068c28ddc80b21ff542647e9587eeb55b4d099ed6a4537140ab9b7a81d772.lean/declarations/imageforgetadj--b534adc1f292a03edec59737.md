# imageForgetAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebe257f48da0e0b33ea22b6f8bf3a606b72562a4a5fc9b17f3d9514c70a4d16b",
  "kind": "def",
  "lexical_name": "imageForgetAdj",
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
  "slug": "imageforgetadj--b534adc1f292a03edec59737",
  "source": {
    "blob": "aaf7cddf4c2dc97d4df81c3fb81a6d1d929ef646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 377,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b534adc1f292a03edec597370625df75bab4e06a89cb84b9d1977236b7109f1c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebe257f48da0e0b33ea22b6f8bf3a606b72562a4a5fc9b17f3d9514c70a4d16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def imageForgetAdj : image ⊣ forget X :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun f g =>
        { toFun := fun k => by
            apply Over.homMk (factorThruImage f.hom ≫ k.left) _
            change (factorThruImage f.hom ≫ k.left) ≫ _ = f.hom
            rw [assoc, Over.w k]
            apply image.fac
          invFun := fun k => by
            refine' Over.homMk _ _
            refine'
              image.lift
                { I := g.obj.left
                  m := g.arrow
                  e := k.left
                  fac := Over.w k }
            apply image.lift_fac
          left_inv := fun k => Subsingleton.elim _ _
          right_inv := fun k => by
            ext1
            change factorThruImage _ ≫ image.lift _ = _
            rw [← cancel_mono g.arrow, assoc, image.lift_fac, image.fac f.hom]
            exact (Over.w k).symm } }
#align category_theory.mono_over.image_forget_adj CategoryTheory.MonoOver.imageForgetAdj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variantb5f068c28ddc80b21ff542647e9587eeb55b4d099ed6a4537140ab9b7a81d772.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf7cddf4c2dc97d4df81c3fb81a6d1d929ef646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
