# cell_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16ab665b-56d8-9834-6837-734657cb7750",
  "kind": "theorem",
  "lexical_name": "cell_step",
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
  "slug": "cell-step--7f9f1914cc24bdef8696ec38",
  "source": {
    "blob": "6036c71a64effca36022444f769c4289b646a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 77,
    "path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f9f1914cc24bdef8696ec38c80421e8f7913c519032fdbc8f29413f25d06945",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16ab665b-56d8-9834-6837-734657cb7750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cell_step {m k : ℕ} (hm : 1 ≤ m) (hk : 1 ≤ k) (s : ℂ) :
    ((m + 1 : ℕ) : ℂ) * cell m k s - (s + m) * cell (m + 1) k s =
      (_root_.bernoulli (m + 1) : ℂ) *
        (((k + 1 : ℕ) : ℂ) ^ (-s - (m : ℂ)) - (k : ℂ) ^ (-s - (m : ℂ))) := by
  have hab : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ k
  have hcont : ContinuousOn (fun u : ℝ =>
      (PeriodicBernoulli.value (m + 1) (u - k) : ℂ) * (u : ℂ) ^ (-s - (m : ℂ)))
      (Icc (k : ℝ) ((k + 1 : ℕ) : ℝ)) := by
    apply (Complex.continuous_ofReal.comp
      ((PeriodicBernoulli.continuous_value (m + 1)).comp
        (continuous_id.sub continuous_const))).continuousOn.mul
    intro t ht
    have ht0 : 0 < t := lt_of_lt_of_le (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)) ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hi := (cellIntegrand_integrable m hk s).const_mul (((m + 1 : ℕ) : ℂ))
  have hj := (cellIntegrand_integrable (m + 1) hk s).const_mul (s + (m : ℂ))
  have hFTC := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hcont
    (fun t ht => cell_primitive_derivative m k s
      (lt_trans (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)) ht.1)) (hi.sub hj)
  rw [intervalIntegral.integral_sub hi hj, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at hFTC
  have hr : PeriodicBernoulli.value (m + 1) (((k + 1 : ℕ) : ℝ) - k) =
      (_root_.bernoulli (m + 1) : ℝ) := by
    rw [show (((k + 1 : ℕ) : ℝ) - k) = 1 by push_cast; ring]
    exact PeriodicBernoulli.value_one (by omega)
  simpa only [cell, hr, sub_self, PeriodicBernoulli.value_zero, Complex.ofReal_ratCast,
    Complex.ofReal_natCast, mul_sub] using hFTC

/-- Endpoint values may differ, but singletons have zero measure for these integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6036c71a64effca36022444f769c4289b646a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
