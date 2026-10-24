# isoOfIsIsomorphicZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e468f30c2bf03fe32f8b735b5db6909833641dab29194f3740440f3b59c7141",
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
  "slug": "isoofisisomorphiczero--a6e8002857fe5071395cadd1",
  "source": {
    "blob": "e8d5026f46ed2c1e355c98bf00946d629ca113d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 401,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6e8002857fe5071395cadd1e246c3311429060276a167535f5b806ec75fe876",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e468f30c2bf03fe32f8b735b5db6909833641dab29194f3740440f3b59c7141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–420.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variante27ccade7d8feabf6411eb61c86ec5431d08fd2e234ecaac88d5c3b2717a1547.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d5026f46ed2c1e355c98bf00946d629ca113d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
