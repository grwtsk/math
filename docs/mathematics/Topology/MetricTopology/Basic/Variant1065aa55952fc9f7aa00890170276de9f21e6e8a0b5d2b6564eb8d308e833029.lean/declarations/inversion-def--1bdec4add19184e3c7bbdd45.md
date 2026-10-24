# inversion_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0eaa24f2f36c28aca32d33ab3f48bc271b027c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:830c92ce-f473-55e9-7e56-37b9ccff5282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1426e1da-90aa-c462-409d-9c3d9dce7591",
  "kind": "theorem",
  "lexical_name": "inversion_def",
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
  "slug": "inversion-def--1bdec4add19184e3c7bbdd45",
  "source": {
    "blob": "e0eaa24f2f36c28aca32d33ab3f48bc271b027c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bdec4add19184e3c7bbdd458a8bf4c8855500e7097f996450ca130c3a6dd9b3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1426e1da-90aa-c462-409d-9c3d9dce7591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inversion_def :
    inversion = fun (c : P) (R : ℝ) (x : P) => (R / dist x c) ^ 2 • (x -ᵥ c) +ᵥ c :=
  rfl

/-!
### Basic properties

In this section we prove that `EuclideanGeometry.inversion c R` is involutive and preserves the
sphere `Metric.sphere c R`. We also prove that the distance to the center of the image of `x` under
this inversion is given by `R ^ 2 / dist x c`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0eaa24f2f36c28aca32d33ab3f48bc271b027c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
