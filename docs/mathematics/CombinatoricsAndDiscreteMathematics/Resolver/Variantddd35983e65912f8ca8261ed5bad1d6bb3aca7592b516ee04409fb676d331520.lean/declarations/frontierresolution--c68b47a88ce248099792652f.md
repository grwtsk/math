# FrontierResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ab42124642d66cdd9d40449aa06add6f7a7055dbfd57c4d619977b4b250bc7c",
  "kind": "inductive",
  "lexical_name": "FrontierResolution",
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
  "slug": "frontierresolution--c68b47a88ce248099792652f",
  "source": {
    "blob": "cd575ee13618d0180d7d812e80f8fe589f388f79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68b47a88ce248099792652f256e2fb425d0c1df9dfdc3ae580117bbd7440b32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ab42124642d66cdd9d40449aa06add6f7a7055dbfd57c4d619977b4b250bc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FrontierResolution
    (Leaf Obstruction Unknown Rejection : Type)
  | completedLeaf (leaf : Leaf)
  | canonicalObstruction (obstruction : Obstruction)
  | explicitUnknown (unknown : Unknown)
  | malformedInput (rejection : Rejection)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd575ee13618d0180d7d812e80f8fe589f388f79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
