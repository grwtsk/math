# not_differentiableAt_weierstrass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65891599-648a-05eb-c068-a786103d2cb2",
  "kind": "theorem",
  "lexical_name": "not_differentiableAt_weierstrass",
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
  "slug": "not-differentiableat-weierstrass--258f0dfa58428e68373ac5fd",
  "source": {
    "blob": "3d039fe7399d5773bf04d9bd72575f5fee7bf6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258f0dfa58428e68373ac5fd6b9e21aa48d637dfc317e40507baa583c20a3b3d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65891599-648a-05eb-c068-a786103d2cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_differentiableAt_weierstrass
    {a : ℝ} (ha : a ∈ Set.Ioo 0 1) {b : ℕ} (hb : Odd b) (hab : 3 / 2 * π + 1 < a * b) (x : ℝ) :
    ¬ DifferentiableAt ℝ (weierstrass a b) x := by
  have hb0 : b ≠ 0 := fun h ↦ Nat.not_odd_zero (h ▸ hb)
  have hb0' : (0 : ℝ) < b := by simpa using Nat.pos_of_ne_zero hb0
  have hb1 : (1 : ℝ) < b := by
    contrapose! hab with hb1
    calc
      a * b ≤ 1 := by bound [ha.2]
      1 ≤ 3 / 2 * π + 1 := by simp [pi_nonneg]
  have hab' : 1 < a * b := lt_trans (lt_add_of_pos_left _ (mul_pos (by norm_num) pi_pos)) hab
  by_contra!
  obtain ⟨f', h⟩ := this
  have : Tendsto (fun m ↦ (seq b x m - x)⁻¹ * (weierstrass a b (seq b x m) - weierstrass a b x))
      atTop (𝓝 (f' 1)) := by
    convert! (h.lim_real 1).comp (tendsto_seq_sub_inv hb1 x)
    simp
  have h := (continuous_abs.tendsto _).comp this
  contrapose! h
  apply not_tendsto_nhds_of_tendsto_atTop
  -- To show the absolute value of slope tends to ∞, it suffices to show its lower bound does.
  suffices Tendsto ((2 / 3 - π / (a * b - 1)) * (a * b) ^ ·) atTop atTop by
    refine tendsto_atTop_mono (fun m ↦ ?_) this
    rw [Function.comp_apply, abs_mul, abs_inv]
    rw [le_inv_mul_iff₀ (by simpa [sub_eq_zero] using (lt_seq hb0' x _).ne.symm)]
    exact weierstrass_slope ha hb hab' x m
  have hpos : 0 < 2 / 3 - π / (a * b - 1) := by
    rw [sub_pos, div_lt_iff₀ (by simpa using hab'), ← div_lt_iff₀' (by norm_num), lt_sub_iff_add_lt]
    convert! hab using 1
    grind
  exact (tendsto_const_nhds_iff.mpr rfl).pos_mul_atTop hpos (tendsto_pow_atTop_atTop_of_one_lt hab')

/-- A concrete example of $a$ and $b$ to show that the condition is not vacuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d039fe7399d5773bf04d9bd72575f5fee7bf6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
