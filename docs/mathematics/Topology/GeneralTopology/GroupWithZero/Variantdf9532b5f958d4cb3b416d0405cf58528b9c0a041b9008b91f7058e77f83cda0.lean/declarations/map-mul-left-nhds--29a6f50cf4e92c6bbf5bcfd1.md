# map_mul_left_nhds₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "980b416287f87f565270585377bcc969191f1035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ebb5985-aecf-2f62-420d-4a544633d3a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9808be57-c384-0da5-c35f-5ccfd8d04f5a",
  "kind": "theorem",
  "lexical_name": "map_mul_left_nhds₀",
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
  "slug": "map-mul-left-nhds--29a6f50cf4e92c6bbf5bcfd1",
  "source": {
    "blob": "980b416287f87f565270585377bcc969191f1035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29a6f50cf4e92c6bbf5bcfd12ad5b3edf83ec8ef061acc6a57bec09038fdfd25",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9808be57-c384-0da5-c35f-5ccfd8d04f5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mul_left_nhds₀ (ha : a ≠ 0) (b : G₀) : map (a * ·) (𝓝 b) = 𝓝 (a * b) :=
  (Homeomorph.mulLeft₀ a ha).map_nhds_eq b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantdf9532b5f958d4cb3b416d0405cf58528b9c0a041b9008b91f7058e77f83cda0.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980b416287f87f565270585377bcc969191f1035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
