# functorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a29face288bfda49c45e19757343cca929800ff4c25e8024b3bc216b9b62c6b9",
  "kind": "def",
  "lexical_name": "functorIso",
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
  "slug": "functoriso--cf93cdb7ae602f2837904d86",
  "source": {
    "blob": "375cc62a9390b28e6ea36723574676663ed021e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf93cdb7ae602f2837904d8690615b3eb9c7b789a0952a7960c28b07af67fa2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a29face288bfda49c45e19757343cca929800ff4c25e8024b3bc216b9b62c6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorIso :
    functor.{u, w} P hs ≅ TopCat.discrete.{max w u} ⋙ topCatToSheafCompHausLike P hs :=
  NatIso.ofComponents (fun X ↦ (fullyFaithfulSheafToPresheaf _ _).preimageIso
    (functorToPresheavesIso P hs X))

/-- The counit is natural in both `S : CompHausLike P` and
`Y : Sheaf (coherentTopology (CompHausLike P)) (Type (max u w))` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variantbbb6afa38babb490a982daaa6c3f68ed8e3d05e0ecb9c62642dde4a4a4a62b7b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375cc62a9390b28e6ea36723574676663ed021e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
