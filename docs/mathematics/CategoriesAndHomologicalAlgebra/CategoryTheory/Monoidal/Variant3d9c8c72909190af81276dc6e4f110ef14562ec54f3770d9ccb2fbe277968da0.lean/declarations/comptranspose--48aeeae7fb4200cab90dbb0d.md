# compTranspose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4685d2bb2a6de5e216d7e366d1d021e32a5cb05560c26ed77e1f9ba5950627e9",
  "kind": "def",
  "lexical_name": "compTranspose",
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
  "slug": "comptranspose--48aeeae7fb4200cab90dbb0d",
  "source": {
    "blob": "d695f05886419880dfc63c81fa19a841f77bc593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 354,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48aeeae7fb4200cab90dbb0d2a5c66ba2c3bfd01593a2bddd29ab13732cdf8e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4685d2bb2a6de5e216d7e366d1d021e32a5cb05560c26ed77e1f9ba5950627e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compTranspose (x y z : C) [Closed x] [Closed y] : x ⊗ (ihom x).obj y ⊗ (ihom y).obj z ⟶ z :=
  (α_ x ((ihom x).obj y) ((ihom y).obj z)).inv ≫
    (ihom.ev x).app y ▷ ((ihom y).obj z) ≫ (ihom.ev y).app z

/-- The `C`-composition morphism
  `hom(x, y) ⊗ hom(y, z) ⟶ hom(x, z)`
used to equip `C` with the structure of a `C`-category -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d695f05886419880dfc63c81fa19a841f77bc593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
