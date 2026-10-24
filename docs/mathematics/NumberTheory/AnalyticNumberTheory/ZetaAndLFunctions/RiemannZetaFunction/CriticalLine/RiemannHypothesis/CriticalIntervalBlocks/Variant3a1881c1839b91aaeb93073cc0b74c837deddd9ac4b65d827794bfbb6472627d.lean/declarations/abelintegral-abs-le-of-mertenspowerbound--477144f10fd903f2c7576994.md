# abelIntegral_abs_le_of_mertensPowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095ba06f-da19-d5ff-a1fd-d207e6413ffb",
  "kind": "theorem",
  "lexical_name": "abelIntegral_abs_le_of_mertensPowerBound",
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
  "slug": "abelintegral-abs-le-of-mertenspowerbound--477144f10fd903f2c7576994",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:477144f10fd903f2c75769940684a8b8bdab744310995f4c52f9342f677f752a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095ba06f-da19-d5ff-a1fd-d207e6413ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abelIntegral_abs_le_of_mertensPowerBound {C β : ℝ} {n : ℕ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β)
    (hn : 1 ≤ n) :
    |∫ u in (0 : ℝ)..Real.log (n : ℝ),
        Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
      C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hr : 0 < β - 1 / 2 := sub_pos.mpr hβ
  have hf : IntervalIntegrable
      (fun u : ℝ => |Real.exp (-u / 2) * mertensPrefix (Real.exp u)|)
      volume 0 (Real.log (n : ℝ)) := by
    simpa only [pickupVelocity, Real.norm_eq_abs] using
      (pickupVelocity_intervalIntegrable 0 (Real.log (n : ℝ))).norm
  have hg : IntervalIntegrable
      (fun u : ℝ => C * Real.exp ((β - 1 / 2) * u))
      volume 0 (Real.log (n : ℝ)) :=
    (continuous_const.mul
      (Real.continuous_exp.comp
        (continuous_const.mul continuous_id))).intervalIntegrable _ _
  calc
    |∫ u in (0 : ℝ)..Real.log (n : ℝ),
        Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
        ∫ u in (0 : ℝ)..Real.log (n : ℝ),
          |Real.exp (-u / 2) * mertensPrefix (Real.exp u)| :=
      intervalIntegral.abs_integral_le_integral_abs hlog
    _ ≤ ∫ u in (0 : ℝ)..Real.log (n : ℝ),
          C * Real.exp ((β - 1 / 2) * u) := by
      apply intervalIntegral.integral_mono_on hlog hf hg
      intro u hu
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      calc
        Real.exp (-u / 2) * |mertensPrefix (Real.exp u)| ≤
            Real.exp (-u / 2) * (C * Real.exp (β * u)) :=
          mul_le_mul_of_nonneg_left
            (mertensPrefix_exp_le_of_powerBound hC (by linarith) hM hu.1)
            (Real.exp_pos _).le
        _ = C * Real.exp ((β - 1 / 2) * u) := by
          calc
            Real.exp (-u / 2) * (C * Real.exp (β * u)) =
                C * (Real.exp (-u / 2) * Real.exp (β * u)) := by ring
            _ = C * Real.exp ((β - 1 / 2) * u) := by
              rw [← Real.exp_add]
              congr 1
              ring_nf
    _ = C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := by
      rw [intervalIntegral.integral_const_mul,
        integral_exp_mul hr.ne' 0 (Real.log (n : ℝ))]
      rw [Real.rpow_def_of_pos hnpos]
      simp
      ring_nf

/-- Abel summation propagates a Mertens `n ^ β` bound, for `β > 1 / 2`,
to the weighted prefix at its natural exponent `β - 1 / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
