# fromCokleisli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:674a7999fb8c35ac25677da449f51b891e53662802015dbd10858a21ce88b364",
  "kind": "def",
  "lexical_name": "fromCokleisli",
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
  "slug": "fromcokleisli--c7a7e5310bd10b18e02fa0a7",
  "source": {
    "blob": "3a227c64ff999194d6d2b490cb26e3aaaf065989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7a7e5310bd10b18e02fa0a770ac3116484e18370916d2eacfcb1e5f8d0b0563",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:674a7999fb8c35ac25677da449f51b891e53662802015dbd10858a21ce88b364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromCokleisli : Cokleisli U ⥤ C where
  obj X := U.obj X
  map {X} {_} f := U.δ.app X ≫ U.map f
  map_id _ := U.right_counit _
  map_comp {X} {Y} {_} f g := by
    -- Porting note: working around lack of unfold_projs
    change U.δ.app X ≫ U.map (U.δ.app X ≫ U.map f ≫ g) =
      (U.δ.app X ≫ U.map f) ≫ (U.δ.app Y ≫ U.map g)
    simp only [Functor.map_comp, ← Category.assoc]
    rw [Comonad.coassoc]
    simp only [Category.assoc, NatTrans.naturality, Functor.comp_map]

/-- The co-Kleisli adjunction which gives rise to the monad `(U, ε_ U, δ_ U)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variante45f12fc1f6d19bf4f3dbe9eafd1e8b1659d72fabac46bf2a73f7f48d929c43a.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a227c64ff999194d6d2b490cb26e3aaaf065989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
