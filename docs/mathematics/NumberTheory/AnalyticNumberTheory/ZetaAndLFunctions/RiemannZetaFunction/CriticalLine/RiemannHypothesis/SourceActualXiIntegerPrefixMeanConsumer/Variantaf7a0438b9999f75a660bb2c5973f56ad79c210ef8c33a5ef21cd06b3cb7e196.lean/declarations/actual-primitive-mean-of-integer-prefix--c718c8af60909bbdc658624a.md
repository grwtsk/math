# actual_primitive_mean_of_integer_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26cbc492-e41a-8c13-12d7-3d3f8dfb72a7",
  "kind": "theorem",
  "lexical_name": "actual_primitive_mean_of_integer_prefix",
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
  "slug": "actual-primitive-mean-of-integer-prefix--c718c8af60909bbdc658624a",
  "source": {
    "blob": "a023be5f87dce6942a05d196f40b644cbc0551cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variantaf7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c718c8af60909bbdc658624ad0c989c0951b620b764856c62b2b2619cf1ee114",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variantaf7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26cbc492-e41a-8c13-12d7-3d3f8dfb72a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_mean_of_integer_prefix {L : ℝ} {N₀ : ℕ}
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ))
    {T : ℝ} (hT : Real.log (N₀ : ℝ) ≤ T) :
    (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤
      actualIntegerPrefixMeanCoefficient L * T := by
  have hN₀p : 0 < (N₀ : ℝ) := by exact_mod_cast (show 0 < N₀ by omega)
  have hlog : Real.log 7 ≤ Real.log (N₀ : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hN₀)
  have ht := hlog.trans hT
  have hfloor : N₀ ≤ Nat.floor (Real.exp T) := by
    apply Nat.le_floor
    simpa only [Real.exp_log hN₀p] using Real.exp_le_exp.mpr hT
  have hn : 7 ≤ Nat.floor (Real.exp T) := hN₀.trans hfloor
  have hnp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  have hlogfloor : Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T := by
    simpa only [Real.log_exp] using
      Real.log_le_log hnp (Nat.floor_le (Real.exp_pos T).le)
  have hpre := (hprefix _ hfloor).trans
    (mul_le_mul_of_nonneg_left hlogfloor hL)
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hfrac := actualXiTerminalFraction_le_inverse_sqrt ht
  have hdiv : 2 * actualXiExponentialEnvelopeConstant /
      Real.sqrt (Nat.floor (Real.exp T) : ℝ) ≤
        2 * actualXiExponentialEnvelopeConstant / Real.sqrt 7 := by
    apply div_le_div_of_nonneg_left (by positivity) (by positivity)
    exact Real.sqrt_le_sqrt (by exact_mod_cast hn)
  have herr := actualXiPrimitive_mean_weighted_readout_error ht
  change |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
    (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
      actualXiTerminalFraction T)| ≤ actualXiLogStepErrorConstant at herr
  have hbase : (∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) ≤
      L * T + actualIntegerPrefixMeanError := by
    unfold actualIntegerPrefixMeanError
    linarith [(abs_le.mp herr).2, hfrac.trans hdiv]
  have ha : 0 < Real.log 7 := Real.log_pos (by norm_num)
  have he := actualIntegerPrefixMeanError_nonneg
  have hpay : actualIntegerPrefixMeanError ≤
      actualIntegerPrefixMeanError / Real.log 7 * T := by
    have hh := mul_le_mul_of_nonneg_left ht (div_nonneg he ha.le)
    rwa [div_mul_cancel₀ _ ha.ne'] at hh
  exact hbase.trans ((add_le_add_left hpay (L * T)).trans_eq (by
    unfold actualIntegerPrefixMeanCoefficient
    ring))

/-- The completed integer hypothesis yields the exact future all-real average required by Abel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variantaf7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variantaf7a0438b9999f75a660bb2c5973f56ad79c210ef8c33a5ef21cd06b3cb7e196.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a023be5f87dce6942a05d196f40b644cbc0551cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
