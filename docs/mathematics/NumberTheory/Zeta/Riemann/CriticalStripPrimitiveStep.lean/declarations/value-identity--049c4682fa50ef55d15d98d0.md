# value_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:909a8d5e-2c19-86e4-42af-f41e83ff6a42",
  "kind": "theorem",
  "lexical_name": "value_identity",
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
  "slug": "value-identity--049c4682fa50ef55d15d98d0",
  "source": {
    "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049c4682fa50ef55d15d98d002c9a38772e174d0314c959fba37696ea26625a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:909a8d5e-2c19-86e4-42af-f41e83ff6a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem value_identity (S : CellPrimitive f g) {z : ℂ} (hz : 1 < z.re) :
    f.tail z 1 = z * g.tail (z + 1) 1 := by
  let R : ℂ := f.tail z 1 - z * g.tail (z + 1) 1
  have hz1 : 1 < (z + 1).re := by simp only [Complex.add_re, Complex.one_re]; linarith
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = f.tail z N - z * g.tail (z + 1) N := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hf := CenteredMellin.QuadraticPrimitive.split_integral_tail
      (f.integrand_integrable (T := 1) le_rfl hz) hNR
    have hg := CenteredMellin.QuadraticPrimitive.split_integral_tail
      (g.integrand_integrable (T := 1) le_rfl hz1) hNR
    change f.tail z 1 = _ + f.tail z N at hf
    change g.tail (z + 1) 1 = _ + g.tail (z + 1) N at hg
    dsimp only [R]
    rw [hf, hg, S.finite_identity hN hz]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      f.bound * (((n : ℝ) + 1) ^ (-(z.re - 1)) / (z.re - 1)) +
      ‖z‖ * (g.bound * (((n : ℝ) + 1) ^ (-z.re) / z.re)) := by
    rw [heq (n + 1) (by omega)]
    have hf := f.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
      (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hz le_rfl
    have hg := g.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
      (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hz1 le_rfl
    have htri := norm_sub_le (f.tail z (n + 1)) (z * g.tail (z + 1) (n + 1))
    rw [norm_mul] at htri
    have hb := htri.trans (add_le_add hf (mul_le_mul_of_nonneg_left hg (norm_nonneg z)))
    simpa only [Nat.cast_add, Nat.cast_one, Complex.add_re, Complex.one_re,
      add_sub_cancel_right] using hb
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      f.bound * (((n : ℝ) + 1) ^ (-(z.re - 1)) / (z.re - 1)) +
      ‖z‖ * (g.bound * (((n : ℝ) + 1) ^ (-z.re) / z.re))) atTop (𝓝 0) := by
    have h1 := (((tendsto_rpow_neg_atTop (by linarith : 0 < z.re - 1)).comp hn).div_const
      (z.re - 1)).const_mul f.bound
    have h2 := ((((tendsto_rpow_neg_atTop (by linarith : 0 < z.re)).comp hn).div_const
      z.re).const_mul g.bound).const_mul ‖z‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim
    (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
