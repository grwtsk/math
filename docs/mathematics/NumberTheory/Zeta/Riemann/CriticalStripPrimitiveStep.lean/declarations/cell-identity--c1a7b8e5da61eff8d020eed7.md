# cell_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74f988e9-27b8-48f7-43fb-607345c7c443",
  "kind": "lemma",
  "lexical_name": "cell_identity",
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
  "slug": "cell-identity--c1a7b8e5da61eff8d020eed7",
  "source": {
    "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a7b8e5da61eff8d020eed7925ed864ea004265312ae6ee0cb308cc0b87e95c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74f988e9-27b8-48f7-43fb-607345c7c443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cell_identity (S : CellPrimitive f g) {n : ℕ} {z : ℂ}
    (hn : 1 ≤ n) (hz : 1 < z.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), f.integrand z t) =
      z * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g.integrand (z + 1) t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let w : ℝ → ℂ := fun t => (t : ℂ) ^ (-z)
  let wp : ℝ → ℂ := fun t => -z * (t : ℂ) ^ (-(z + 1))
  have hz0 : -z ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by linarith))
  have hw : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt w (wp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    simpa only [w, wp, show -z - 1 = -(z + 1) by ring] using
      (hasDerivAt_ofReal_cpow_const ht0.ne' hz0)
  have hwp : ContinuousOn wp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hb := intervalIntegral.integral_mul_deriv_eq_deriv_mul hw
    (fun t _ => S.hasDeriv n t) hwp.intervalIntegrable
    ((S.slope_continuous n).intervalIntegrable _ _)
  have hf : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), f.integrand z t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), w t * S.slope n t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [BoundedKernel.integrand, S.source_eq n hn t ht]
    exact mul_comm _ _
  have hg : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g.integrand (z + 1) t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), S.cell n t * (t : ℂ) ^ (-(z + 1)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [BoundedKernel.integrand, S.target_eq n hn t ht]
  rw [hf, hb, hg]
  simp only [S.left_zero, S.right_zero, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [wp]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
