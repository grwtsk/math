# image.lift_mk_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f5f0cf7-7527-fdf9-df30-fae248f4613f",
  "kind": "theorem",
  "lexical_name": "image.lift_mk_comp",
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
  "slug": "image-lift-mk-comp--03f76a6b1274971d94cc5a30",
  "source": {
    "blob": "c3f7dfc8f13b50184e3f36754f84e94345654ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 421,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f76a6b1274971d94cc5a3057964a8db26bd7fd49fd28a19cfdf2ef12b63545",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5f0cf7-7527-fdf9-df30-fae248f4613f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image.lift_mk_comp {C : Type u} [Category.{v} C] {X Y Z : C}
    (f : X ⟶ Y) (g : Y ⟶ Z) [HasImage g] [HasImage (f ≫ g)]
    (h : Y ⟶ image g) (H : (f ≫ h) ≫ image.ι g = f ≫ g) :
    image.lift { I := image g, m := ι g, e := (f ≫ h) } ≫ image.ι g = image.ι (f ≫ g) :=
  image.lift_fac _

-- TODO we could put a category structure on `MonoFactorisation f`,
-- with the morphisms being `g : I ⟶ I'` commuting with the `m`s
-- (they then automatically commute with the `e`s)
-- and show that an `imageOf f` gives an initial object there
-- (uniqueness of the lift comes for free).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant41f955ed289bb3a0e64465324c5c068a74b4baab1818f2b55204ca28e803b71b.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f7dfc8f13b50184e3f36754f84e94345654ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
