# candidates_dist_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f1a2c7c-eca9-c413-ae45-6bf3daacb0e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e13f0ad-7355-2a9a-2424-c2aaa2796057",
  "kind": "theorem",
  "lexical_name": "candidates_dist_bound",
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
  "slug": "candidates-dist-bound--5b0bbc7f1ead5c54ba72f5e7",
  "source": {
    "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 155,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0bbc7f1ead5c54ba72f5e7f1de5594e686df92e68d49f8301421c17d899120",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e13f0ad-7355-2a9a-2424-c2aaa2796057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidates_dist_bound (fA : f ∈ candidates X Y) :
    ∀ {x y : X ⊕ Y}, f (x, y) ≤ maxVar X Y * dist x y
  | inl x, inl y =>
    calc
      f (inl x, inl y) = dist x y := candidates_dist_inl fA x y
      _ = dist (α := X ⊕ Y) (inl x) (inl y) := by
        rw [@Sum.dist_eq X Y]
        rfl
      _ = 1 * dist (α := X ⊕ Y) (inl x) (inl y) := by ring
      _ ≤ maxVar X Y * dist (inl x) (inl y) := by gcongr; exact one_le_maxVar X Y
  | inl x, inr y =>
    calc
      f (inl x, inr y) ≤ maxVar X Y := candidates_le_maxVar fA
      _ = maxVar X Y * 1 := by simp
      _ ≤ maxVar X Y * dist (inl x) (inr y) := by gcongr; apply Sum.one_le_dist_inl_inr
  | inr x, inl y =>
    calc
      f (inr x, inl y) ≤ maxVar X Y := candidates_le_maxVar fA
      _ = maxVar X Y * 1 := by simp
      _ ≤ maxVar X Y * dist (inl x) (inr y) := by gcongr; apply Sum.one_le_dist_inl_inr
  | inr x, inr y =>
    calc
      f (inr x, inr y) = dist x y := candidates_dist_inr fA x y
      _ = dist (α := X ⊕ Y) (inr x) (inr y) := by
        rw [@Sum.dist_eq X Y]
        rfl
      _ = 1 * dist (α := X ⊕ Y) (inr x) (inr y) := by ring
      _ ≤ maxVar X Y * dist (inr x) (inr y) := by gcongr; exact one_le_maxVar X Y

set_option backward.privateInPublic true in
/-- Technical lemma to prove that candidates are Lipschitz -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
