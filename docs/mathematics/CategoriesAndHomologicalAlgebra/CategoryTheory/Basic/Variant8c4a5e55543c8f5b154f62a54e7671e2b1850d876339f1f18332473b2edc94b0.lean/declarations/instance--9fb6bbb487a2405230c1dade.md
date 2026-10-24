# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31513eb34f13115b1cc36eceb6f336390c7667934ab60b8a1ea3d029031304dd",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9fb6bbb487a2405230c1dade",
  "source": {
    "blob": "7ce487ed7e81e21fff44ce87cb9e9fb2724ca0aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4a5e55543c8f5b154f62a54e7671e2b1850d876339f1f18332473b2edc94b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fb6bbb487a2405230c1dade75a58e45f55b6888e16da93e9d493d4f1e68010d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4a5e55543c8f5b154f62a54e7671e2b1850d876339f1f18332473b2edc94b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31513eb34f13115b1cc36eceb6f336390c7667934ab60b8a1ea3d029031304dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {FV : V → V → Type*} {CV : V → Type*} [∀ X Y, FunLike (FV X Y) (CV X) (CV Y)]
    [ConcreteCategory V FV] : ConcreteCategory (Action V G) (HomSubtype V G) where
  hom f := ⟨ConcreteCategory.hom (C := V) f.1, fun g => by
    ext
    simpa using CategoryTheory.congr_fun (f.2 g) _⟩
  ofHom f := ⟨ConcreteCategory.ofHom (C := V) f, fun g => ConcreteCategory.ext_apply fun x => by
    simpa [ConcreteCategory.hom_ofHom] using congr_fun (f.2 g) x⟩
  hom_ofHom _ := by dsimp; ext; simp [ConcreteCategory.hom_ofHom]
  ofHom_hom _ := by ext; simp [ConcreteCategory.ofHom_hom]
  id_apply := ConcreteCategory.id_apply (C := V)
  comp_apply _ _ := ConcreteCategory.comp_apply (C := V) _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4a5e55543c8f5b154f62a54e7671e2b1850d876339f1f18332473b2edc94b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4a5e55543c8f5b154f62a54e7671e2b1850d876339f1f18332473b2edc94b0.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce487ed7e81e21fff44ce87cb9e9fb2724ca0aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
