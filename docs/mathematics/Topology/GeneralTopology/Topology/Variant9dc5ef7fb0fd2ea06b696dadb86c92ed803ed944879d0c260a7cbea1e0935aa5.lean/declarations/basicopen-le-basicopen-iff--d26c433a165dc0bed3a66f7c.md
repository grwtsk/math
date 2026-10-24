# basicOpen_le_basicOpen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a406dd-f67f-1a24-5e85-292921aa2fa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06b993b2-f95e-86da-195e-7c888ad8ea83",
  "kind": "theorem",
  "lexical_name": "basicOpen_le_basicOpen_iff",
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
  "slug": "basicopen-le-basicopen-iff--d26c433a165dc0bed3a66f7c",
  "source": {
    "blob": "785e3ed3c72359e96d30ee598be8c3e59e4145f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 590,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d26c433a165dc0bed3a66f7c0b4d0def657b99e8f2dc49eaf0787f285de104f5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b993b2-f95e-86da-195e-7c888ad8ea83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_le_basicOpen_iff (f g : R) :
    basicOpen f ≤ basicOpen g ↔ f ∈ (Ideal.span ({g} : Set R)).radical := by
  rw [← SetLike.coe_subset_coe, basicOpen_eq_zeroLocus_compl, basicOpen_eq_zeroLocus_compl,
    Set.compl_subset_compl, zeroLocus_subset_zeroLocus_singleton_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant9dc5ef7fb0fd2ea06b696dadb86c92ed803ed944879d0c260a7cbea1e0935aa5.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785e3ed3c72359e96d30ee598be8c3e59e4145f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
