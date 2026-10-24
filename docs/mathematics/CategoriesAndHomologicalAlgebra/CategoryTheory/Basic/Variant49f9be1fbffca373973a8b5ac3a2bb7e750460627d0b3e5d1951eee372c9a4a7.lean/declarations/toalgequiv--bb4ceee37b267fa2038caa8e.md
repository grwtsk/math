# toAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de36d51cea61373568ea26535d83699a5381e22506534b5bb35fda0a5ffd29fb",
  "kind": "def",
  "lexical_name": "toAlgEquiv",
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
  "slug": "toalgequiv--bb4ceee37b267fa2038caa8e",
  "source": {
    "blob": "1e07bd0ba484869054ca8df55166654590229698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb4ceee37b267fa2038caa8ea033b14bb373194bd1e88c6a1052f855ad3aa52f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de36d51cea61373568ea26535d83699a5381e22506534b5bb35fda0a5ffd29fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAlgEquiv {X Y : AlgebraCat R} (i : X ≅ Y) : X ≃ₐ[R] Y where
  toFun := i.hom
  invFun := i.inv
  left_inv x := by
    -- porting note: was `by tidy`
    change (i.hom ≫ i.inv) x = x
    simp only [hom_inv_id]
    rw [id_apply]
  right_inv x := by
    -- porting note: was `by tidy`
    change (i.inv ≫ i.hom) x = x
    simp only [inv_hom_id]
    rw [id_apply]
  map_add' := i.hom.map_add -- Porting note: was `by tidy`
  map_mul' := i.hom.map_mul -- Porting note: was `by tidy`
  commutes' := i.hom.commutes -- Porting note: was `by tidy`
#align category_theory.iso.to_alg_equiv CategoryTheory.Iso.toAlgEquiv

end CategoryTheory.Iso

/-- Algebra equivalences between `Algebra`s are the same as (isomorphic to) isomorphisms in
`AlgebraCat`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant49f9be1fbffca373973a8b5ac3a2bb7e750460627d0b3e5d1951eee372c9a4a7.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e07bd0ba484869054ca8df55166654590229698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
