# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:356565aa8bd4b0dd3858d4369ca8d82865cbbcea0469451aa6b699b43041730f",
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
  "slug": "instance--ad3a38c6df2dbca53a408b58",
  "source": {
    "blob": "759c0feaf72a037ccb164922c16fae1aea809c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 504,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad3a38c6df2dbca53a408b58de5439973c2eab8ac0d480c36f45e1f467e1dc3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:356565aa8bd4b0dd3858d4369ca8d82865cbbcea0469451aa6b699b43041730f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : P.trW.RespectsIso where
  precomp {X' X Y} e (he : IsIso e) := by
    rintro f ⟨Z, g, h, mem, mem'⟩
    refine ⟨Z, g, h ≫ inv e⟦(1 : ℤ)⟧', isomorphic_distinguished _ mem _ ?_, mem'⟩
    refine Triangle.isoMk _ _ (asIso e) (Iso.refl _) (Iso.refl _) (by simp) (by simp) ?_
    dsimp
    simp only [Functor.map_inv, assoc, IsIso.inv_hom_id, comp_id, id_comp]
  postcomp {X Y Y'} e (he : IsIso e) := by
    rintro f ⟨Z, g, h, mem, mem'⟩
    refine ⟨Z, inv e ≫ g, h, isomorphic_distinguished _ mem _ ?_, mem'⟩
    exact Triangle.isoMk _ _ (Iso.refl _) (asIso e).symm (Iso.refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant58e20f6776141774e268244025ec4c3f8f7a91bd80b824b634d2b4c7a51f047b.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759c0feaf72a037ccb164922c16fae1aea809c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
