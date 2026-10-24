# self_mem_orthRadius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d21c4b7-a16f-80bc-e45b-1a46fc0b60bc",
  "kind": "lemma",
  "lexical_name": "self_mem_orthRadius",
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
  "slug": "self-mem-orthradius--67fa678fb6cb42d60f0e5eb0",
  "source": {
    "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 49,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fa678fb6cb42d60f0e5eb0a58d1ccda2da2b0779a610d28b10456038b7b063",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d21c4b7-a16f-80bc-e45b-1a46fc0b60bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma self_mem_orthRadius (s : Sphere P) (p : P) : p ∈ s.orthRadius p :=
  self_mem_mk' _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
