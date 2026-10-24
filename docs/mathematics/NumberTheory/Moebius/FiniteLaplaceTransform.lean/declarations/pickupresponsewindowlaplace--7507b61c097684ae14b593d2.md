# pickupResponseWindowLaplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06d66ec9-002f-e6ba-7f7e-44247705bcc1",
  "kind": "theorem",
  "lexical_name": "pickupResponseWindowLaplace",
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
  "slug": "pickupresponsewindowlaplace--7507b61c097684ae14b593d2",
  "source": {
    "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7507b61c097684ae14b593d205a2efa23a7e76909becbacde6c9306598015e9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06d66ec9-002f-e6ba-7f7e-44247705bcc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupResponseWindowLaplace {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (hnT : Real.log n ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace (pickupResponse n) z T =
      Complex.exp (-s*Real.log n)/(z*s) -
        2*Complex.exp (-z*T)/z * (((Real.sqrt n)⁻¹ : ℝ) : ℂ) +
        2*Complex.exp (-s*T)/s := by
  have ha : 0 ≤ Real.log (n:ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hT : 0 ≤ T := ha.trans hnT
  have hc : Continuous (fun u : ℝ ↦ Complex.exp (-z*u) * (pickupResponse n u : ℂ)) := by
    have he : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)) := by fun_prop
    exact he.mul (Complex.continuous_ofReal.comp (pickupResponse_continuous hn))
  have hzint : (∫ u in (0:ℝ)..Real.log n,
      Complex.exp (-z*u)*(pickupResponse n u : ℂ)) = 0 := by
    simpa only [noteWindowLaplace, max_eq_right ha] using pickupResponseWindow_at_birth hn z
  have hsint : (∫ u in Real.log n..T,
      Complex.exp (-z*u)*(pickupResponse n u : ℂ)) =
      2 * ((((Real.sqrt n)⁻¹ : ℝ) : ℂ) *
        ((Complex.exp (-z*Real.log n)-Complex.exp (-z*T))/z) -
        (Complex.exp (-s*Real.log n)-Complex.exp (-s*T))/s) := by
    calc
      _ = ∫ u in Real.log n..T, 2 *
          ((((Real.sqrt n)⁻¹ : ℝ) : ℂ) * Complex.exp (-z*u) - Complex.exp (-s*u)) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hnT] at hu
        simp only [pickupResponse, if_pos hu.1, Complex.ofReal_mul,
          Complex.ofReal_sub, Complex.ofReal_ofNat, Complex.ofReal_exp]
        have he : Complex.exp (-z*u) * Complex.exp ((-u/2:ℝ):ℂ) =
            Complex.exp (-s*u) := by
          rw [← Complex.exp_add, hs]
          congr 1
          push_cast
          ring
        linear_combination -2 * he
      _ = _ := by
        rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_sub,
          intervalIntegral.integral_const_mul, finiteLaplace_exponential hz,
          finiteLaplace_exponential hs0]
        · exact ((by fun_prop : Continuous (fun u : ℝ ↦ Complex.exp (-z*u))).const_mul _).intervalIntegrable _ _
        · exact (by fun_prop : Continuous (fun u : ℝ ↦ Complex.exp (-s*u))).intervalIntegrable _ _
  have he : (((Real.sqrt n)⁻¹ : ℝ) : ℂ) * Complex.exp (-z*Real.log n) =
      Complex.exp (-s*Real.log n) := by
    have hi := congrArg Complex.ofReal (pickup_exp_negative_log_half hn)
    have hcast : (((Real.sqrt n)⁻¹ : ℝ) : ℂ) =
        Complex.exp (-(Real.log n : ℂ)/2) := by simpa using hi.symm
    rw [hcast, ← Complex.exp_add, hs]
    congr 1
    ring
  unfold noteWindowLaplace
  rw [max_eq_right hT, ← intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 (Real.log n)) (hc.intervalIntegrable (Real.log n) T),
    hzint, zero_add, hsint]
  field_simp [hz, hs0]
  simp only [one_div]
  linear_combination (norm := skip) 2*s*he + 2*Complex.exp (-s*Real.log n)*hs
  simp only [neg_mul, mul_comm]
  ring

/-- Finite integral linearity uses the actual signed inventory on the recording. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
