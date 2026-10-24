# contraction_of_isPowMul_of_boundedWrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "109a10e61542a07dd8f7d34f16e8329e239dd1a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ea29844-3c12-811a-8dae-c3d305966f6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249c4f84-9c4d-e452-f5a1-c0737756408b",
  "kind": "theorem",
  "lexical_name": "contraction_of_isPowMul_of_boundedWrt",
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
  "slug": "contraction-of-ispowmul-of-boundedwrt--7bc703ca38be5ee769d13ee1",
  "source": {
    "blob": "109a10e61542a07dd8f7d34f16e8329e239dd1a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc703ca38be5ee769d13ee1eb0bf29be4059a15f28d2514498e031055f5bc72",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249c4f84-9c4d-e452-f5a1-c0737756408b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contraction_of_isPowMul_of_boundedWrt {F : Type*} {α : outParam (Type*)} [Ring α]
    [FunLike F α ℝ] [RingSeminormClass F α ℝ] {β : Type*} [Ring β] (nα : F) {nβ : β → ℝ}
    (hβ : IsPowMul nβ) {f : α →+* β} (hf : f.IsBoundedWrt nα nβ) (x : α) : nβ (f x) ≤ nα x := by
  obtain ⟨C, hC0, hC⟩ := hf
  have hlim : Tendsto (fun n : ℕ => C ^ (1 / (n : ℝ)) * nα x) atTop (𝓝 (nα x)) := by
    nth_rewrite 2 [← one_mul (nα x)]
    exact ((rpow_zero C ▸ ContinuousAt.tendsto (continuousAt_const_rpow (ne_of_gt hC0))).comp
      (tendsto_const_div_atTop_nhds_zero_nat 1)).mul tendsto_const_nhds
  apply ge_of_tendsto hlim
  simp only [eventually_atTop, ge_iff_le]
  use 1
  intro n hn
  have h : (C ^ (1 / n : ℝ)) ^ n = C := by
    have hn0 : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (ne_of_gt hn)
    rw [← rpow_natCast, ← rpow_mul (le_of_lt hC0), one_div, inv_mul_cancel₀ hn0, rpow_one]
  apply le_of_pow_le_pow_left₀ (ne_of_gt hn)
    (mul_nonneg (rpow_nonneg (le_of_lt hC0) _) (apply_nonneg _ _))
  · rw [mul_pow, h, ← hβ _ hn, ← RingHom.map_pow]
    apply le_trans (hC (x ^ n))
    rw [mul_le_mul_left hC0]
    exact map_pow_le_pow _ _ (Nat.one_le_iff_ne_zero.mp hn)

/-- Given a bounded `f : α →+* β` between seminormed rings, is the seminorm on `β` is
  power-multiplicative, then `f` is a contraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsPowMulFaithful/Variant59fb1ab3d9dd1b3b73cf4457999deca0d5e00d19c71412a97cc147d2580f8a65.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `109a10e61542a07dd8f7d34f16e8329e239dd1a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
