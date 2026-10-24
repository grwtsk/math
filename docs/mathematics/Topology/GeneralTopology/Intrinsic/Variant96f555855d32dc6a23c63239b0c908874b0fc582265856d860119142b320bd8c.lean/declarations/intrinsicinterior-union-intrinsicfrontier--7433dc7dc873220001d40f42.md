# intrinsicInterior_union_intrinsicFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0587930538459c721c9b9b6c1412223bffc6029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10ff70c8-10fa-86ec-0627-d054221d6527",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79e69f16-2a89-bd97-14c8-02f2fa94acc4",
  "kind": "theorem",
  "lexical_name": "intrinsicInterior_union_intrinsicFrontier",
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
  "slug": "intrinsicinterior-union-intrinsicfrontier--7433dc7dc873220001d40f42",
  "source": {
    "blob": "e0587930538459c721c9b9b6c1412223bffc6029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7433dc7dc873220001d40f42026b6b2955fbf212c1cbd5dc2a82e2d4e5ca0c6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e69f16-2a89-bd97-14c8-02f2fa94acc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicInterior_union_intrinsicFrontier (s : Set P) :
    intrinsicInterior 𝕜 s ∪ intrinsicFrontier 𝕜 s = intrinsicClosure 𝕜 s := by
  simp [intrinsicClosure, intrinsicInterior, intrinsicFrontier, closure_eq_interior_union_frontier,
    image_union]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Intrinsic/Variant96f555855d32dc6a23c63239b0c908874b0fc582265856d860119142b320bd8c.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0587930538459c721c9b9b6c1412223bffc6029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
