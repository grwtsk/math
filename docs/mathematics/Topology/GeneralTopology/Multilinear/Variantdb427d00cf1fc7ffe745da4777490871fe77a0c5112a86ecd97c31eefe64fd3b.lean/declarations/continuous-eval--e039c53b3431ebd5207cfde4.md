# continuous_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75c78e32-1170-64bb-6888-c23b12b6bec2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23962bec-d95d-7ba2-f8d6-ba545b3305f4",
  "kind": "theorem",
  "lexical_name": "continuous_eval",
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
  "slug": "continuous-eval--e039c53b3431ebd5207cfde4",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 648,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e039c53b3431ebd5207cfde49853d958c0a7bc031325e027840a996a32a0a9ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23962bec-d95d-7ba2-f8d6-ba545b3305f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_eval : Continuous fun p :
    ContinuousMultilinearMap 𝕜 E G × ∀ i, E i => p.1 p.2 := by
  apply continuous_iff_continuousAt.2 fun p => ?_
  apply
    continuousAt_of_locally_lipschitz zero_lt_one
      ((‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) + ∏ i, ‖p.2 i‖) fun q hq => ?_
  have : 0 ≤ max ‖q.2‖ ‖p.2‖ := by simp
  have : 0 ≤ ‖p‖ + 1 := zero_le_one.trans ((le_add_iff_nonneg_left 1).2 <| norm_nonneg p)
  have A : ‖q‖ ≤ ‖p‖ + 1 := norm_le_of_mem_closedBall hq.le
  have : max ‖q.2‖ ‖p.2‖ ≤ ‖p‖ + 1 :=
    (max_le_max (norm_snd_le q) (norm_snd_le p)).trans (by simp [A, zero_le_one])
  have : ∀ i : ι, i ∈ univ → 0 ≤ ‖p.2 i‖ := fun i _ => norm_nonneg _
  calc
    dist (q.1 q.2) (p.1 p.2) ≤ dist (q.1 q.2) (q.1 p.2) + dist (q.1 p.2) (p.1 p.2) :=
      dist_triangle _ _ _
    _ = ‖q.1 q.2 - q.1 p.2‖ + ‖q.1 p.2 - p.1 p.2‖ := by rw [dist_eq_norm, dist_eq_norm]
    _ ≤ ‖q.1‖ * Fintype.card ι * max ‖q.2‖ ‖p.2‖ ^ (Fintype.card ι - 1) * ‖q.2 - p.2‖ +
        ‖q.1 - p.1‖ * ∏ i, ‖p.2 i‖ :=
      (add_le_add (norm_image_sub_le _ _ _) ((q.1 - p.1).le_op_norm p.2))
    _ ≤ (‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) * ‖q - p‖ +
        ‖q - p‖ * ∏ i, ‖p.2 i‖ := by
      apply_rules [add_le_add, mul_le_mul, le_refl, le_trans (norm_fst_le q) A, Nat.cast_nonneg,
        mul_nonneg, pow_le_pow_of_le_left, pow_nonneg, norm_snd_le (q - p), norm_nonneg,
        norm_fst_le (q - p), prod_nonneg]
    _ = ((‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) + ∏ i, ‖p.2 i‖)
          * dist q p := by
      rw [dist_eq_norm]
      ring
#align continuous_multilinear_map.continuous_eval ContinuousMultilinearMap.continuous_eval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
