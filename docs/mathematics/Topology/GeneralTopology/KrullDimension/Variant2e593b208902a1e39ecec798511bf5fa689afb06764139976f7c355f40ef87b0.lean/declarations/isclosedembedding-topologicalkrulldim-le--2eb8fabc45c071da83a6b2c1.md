# IsClosedEmbedding.topologicalKrullDim_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c068d631-5331-58ab-cc26-474424e954db",
  "kind": "theorem",
  "lexical_name": "IsClosedEmbedding.topologicalKrullDim_le",
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
  "slug": "isclosedembedding-topologicalkrulldim-le--2eb8fabc45c071da83a6b2c1",
  "source": {
    "blob": "1f28ed8f4918e021d08519bb5bcb45c2bb91beea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb8fabc45c071da83a6b2c14f707b74b5e91e0f7904e3f38d2c1859fdcef39b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c068d631-5331-58ab-cc26-474424e954db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosedEmbedding.topologicalKrullDim_le (f : X → Y) (hf : IsClosedEmbedding f) :
    topologicalKrullDim X ≤ topologicalKrullDim Y :=
  krullDim_le_of_strictMono _ (IrreducibleCloseds.map_strictMono hf)

/-- The topological Krull dimension is invariant under homeomorphisms -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f28ed8f4918e021d08519bb5bcb45c2bb91beea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
