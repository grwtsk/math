# exists_contDiff_zero_iff_one_iff_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 809,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc4f138e-67f4-892d-6e32-88fba165a38c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa169695-41bd-2c7b-37b6-68e684e44e23",
  "kind": "theorem",
  "lexical_name": "exists_contDiff_zero_iff_one_iff_of_isClosed",
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
  "slug": "exists-contdiff-zero-iff-one-iff-of-isclosed--201772f43193225a264849fd",
  "source": {
    "blob": "c803a8dde7798a7d126758430e4c7d5e2d933ed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 809,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201772f43193225a264849fd63afc462d3468bcc8422ee509bf48865427fd36b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa169695-41bd-2c7b-37b6-68e684e44e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 809–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_contDiff_zero_iff_one_iff_of_isClosed {s t : Set E}
    (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : E → ℝ, ContDiff ℝ n f ∧ range f ⊆ Icc 0 1 ∧ (∀ x, x ∈ s ↔ f x = 0)
      ∧ (∀ x, x ∈ t ↔ f x = 1) := by
  simpa [contMDiff_iff_contDiff] using
    exists_contMDiff_zero_iff_one_iff_of_isClosed (I := 𝓘(ℝ, E)) hs ht hd
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant84af32092e72da67d512308c6d18c30a455033cba577ac5da69113c0c29910ae.lean#L809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803a8dde7798a7d126758430e4c7d5e2d933ed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
