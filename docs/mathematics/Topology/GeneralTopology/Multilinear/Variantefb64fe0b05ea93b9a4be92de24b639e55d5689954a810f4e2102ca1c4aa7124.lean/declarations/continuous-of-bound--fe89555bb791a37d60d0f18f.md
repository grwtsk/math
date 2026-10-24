# continuous_of_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8deeeab2-c6f9-59ff-99e7-52dee5fd8ae6",
  "kind": "theorem",
  "lexical_name": "continuous_of_bound",
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
  "slug": "continuous-of-bound--fe89555bb791a37d60d0f18f",
  "source": {
    "blob": "eb7d6a77e37c67ebd04eb70781e0d39590c8ab69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe89555bb791a37d60d0f18f63782862539c842b995bbf6ba74577d9310a0f80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8deeeab2-c6f9-59ff-99e7-52dee5fd8ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_bound (C : ℝ) (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : Continuous f := by
  let D := max C 1
  have D_pos : 0 ≤ D := le_trans zero_le_one (le_max_right _ _)
  replace H : ∀ m, ‖f m‖ ≤ D * ∏ i, ‖m i‖
  · intro m
    apply le_trans (H m) (mul_le_mul_of_nonneg_right (le_max_left _ _) _)
    exact prod_nonneg fun (i : ι) _ => norm_nonneg (m i)
  refine' continuous_iff_continuousAt.2 fun m => _
  refine'
    continuousAt_of_locally_lipschitz zero_lt_one
      (D * Fintype.card ι * (‖m‖ + 1) ^ (Fintype.card ι - 1)) fun m' h' => _
  rw [dist_eq_norm, dist_eq_norm]
  have : max ‖m'‖ ‖m‖ ≤ ‖m‖ + 1 := by
    simp [zero_le_one, norm_le_of_mem_closedBall (le_of_lt h')]
  calc
    ‖f m' - f m‖ ≤ D * Fintype.card ι * max ‖m'‖ ‖m‖ ^ (Fintype.card ι - 1) * ‖m' - m‖ :=
      f.norm_image_sub_le_of_bound D_pos H m' m
    _ ≤ D * Fintype.card ι * (‖m‖ + 1) ^ (Fintype.card ι - 1) * ‖m' - m‖ := by gcongr
#align multilinear_map.continuous_of_bound MultilinearMap.continuous_of_bound

/-- Constructing a continuous multilinear map from a multilinear map satisfying a boundedness
condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7d6a77e37c67ebd04eb70781e0d39590c8ab69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
