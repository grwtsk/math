# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1443d4464d73d2f3d859fba458d9ebb167095ffd31964cc76fededb23cf2bb71",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--75f2cd9ea633cdcda0aaaa7e",
  "source": {
    "blob": "43b925467551ee35ac42fd658a06c0caddf81eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75f2cd9ea633cdcda0aaaa7e059e55de2af64e3db5390bc3b8dd26082b2babaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1443d4464d73d2f3d859fba458d9ebb167095ffd31964cc76fededb23cf2bb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def map : Point.{w} K :=
  Point.ofIsCofiltered.{w} (Functor.Elements.π Φ.fiber ⋙ F) (Φ.map_aux F K)

variable {A : Type u''} [Category.{v''} A] [HasColimitsOfSize.{w, w} A]

/-- Given a cocontinuous functor `F : C ⥤ D` between sites `(C, J)` and `(D, K)`,
`P` a presheaf on `D`, `X : C`, `x : Φ.fiber.obj X`, this is the canonical morphism
`P.obj (op (F.obj X)) ⟶ (Φ.map F K).presheafFiber.obj P`, which is part
of the colimit cocone `presheafFiberMapCocone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b925467551ee35ac42fd658a06c0caddf81eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
