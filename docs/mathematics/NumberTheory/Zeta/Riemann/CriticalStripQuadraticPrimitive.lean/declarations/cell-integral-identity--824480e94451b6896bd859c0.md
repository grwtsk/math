# cell_integral_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:546e1b19-ca79-2669-43b7-c68a2700d4c4",
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
  "slug": "cell-integral-identity--824480e94451b6896bd859c0",
  "source": {
    "blob": "ea2bb13499f413f3c585ce3b837d538180713172",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 169,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:824480e94451b6896bd859c092dd95f08c07ab43a8018d5d8a4ff6af99898d80",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:546e1b19-ca79-2669-43b7-c68a2700d4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cell_integral_identity {n : ℕ} {s : ℂ} (hn : 1 ≤ n) (hs : 0 < s.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CenteredMellin.integrand s t) =
      (s + 1) * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let g : ℝ → ℂ := fun t => (t : ℂ) ^ (-(s + 1))
  let gp : ℝ → ℂ := fun t => -(s + 1) * (t : ℂ) ^ (-(s + 2))
  let cp : ℝ → ℂ := fun t => (t : ℂ) - n - 1 / 2
  have hpne : -(s + 1) ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.one_re]; linarith))
  have hg : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt g (gp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    have h := hasDerivAt_ofReal_cpow_const ht0.ne' hpne
    simpa only [g, gp, show -(s + 1) - 1 = -(s + 2) by ring] using h
  have hgp : ContinuousOn gp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hcp : Continuous cp := by dsimp only [cp]; fun_prop
  have hbyparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hg (fun t _ => cell_hasDerivAt n t) hgp.intervalIntegrable
    (hcp.intervalIntegrable _ _)
  have hc : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ),
      CenteredMellin.integrand s t) = ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g t * cp t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [CenteredMellin.integrand, centered_eq_cell_derivative hn ht]
    dsimp only [g, cp]
    ring
  have hp : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), cell n t * (t : ℂ) ^ (-(s + 2)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    simp only [integrand, kernel_eq_cell hn ht]
  rw [hc, hbyparts, hp]
  simp only [cell_left, cell_right, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [gp]
  ring

/-- Restrict only a genuinely integrable tail to a bounded ordered interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea2bb13499f413f3c585ce3b837d538180713172` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
