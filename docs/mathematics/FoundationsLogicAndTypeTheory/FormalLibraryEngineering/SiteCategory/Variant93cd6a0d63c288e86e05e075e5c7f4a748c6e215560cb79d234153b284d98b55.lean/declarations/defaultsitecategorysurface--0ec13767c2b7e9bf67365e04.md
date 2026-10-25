# defaultSiteCategorySurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a7bc4f79bb06e720fa960f0d517250a6b9319480ee1e20af27e50b5bfefb41d",
  "kind": "def",
  "lexical_name": "defaultSiteCategorySurface",
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
  "slug": "defaultsitecategorysurface--0ec13767c2b7e9bf67365e04",
  "source": {
    "blob": "08cc4b034d641356f566ef00234d7e891a7e7b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variant93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ec13767c2b7e9bf67365e04ed5626473d903a3490731c0f2de91414072ff4ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variant93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a7bc4f79bb06e720fa960f0d517250a6b9319480ee1e20af27e50b5bfefb41d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultSiteCategorySurface (M : BitMatrix) :
    SiteCategorySurface M :=
  { hasObjects := true
    hasMorphisms := true
    hasIdentity := true
    hasComposition := true
    idLeftLaw := true
    idRightLaw := true
    associativityLaw := true
    mathlibCategoryInstanceClaim := false
    grothendieckTopologyInstanceClaim := false
    sheafCategoryClaim := false
    toposClaim := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variant93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SiteCategory/Variant93cd6a0d63c288e86e05e075e5c7f4a748c6e215560cb79d234153b284d98b55.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08cc4b034d641356f566ef00234d7e891a7e7b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
