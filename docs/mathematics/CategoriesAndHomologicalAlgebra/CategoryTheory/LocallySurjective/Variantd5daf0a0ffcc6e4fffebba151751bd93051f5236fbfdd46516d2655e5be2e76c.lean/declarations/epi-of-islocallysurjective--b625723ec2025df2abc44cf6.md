# epi_of_isLocallySurjective'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a91d0141f4cd6f843df79ca50a04b962f2c3e5517ee0150299b4b09308114abe",
  "kind": "instance",
  "lexical_name": "epi_of_isLocallySurjective'",
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
  "slug": "epi-of-islocallysurjective--b625723ec2025df2abc44cf6",
  "source": {
    "blob": "4b0896aff1a45320c8d84333b10322c507ed7734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 376,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b625723ec2025df2abc44cf65453abe54c71ea030d39f8e52900996823279eff",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a91d0141f4cd6f843df79ca50a04b962f2c3e5517ee0150299b4b09308114abe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_of_isLocallySurjective' {F₁ F₂ : Sheaf J (Type w)} (φ : F₁ ⟶ F₂)
    [IsLocallySurjective φ] : Epi φ where
  left_cancellation {Z} f₁ f₂ h := by
    ext X x
    apply (Presieve.isSeparated_of_isSheaf J Z.1 ((isSheaf_iff_isSheaf_of_type _ _).1 Z.2) _
      (Presheaf.imageSieve_mem J φ.val x)).ext
    rintro Y f ⟨s : F₁.val.obj (op Y), hs : φ.val.app _ s = F₂.val.map f.op x⟩
    dsimp
    have h₁ := congr_fun (f₁.val.naturality f.op) x
    have h₂ := congr_fun (f₂.val.naturality f.op) x
    dsimp at h₁ h₂
    rw [← h₁, ← h₂, ← hs]
    exact congr_fun (congr_app ((sheafToPresheaf J _).congr_map h) (op Y)) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantd5daf0a0ffcc6e4fffebba151751bd93051f5236fbfdd46516d2655e5be2e76c.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b0896aff1a45320c8d84333b10322c507ed7734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
