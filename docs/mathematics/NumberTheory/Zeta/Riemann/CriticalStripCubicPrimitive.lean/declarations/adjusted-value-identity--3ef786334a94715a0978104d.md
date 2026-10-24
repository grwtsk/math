# adjusted_value_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df5119cb-ad01-b6b5-2463-d1d1051d6153",
  "kind": "theorem",
  "lexical_name": "adjusted_value_identity",
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
  "slug": "adjusted-value-identity--3ef786334a94715a0978104d",
  "source": {
    "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 322,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef786334a94715a0978104dce18651f66f5e00e31c41c6237660c9e43035672",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5119cb-ad01-b6b5-2463-d1d1051d6153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjusted_value_identity {s : ℂ} (hs : 0 < s.re) :
    adjustedTail 1 s = (s + 2) * tail 1 s := by
  let R : ℂ := adjustedTail 1 s - (s + 2) * tail 1 s
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = adjustedTail N s - (s + 2) * tail N s := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have ha := QuadraticPrimitive.split_integral_tail (adjusted_integrable (T := 1) le_rfl hs) hNR
    have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
    change adjustedTail 1 s = _ + adjustedTail N s at ha
    change tail 1 s = _ + tail N s at hq
    dsimp only [R]
    rw [ha, hq, finite_integral_identity hN hs]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      ((n : ℝ) + 1) ^ (-(s.re + 1)) / (12 * (s.re + 1)) +
      ‖s + 2‖ * (((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2))) := by
    rw [heq (n + 1) (by omega)]
    calc
      _ ≤ ‖adjustedTail (n + 1) s‖ + ‖s + 2‖ * ‖tail (n + 1) s‖ := by
        simpa only [norm_mul] using norm_sub_le (adjustedTail (n + 1) s) ((s + 2) * tail (n + 1) s)
      _ ≤ _ := by
        simpa only [Nat.cast_add, Nat.cast_one] using add_le_add
          (adjustedTail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl)
          (mul_le_mul_of_nonneg_left (tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl) (norm_nonneg _))
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      ((n : ℝ) + 1) ^ (-(s.re + 1)) / (12 * (s.re + 1)) +
      ‖s + 2‖ * (((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2)))) atTop (𝓝 0) := by
    have h1 := ((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 1)).comp hn).div_const (12 * (s.re + 1))
    have h2 := (((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 2)).comp hn).div_const
      (120 * (s.re + 2))).const_mul ‖s + 2‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
