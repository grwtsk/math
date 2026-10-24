# pullbackDiagonalMapIso.inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f594a82f17363c47913f875a4e9cd39ba526941fd9d9b288e49d46198266d84",
  "kind": "abbrev",
  "lexical_name": "pullbackDiagonalMapIso.inv",
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
  "slug": "pullbackdiagonalmapiso-inv--d7f6ee78aaaac75309192eb5",
  "source": {
    "blob": "e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7f6ee78aaaac75309192eb5db3357ebbf7af15602b2c48a78b15e763560419b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f594a82f17363c47913f875a4e9cd39ba526941fd9d9b288e49d46198266d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev pullbackDiagonalMapIso.inv : pullback i₁ i₂ ⟶
    pullback (diagonal f)
        (map (i₁ ≫ snd _ _) (i₂ ≫ snd _ _) f f (i₁ ≫ fst _ _) (i₂ ≫ fst _ _) i
          (by simp only [Category.assoc, condition])
          (by simp only [Category.assoc, condition])) :=
    pullback.lift (pullback.fst _ _ ≫ i₁ ≫ pullback.fst _ _)
      (pullback.map _ _ _ _ (𝟙 _) (𝟙 _) (pullback.snd _ _) (Category.id_comp _).symm
        (Category.id_comp _).symm) (by
        ext
        · simp only [Category.assoc, diagonal_fst, Category.comp_id, limit.lift_π,
          PullbackCone.mk_π_app, limit.lift_π_assoc, cospan_left]
        · simp only [condition_assoc, Category.assoc, diagonal_snd, Category.comp_id, limit.lift_π,
          PullbackCone.mk_π_app, limit.lift_π_assoc, cospan_right])

set_option backward.isDefEq.respectTransparency false in
/-- This iso witnesses the fact that
given `f : X ⟶ Y`, `i : U ⟶ Y`, and `i₁ : V₁ ⟶ X ×[Y] U`, `i₂ : V₂ ⟶ X ×[Y] U`, the diagram

```
V₁ ×[X ×[Y] U] V₂ ⟶ V₁ ×[U] V₂
        |                 |
        |                 |
        ↓                 ↓
        X         ⟶   X ×[Y] X
```

is a pullback square.
Also see `pullback_fst_map_snd_isPullback`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant5e910d3e7340d68c193d678f5ad45622ff45eeac0fe2f02f89393fac2b5b49d9.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e78560e3ecbb14be88da63a0aa7fe3ee5dbc02c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
