# lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a9cb8b9-ce1d-9773-d9aa-8dece0d0b035",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7915704a-7e34-c33b-33b9-1377605daa1f",
  "kind": "theorem",
  "lexical_name": "lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder",
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
  "slug": "lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder--2c036e91a0fbd517e9416ad1",
  "source": {
    "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 324,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c036e91a0fbd517e9416ad11186f4f6f5a090b54c0a43198bc391bd61ec24e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7915704a-7e34-c33b-33b9-1377605daa1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder {α : Type*}
    [PseudoMetricSpace α] {f : (∀ n, E n) → α} :
    (∀ x y : ∀ n, E n, dist (f x) (f y) ≤ dist x y) ↔
      ∀ x y n, y ∈ cylinder x n → dist (f x) (f y) ≤ (1 / 2) ^ n := by
  constructor
  · intro H x y n hxy
    apply (H x y).trans
    rw [PiNat.dist_comm]
    exact mem_cylinder_iff_dist_le.1 hxy
  · intro H x y
    rcases eq_or_ne x y with (rfl | hne)
    · simp [PiNat.dist_nonneg]
    rw [dist_eq_of_ne hne]
    apply H x y (firstDiff x y)
    rw [firstDiff_comm]
    exact mem_cylinder_firstDiff _ _

variable (E)
variable [∀ n, TopologicalSpace (E n)] [∀ n, DiscreteTopology (E n)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9037e11c4d4eeb6bcd61b008be2f6f95426d2181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
