# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cb875e541e371f72ba984bfd4b06cfb4a271b2f05fbf39d653b3c087f4cb254",
  "kind": "example",
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
  "slug": "example--910f93fc47210d0a42e51fee",
  "source": {
    "blob": "1c3f955950569c02ce9685cd712274ad52ba4f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:910f93fc47210d0a42e51fee3f5f3e7ddb94b701ac8d3d3f923501c8418d621f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cb875e541e371f72ba984bfd4b06cfb4a271b2f05fbf39d653b3c087f4cb254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (κ : Cardinal.{w}) [Fact κ.IsRegular] [IsCardinalLocallyPresentable C κ] :
    ObjectProperty.EssentiallySmall.{w} (isCardinalPresentable C κ) := inferInstance

/-- Given a regular cardinal `κ`, a category `C` is `κ`-accessible
if it has `κ`-filtered colimits and admits a (small) family `G : ι → C` of `κ`-presentable
objects such that any object identifies as a `κ`-filtered colimit of these objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyPresentable/Variantc8d454d7f1c1072f998f60149cb8b7b0fb829b99e73890dcc8ef13cc9180e202.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3f955950569c02ce9685cd712274ad52ba4f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
