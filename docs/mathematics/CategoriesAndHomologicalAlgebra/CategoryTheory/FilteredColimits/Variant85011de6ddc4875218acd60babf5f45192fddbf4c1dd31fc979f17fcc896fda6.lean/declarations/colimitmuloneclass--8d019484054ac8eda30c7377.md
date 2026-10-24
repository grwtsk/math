# colimitMulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac0637a806c130b0b05b642c26c22a293ea8db7c38efa7fba7ae1e5fc59f81fe",
  "kind": "instance",
  "lexical_name": "colimitMulOneClass",
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
  "slug": "colimitmuloneclass--8d019484054ac8eda30c7377",
  "source": {
    "blob": "61a7beb1fbb47b26f39d0f223eedda258a9b98ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d019484054ac8eda30c73777b65d4dd6baf3d736bce44fa7532310adccf95ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac0637a806c130b0b05b642c26c22a293ea8db7c38efa7fba7ae1e5fc59f81fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance colimitMulOneClass : MulOneClass (M.{v, u} F) :=
  { colimitOne F,
    colimitMul F with
    one_mul := fun x => by
      refine Quot.inductionOn x ?_
      intro x
      cases' x with j x
      rw [colimit_one_eq F j, colimit_mul_mk_eq F ⟨j, 1⟩ ⟨j, x⟩ j (𝟙 j) (𝟙 j), MonoidHom.map_one,
        one_mul, F.map_id]
      -- Porting note : `id_apply` does not work here, but the two sides are def-eq
      rfl
    mul_one := fun x => by
      refine Quot.inductionOn x ?_
      intro x
      cases' x with j x
      rw [colimit_one_eq F j, colimit_mul_mk_eq F ⟨j, x⟩ ⟨j, 1⟩ j (𝟙 j) (𝟙 j), MonoidHom.map_one,
        mul_one, F.map_id]
      -- Porting note : `id_apply` does not work here, but the two sides are def-eq
      rfl }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant85011de6ddc4875218acd60babf5f45192fddbf4c1dd31fc979f17fcc896fda6.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a7beb1fbb47b26f39d0f223eedda258a9b98ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
