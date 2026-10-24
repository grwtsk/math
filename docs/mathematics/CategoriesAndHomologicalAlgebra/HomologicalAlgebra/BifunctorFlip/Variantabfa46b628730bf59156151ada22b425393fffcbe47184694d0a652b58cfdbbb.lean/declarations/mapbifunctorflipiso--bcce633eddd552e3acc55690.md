# mapBifunctorFlipIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0a869c1a1e2ec7cce5cec0ee6e25e913eec0e8579d0306e80dd97ab55d3d41a",
  "kind": "def",
  "lexical_name": "mapBifunctorFlipIso",
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
  "slug": "mapbifunctorflipiso--bcce633eddd552e3acc55690",
  "source": {
    "blob": "0ec57a6bc948946755e676b27abb80e478c8c8ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcce633eddd552e3acc55690a616a37c30284b54bbd3257b2e7c7a665a7798aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0a869c1a1e2ec7cce5cec0ee6e25e913eec0e8579d0306e80dd97ab55d3d41a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorFlipIso :
    mapBifunctor K₂ K₁ F.flip c ≅ mapBifunctor K₁ K₂ F c :=
  (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).totalFlipIso c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec57a6bc948946755e676b27abb80e478c8c8ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
