# SpectralMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c90b53a99946f20724de19ac2d33395ad45680303010e0c29e244c719b22a227",
  "kind": "class",
  "lexical_name": "SpectralMapClass",
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
  "slug": "spectralmapclass--0f8c47d54efeebd54abbd35a",
  "source": {
    "blob": "7f2118319deb8e64ddddc8602175247f78bee601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8c47d54efeebd54abbd35a38f52a8522828091f0b4d87a67f720c1f325d4a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c90b53a99946f20724de19ac2d33395ad45680303010e0c29e244c719b22a227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SpectralMapClass (F α β : Type*) [TopologicalSpace α] [TopologicalSpace β]
    [FunLike F α β] : Prop where
  /-- statement that `F` is a type of spectral maps -/
  map_spectral (f : F) : IsSpectralMap f

end

export SpectralMapClass (map_spectral)

attribute [simp] map_spectral

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2118319deb8e64ddddc8602175247f78bee601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
