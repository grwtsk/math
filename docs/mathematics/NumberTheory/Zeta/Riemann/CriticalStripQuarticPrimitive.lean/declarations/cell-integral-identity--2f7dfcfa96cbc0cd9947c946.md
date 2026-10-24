# cell_integral_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e846bd-8ed7-4cce-faef-d3a44c1ff346",
  "kind": "lemma",
  "lexical_name": "cell_integral_identity",
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
  "slug": "cell-integral-identity--2f7dfcfa96cbc0cd9947c946",
  "source": {
    "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7dfcfa96cbc0cd9947c946c6b3355cbe5d08b485c9d539f9856ed8435072f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e846bd-8ed7-4cce-faef-d3a44c1ff346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cell_integral_identity {n : ℕ} {s : ℂ} (hn : 1 ≤ n) (hs : 0 < s.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t) =
      (s + 3) * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let g : ℝ → ℂ := fun t => (t : ℂ) ^ (-(s + 3))
  let gp : ℝ → ℂ := fun t => -(s + 3) * (t : ℂ) ^ (-(s + 4))
  have hpne : -(s + 3) ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith))
  have hg : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt g (gp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    have h := hasDerivAt_ofReal_cpow_const ht0.ne' hpne
    simpa only [g, gp, show -(s + 3) - 1 = -(s + 4) by ring] using h
  have hgp : ContinuousOn gp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hcp : Continuous (CubicPrimitive.cell n) := by
    dsimp only [CubicPrimitive.cell]; fun_prop
  have hbyparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hg (fun t _ => cell_hasDerivAt n t) hgp.intervalIntegrable (hcp.intervalIntegrable _ _)
  have hc : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g t * CubicPrimitive.cell n t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [CubicPrimitive.integrand, CubicPrimitive.kernel_eq_cell hn ht]
    dsimp only [g]; ring
  have hp : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), cell n t * (t : ℂ) ^ (-(s + 4)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    simp only [integrand, kernel_eq_cell hn ht]
  rw [hc, hbyparts, hp]
  simp only [cell_left, cell_right, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [gp]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
