# comp_val_c_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67867c4-3135-9e63-2f03-430185af6170",
  "kind": "theorem",
  "lexical_name": "comp_val_c_app",
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
  "slug": "comp-val-c-app--694686f1cbd7c9c996ba567b",
  "source": {
    "blob": "ce4ea7f71d7dad78c0d01fbceff61dae69d65437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 191,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694686f1cbd7c9c996ba567b86c589cf92a6e47f7f3623cc73556175b8239f7c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67867c4-3135-9e63-2f03-430185af6170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_val_c_app {X Y Z : LocallyRingedSpace} (f : X ⟶ Y) (g : Y ⟶ Z) (U : (Opens Z)ᵒᵖ) :
    (f ≫ g).val.c.app U = g.val.c.app U ≫ f.val.c.app (op <| (Opens.map g.val.base).obj U.unop) :=
  rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.LocallyRingedSpace.comp_val_c_app AlgebraicGeometry.LocallyRingedSpace.comp_val_c_app

/-- Given two locally ringed spaces `X` and `Y`, an isomorphism between `X` and `Y` as _sheafed_
spaces can be lifted to a morphism `X ⟶ Y` as locally ringed spaces.

See also `iso_of_SheafedSpace_iso`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4ea7f71d7dad78c0d01fbceff61dae69d65437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
