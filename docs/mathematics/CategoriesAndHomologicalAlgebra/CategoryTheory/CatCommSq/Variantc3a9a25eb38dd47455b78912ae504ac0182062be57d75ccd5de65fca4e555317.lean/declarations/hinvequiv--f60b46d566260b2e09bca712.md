# hInvEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af4964866387aa1029df133bd58bc2cfcc91ecd844a80d4ee7edbd374cea8579",
  "kind": "def",
  "lexical_name": "hInvEquiv",
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
  "slug": "hinvequiv--f60b46d566260b2e09bca712",
  "source": {
    "blob": "c0b22904ec7b1ad38631410caeda69bc17d53b48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f60b46d566260b2e09bca712e36d82c8081c22de3fa98a192f6d047df87278b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af4964866387aa1029df133bd58bc2cfcc91ecd844a80d4ee7edbd374cea8579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hInvEquiv : CatCommSq T.functor L R B.functor ≃ CatCommSq T.inverse R L B.inverse where
  toFun := hInv T L R B
  invFun := hInv T.symm R L B.symm
  left_inv := hInv_hInv T L R B
  right_inv := hInv_hInv T.symm R L B.symm

end

section

variable (T : C₁ ⥤ C₂) (L : C₁ ≌ C₃) (R : C₂ ≌ C₄) (B : C₃ ⥤ C₄)

/-- Vertical inverse of a 2-commutative square -/
@[simps! iso'_hom_app iso'_inv_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b22904ec7b1ad38631410caeda69bc17d53b48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
