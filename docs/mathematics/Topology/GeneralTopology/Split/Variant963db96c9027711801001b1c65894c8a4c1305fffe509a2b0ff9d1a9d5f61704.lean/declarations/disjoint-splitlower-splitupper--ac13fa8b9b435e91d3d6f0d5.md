# disjoint_splitLower_splitUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab34d58413b4867ce8c6c0c78f1a014571b2dd2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:692ce55a-26f4-3a9e-901b-0cc226ca8f2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9ad90d3-46cd-26ea-f175-f7ebf558cb7c",
  "kind": "theorem",
  "lexical_name": "disjoint_splitLower_splitUpper",
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
  "slug": "disjoint-splitlower-splitupper--ac13fa8b9b435e91d3d6f0d5",
  "source": {
    "blob": "ab34d58413b4867ce8c6c0c78f1a014571b2dd2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac13fa8b9b435e91d3d6f0d5c34e356442901827d7817bfbbff195f5b2895bae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9ad90d3-46cd-26ea-f175-f7ebf558cb7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_splitLower_splitUpper (I : Box ι) (i : ι) (x : ℝ) :
    Disjoint (I.splitLower i x) (I.splitUpper i x) := by
  rw [← disjoint_withBotCoe, coe_splitLower, coe_splitUpper]
  refine (Disjoint.inf_left' _ ?_).inf_right' _
  rw [Set.disjoint_left]
  exact fun y (hle : y i ≤ x) hlt => not_lt_of_ge hle hlt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab34d58413b4867ce8c6c0c78f1a014571b2dd2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
