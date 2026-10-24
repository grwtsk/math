# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cb34179b4a7d549b6e4ca1a6fce67ba12d9d1cceac464b1eb196b9300c13d9d",
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
  "slug": "instance--4b8d96ccdcb2bb3a2495161b",
  "source": {
    "blob": "01dfa00ddcd8600b6fa3d99a31056273cd3c96ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b8d96ccdcb2bb3a2495161bbc1f489539d0a11e342ab3c1432eec8bf018bfdd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cb34179b4a7d549b6e4ca1a6fce67ba12d9d1cceac464b1eb196b9300c13d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [PreGaloisCategory C] [MonoCoprod C]
    (P : ObjectProperty C) [P.IsGaloisSubcategory] :
    PreGaloisCategory P.FullSubcategory where
  monoInducesIsoOnDirectSummand {X Y} i _ := by
    have : Mono i.hom := inferInstanceAs (Mono (P.ι.map i))
    obtain ⟨Z, u, ⟨h⟩⟩ := monoInducesIsoOnDirectSummand i.hom
    refine ⟨⟨Z, ?_⟩, ObjectProperty.homMk u,
      ⟨isColimitOfReflects P.ι ((isColimitMapCoconeBinaryCofanEquiv ..).2 h)⟩⟩
    have : Mono u := MonoCoprod.binaryCofan_inr _ h
    exact P.prop_of_mono u Y.property
  hasFiniteCoproducts := ⟨inferInstance⟩
  hasQuotientsByFiniteGroups _ _ := inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01dfa00ddcd8600b6fa3d99a31056273cd3c96ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
