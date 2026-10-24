# ProperSpace.of_isCompact_closedBall_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10ff7ccdbcd8df795f9c3252d77bea1bb03318db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5259f76-8953-5cb1-500e-806c4796f621",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63f1c1fc-dfe3-2350-e410-6f28b26d858f",
  "kind": "theorem",
  "lexical_name": "ProperSpace.of_isCompact_closedBall_of_le",
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
  "slug": "properspace-of-iscompact-closedball-of-le--ee925cd7af698a2070cacad3",
  "source": {
    "blob": "10ff7ccdbcd8df795f9c3252d77bea1bb03318db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee925cd7af698a2070cacad3e5d254fef547eac783656d03ec83f00eea56bb82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f1c1fc-dfe3-2350-e410-6f28b26d858f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProperSpace.of_isCompact_closedBall_of_le (R : ℝ)
    (h : ∀ x : α, ∀ r, R ≤ r → IsCompact (closedBall x r)) : ProperSpace α :=
  ⟨fun x r => IsCompact.of_isClosed_subset (h x (max r R) (le_max_right _ _)) isClosed_closedBall
    (closedBall_subset_closedBall <| le_max_left _ _)⟩

/-- If there exists a sequence of compact closed balls with the same center
such that the radii tend to infinity, then the space is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ff7ccdbcd8df795f9c3252d77bea1bb03318db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
