# isOpen_im_lt_EReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2cf605ce5148d57b3b05ffcc424d80e1a9cc261",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:023ac5f0-b356-d9de-4f11-8156dc8eb5e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dd6a08f-d16a-fd30-fc8a-9c91ed396f4e",
  "kind": "lemma",
  "lexical_name": "isOpen_im_lt_EReal",
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
  "slug": "isopen-im-lt-ereal--3cbfeb69d408ca650452772c",
  "source": {
    "blob": "d2cf605ce5148d57b3b05ffcc424d80e1a9cc261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cbfeb69d408ca650452772cc7cf0dce6c9f3fc72b24147c776a1846c867ad37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd6a08f-d16a-fd30-fc8a-9c91ed396f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_im_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.im < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_im) continuous_const

/-- An open upper half-plane (with boundary imaginary part given by an `EReal`) is an open set
in the complex plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cf605ce5148d57b3b05ffcc424d80e1a9cc261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
