# closed_candidatesB

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
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2219e03e-6381-3e8a-7a99-d19d736b360d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2398091e-2ca3-282e-9f00-a966c3d908b3",
  "kind": "theorem",
  "lexical_name": "closed_candidatesB",
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
  "slug": "closed-candidatesb--9cdb36a83a206fe39391d90d",
  "source": {
    "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 216,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cdb36a83a206fe39391d90d4029d96d3285f7fd202b3765b61c8203973c4a99",
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

Occurrence: `result:2398091e-2ca3-282e-9f00-a966c3d908b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closed_candidatesB : IsClosed (candidatesB X Y) := by
  have I1 : ∀ x y, IsClosed { f : Cb X Y | f (inl x, inl y) = dist x y } := fun x y =>
    isClosed_eq (continuous_eval_const _) continuous_const
  have I2 : ∀ x y, IsClosed { f : Cb X Y | f (inr x, inr y) = dist x y } := fun x y =>
    isClosed_eq (continuous_eval_const _) continuous_const
  have I3 : ∀ x y, IsClosed { f : Cb X Y | f (x, y) = f (y, x) } := fun x y =>
    isClosed_eq (continuous_eval_const _) (continuous_eval_const _)
  have I4 : ∀ x y z, IsClosed { f : Cb X Y | f (x, z) ≤ f (x, y) + f (y, z) } := fun x y z =>
    isClosed_le (continuous_eval_const _) ((continuous_eval_const _).add (continuous_eval_const _))
  have I5 : ∀ x, IsClosed { f : Cb X Y | f (x, x) = 0 } := fun x =>
    isClosed_eq (continuous_eval_const _) continuous_const
  have I6 : ∀ x y, IsClosed { f : Cb X Y | f (x, y) ≤ maxVar X Y } := fun x y =>
    isClosed_le (continuous_eval_const _) continuous_const
  have : candidatesB X Y = (((((⋂ (x) (y), { f : Cb X Y | f (@inl X Y x, @inl X Y y) = dist x y }) ∩
      ⋂ (x) (y), { f : Cb X Y | f (@inr X Y x, @inr X Y y) = dist x y }) ∩
      ⋂ (x) (y), { f : Cb X Y | f (x, y) = f (y, x) }) ∩
      ⋂ (x) (y) (z), { f : Cb X Y | f (x, z) ≤ f (x, y) + f (y, z) }) ∩
      ⋂ x, { f : Cb X Y | f (x, x) = 0 }) ∩
      ⋂ (x) (y), { f : Cb X Y | f (x, y) ≤ maxVar X Y } := by
    ext
    simp only [candidatesB, candidates, mem_inter_iff, mem_iInter, mem_ofPred_eq]
  rw [this]
  repeat'
    first
      | apply IsClosed.inter _ _
      | apply isClosed_iInter _
      | apply I1 _ _ | apply I2 _ _ | apply I3 _ _ | apply I4 _ _ _ | apply I5 _ | apply I6 _ _
      | intro x

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- We will then choose the candidate minimizing the Hausdorff distance. Except that we are not
in a metric space setting, so we need to define our custom version of Hausdorff distance,
called `HD`, and prove its basic properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
