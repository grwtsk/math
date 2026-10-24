# ab5OfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f657162744693e5755b2c5e808ef482eca3b032d246baf363877e676e9c8a7c",
  "kind": "instance",
  "lexical_name": "ab5OfSize",
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
  "slug": "ab5ofsize--0710fad8befda8c3963e968c",
  "source": {
    "blob": "51fde08edec034adb7c1e1066f3a2fb6a84b46c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0710fad8befda8c3963e968ce190b26110c1702ea3aaffd4a80f2b84d2a7ca42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f657162744693e5755b2c5e808ef482eca3b032d246baf363877e676e9c8a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ab5OfSize [HasFilteredColimitsOfSize.{w', w} C] [HasFiniteLimits C]
    [AB5OfSize.{w', w} C] :
    AB5OfSize.{w', w} (HomologicalComplex C c) where
  ofShape J _ _ := by infer_instance

end HasZeroMorphisms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fde08edec034adb7c1e1066f3a2fb6a84b46c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
