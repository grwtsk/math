# bound'_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd6e8cd6c898970d59bacd954f8880f95a22bdba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9fd39b4-9bdc-5e95-5ab3-e08683dc1d29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57dfc255-93a4-c11d-8aec-22c9714f74eb",
  "kind": "theorem",
  "lexical_name": "bound'_sq",
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
  "slug": "bound-sq--68be7473b96cc4bfe9b47a90",
  "source": {
    "blob": "cd6e8cd6c898970d59bacd954f8880f95a22bdba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 341,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68be7473b96cc4bfe9b47a908a2ff6ee09da632099efba1a10d404e40f3c1270",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57dfc255-93a4-c11d-8aec-22c9714f74eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bound'_sq :
    Tendsto (fun n : ℕ => ‖F.derivative.aeval a‖ ^ 2 * T ^ 2 ^ n) atTop (𝓝 0) := by
  rw [← mul_zero ‖F.derivative.aeval a‖, sq]
  simp only [mul_assoc]
  apply Tendsto.mul
  · apply tendsto_const_nhds
  · apply bound'
    assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd6e8cd6c898970d59bacd954f8880f95a22bdba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
