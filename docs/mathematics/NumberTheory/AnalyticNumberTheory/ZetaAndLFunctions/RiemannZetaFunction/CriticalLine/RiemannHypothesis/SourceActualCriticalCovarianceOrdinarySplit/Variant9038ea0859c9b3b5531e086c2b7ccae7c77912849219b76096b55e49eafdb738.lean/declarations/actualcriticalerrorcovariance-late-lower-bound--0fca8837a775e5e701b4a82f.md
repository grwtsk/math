# actualCriticalErrorCovariance_late_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e60f0ad-93b0-6c38-60f6-c7c44c59ddb2",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_late_lower_bound",
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
  "slug": "actualcriticalerrorcovariance-late-lower-bound--0fca8837a775e5e701b4a82f",
  "source": {
    "blob": "60710ef04a47accf8d4eba577a7b39acd53850d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fca8837a775e5e701b4a82fc038b6e4b89edfef18a2dbb7a3eab1ac8b16816b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e60f0ad-93b0-6c38-60f6-c7c44c59ddb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_late_lower_bound {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    -(2 * eta * Real.exp A * (1 / 4 + 5 / A)) ≤
      ∫ t in T..2 * A, actualCriticalErrorDensity A t := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  let k : ℝ := eta * (1 / 4 + 5 / A)
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2)) volume T (2 * A) :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤
      k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := by linarith [ht.1]
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hh := critical_kernel_abs_le hA ht0 ht.2
    calc
      _ ≤ (eta * Real.exp (t / 2)) * (1 / 4 + 5 / A) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t (le_of_lt ht.1)) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hTA (ae_of_all _ hp) hb
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hm := mul_le_mul_of_nonneg_left (exponential_mass (l := T) (b := 2 * A)) hk
  rw [show 2 * A / 2 = A by ring] at hm
  have : |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      2 * eta * Real.exp A * (1 / 4 + 5 / A) := by
    apply hn.trans
    convert hm using 1
    dsimp [k]
    ring
  exact (neg_le_of_abs_le this)

/-- Genuine unconditional ordinary gamma centering supplies each actual amplitude threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variant9038ea0859c9b3b5531e086c2b7ccae7c77912849219b76096b55e49eafdb738.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60710ef04a47accf8d4eba577a7b39acd53850d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
