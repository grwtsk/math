# tendsto_floor_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:937c0fe8-a9f7-22ff-5439-8730adfaadc7",
  "kind": "theorem",
  "lexical_name": "tendsto_floor_right",
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
  "slug": "tendsto-floor-right--a1f2538c40be421c29eb7233",
  "source": {
    "blob": "fa93f01fe87c6a2b20e190199ad7b5961ca73a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1f2538c40be421c29eb723380e2eb53c66987178a1724fa6a0a1a7944e465c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:937c0fe8-a9f7-22ff-5439-8730adfaadc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_floor_right (n : ℤ) : Tendsto (fun x => floor x : α → α) (𝓝[≥] n) (𝓝[≥] n) :=
  ((tendsto_pure_pure _ _).comp (tendsto_floor_right_pure n)).mono_right <|
    pure_le_nhdsWithin le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Floor/Variant6d94426801c94066c81f5bca95ad8279a283e77657cac14a635e97b706883251.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa93f01fe87c6a2b20e190199ad7b5961ca73a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
