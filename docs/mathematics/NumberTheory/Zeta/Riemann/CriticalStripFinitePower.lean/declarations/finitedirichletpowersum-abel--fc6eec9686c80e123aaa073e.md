# finiteDirichletPowerSum_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411252b8-a74c-2005-1422-f3dfb7a726ca",
  "kind": "theorem",
  "lexical_name": "finiteDirichletPowerSum_abel",
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
  "slug": "finitedirichletpowersum-abel--fc6eec9686c80e123aaa073e",
  "source": {
    "blob": "ebe2113f9b4d8647700d4b8a4e993c60939c50e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc6eec9686c80e123aaa073ebaf413359510f9358d2b09e1532be5085103c161",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411252b8-a74c-2005-1422-f3dfb7a726ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDirichletPowerSum_abel {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hs : 0 < s.re) :
    finiteDirichletPowerSum N s = (N : ℂ) ^ (1 - s) +
      s * ∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
  have hs0 : -s ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos hs)
  have hdiff : ∀ t ∈ Icc (1 : ℝ) (N : ℝ),
      DifferentiableAt ℝ (fun t : ℝ => (t : ℂ) ^ (-s)) t := by
    intro t ht
    exact (hasDerivAt_ofReal_cpow_const (zero_lt_one.trans_le ht.1).ne' hs0).differentiableAt
  have hcont : ContinuousOn (fun t : ℝ => -s * (t : ℂ) ^ (-s - 1))
      (Icc (1 : ℝ) (N : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht.1).ne')).continuousWithinAt
  have hint : IntegrableOn (deriv (fun t : ℝ => (t : ℂ) ^ (-s)))
      (Icc (1 : ℝ) (N : ℝ)) := by
    refine hcont.integrableOn_Icc.congr_fun ?_ measurableSet_Icc
    intro t ht
    rw [Complex.deriv_ofReal_cpow_const (zero_lt_one.trans_le ht.1).ne' hs0]
  have hab := sum_mul_eq_sub_integral_mul₀' positiveUnitCoefficient
    (by simp [positiveUnitCoefficient]) N hdiff hint
  simp only [Complex.ofReal_natCast] at hab
  have hsum : (∑ k ∈ Finset.Icc 0 N,
      (k : ℂ) ^ (-s) * positiveUnitCoefficient k) = finiteDirichletPowerSum N s := by
    rw [sum_Icc_zero_eq_sum_Icc_one _ (by simp [positiveUnitCoefficient])]
    apply Finset.sum_congr rfl
    intro k hk
    simp [positiveUnitCoefficient, Nat.ne_of_gt
      (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1)]
  rw [hsum, positiveUnitCoefficient_sum] at hab
  have hderivIntegral :
      (∫ t : ℝ in Ioc 1 (N : ℝ),
        deriv (fun t : ℝ => (t : ℂ) ^ (-s)) t *
          ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, positiveUnitCoefficient k) =
      -s * ∫ t : ℝ in Ioc 1 (N : ℝ),
        (⌊t⌋₊ : ℂ) * (t : ℂ) ^ (-(s + 1)) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t ht
    rw [positiveUnitCoefficient_sum,
      Complex.deriv_ofReal_cpow_const (zero_lt_one.trans ht.1).ne' hs0]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  rw [hderivIntegral, nat_neg_cpow_mul hN] at hab
  calc
    finiteDirichletPowerSum N s = _ := hab
    _ = _ := by ring

/-- The elementary finite power integral is used only away from the exceptional
exponent -1. The later normalized identity handles s=1 without this division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe2113f9b4d8647700d4b8a4e993c60939c50e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
