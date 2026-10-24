# ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69c43b50-ef2f-b93f-e60e-e764e38cdf17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61faea90-ccd8-da9b-9ea0-9c3e9acf07d9",
  "kind": "theorem",
  "lexical_name": "ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem",
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
  "slug": "convexcone-hyperplane-separation-of-nonempty-of-isclosed-of-nmem--1719c5bc1f5c91426c74d3ab",
  "source": {
    "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1719c5bc1f5c91426c74d3ab59d887e4223421fd6580f4d6919e6f8f5e27288f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61faea90-ccd8-da9b-9ea0-9c3e9acf07d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem (K : ConvexCone ℝ H)
    (ne : (K : Set H).Nonempty) (hc : IsClosed (K : Set H)) {b : H} (disj : b ∉ K) :
    ∃ y : H, (∀ x : H, x ∈ K → 0 ≤ ⟪x, y⟫_ℝ) ∧ ⟪y, b⟫_ℝ < 0 := by
  -- let `z` be the point in `K` closest to `b`
  obtain ⟨z, hzK, infi⟩ := exists_norm_eq_iInf_of_complete_convex ne hc.isComplete K.convex b
  -- for any `w` in `K`, we have `⟪b - z, w - z⟫_ℝ ≤ 0`
  have hinner := (norm_eq_iInf_iff_real_inner_le_zero K.convex hzK).1 infi
  -- set `y := z - b`
  use z - b
  constructor
  · -- the rest of the proof is a straightforward calculation
    rintro x hxK
    specialize hinner _ (K.add_mem hxK hzK)
    rwa [add_sub_cancel, real_inner_comm, ← neg_nonneg, neg_eq_neg_one_mul, ← real_inner_smul_right,
      neg_smul, one_smul, neg_sub] at hinner
  · -- as `K` is closed and non-empty, it is pointed
    have hinner₀ := hinner 0 (K.pointed_of_nonempty_of_isClosed ne hc)
    -- the rest of the proof is a straightforward calculation
    rw [zero_sub, inner_neg_right, Right.neg_nonpos_iff] at hinner₀
    have hbz : b - z ≠ 0 := by
      rw [sub_ne_zero]
      contrapose! hzK
      rwa [← hzK]
    rw [← neg_zero, lt_neg, ← neg_one_mul, ← real_inner_smul_left, smul_sub, neg_smul, one_smul,
      neg_smul, neg_sub_neg, one_smul]
    calc
      0 < ⟪b - z, b - z⟫_ℝ := lt_of_not_le ((Iff.not real_inner_self_nonpos).2 hbz)
      _ = ⟪b - z, b - z⟫_ℝ + 0 := (add_zero _).symm
      _ ≤ ⟪b - z, b - z⟫_ℝ + ⟪b - z, z⟫_ℝ := (add_le_add rfl.ge hinner₀)
      _ = ⟪b - z, b - z + z⟫_ℝ := (inner_add_right _ _ _).symm
      _ = ⟪b - z, b⟫_ℝ := by rw [sub_add_cancel]

#align convex_cone.hyperplane_separation_of_nonempty_of_is_closed_of_nmem ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem

/-- The inner dual of inner dual of a non-empty, closed convex cone is itself.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f5e15700d253f57d660fae9751607c2e2e9d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
