# isoOfIsIsomorphicZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f37124b20f6f0f8b48b7edcde3d6b6ab9719003de7638716d0362909953be179",
  "kind": "def",
  "lexical_name": "isoOfIsIsomorphicZero",
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
  "slug": "isoofisisomorphiczero--684cbd7dc3f8efaf507dfd4d",
  "source": {
    "blob": "b90347c6d8c78d98276cb55708dfe7355afe4079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 409,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:684cbd7dc3f8efaf507dfd4da1c123f1afae3aab75014e0fe6eff10eaea70946",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f37124b20f6f0f8b48b7edcde3d6b6ab9719003de7638716d0362909953be179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfIsIsomorphicZero {X : C} (P : IsIsomorphic X 0) : X ≅ 0 where
  hom := 0
  inv := 0
  hom_inv_id := by
    have P := P.some
    rw [← P.hom_inv_id, ← Category.id_comp P.inv]
    apply Eq.symm
    simp only [id_comp, Iso.hom_inv_id, comp_zero]
    apply (idZeroEquivIsoZero X).invFun P
  inv_hom_id := by simp

end

section IsIso

variable [HasZeroMorphisms C]

/-- A zero morphism `0 : X ⟶ Y` is an isomorphism if and only if
the identities on both `X` and `Y` are zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variantef429a783b830f9cd27cce6d1d74c15f7b6e5468e541b4728e899254213a281d.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90347c6d8c78d98276cb55708dfe7355afe4079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
