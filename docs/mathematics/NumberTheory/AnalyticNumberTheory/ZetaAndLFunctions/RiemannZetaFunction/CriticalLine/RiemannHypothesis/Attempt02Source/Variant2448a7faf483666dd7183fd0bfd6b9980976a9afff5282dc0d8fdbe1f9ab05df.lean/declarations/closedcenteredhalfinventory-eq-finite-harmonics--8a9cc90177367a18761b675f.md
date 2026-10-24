# closedCenteredHalfInventory_eq_finite_harmonics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3ce909c-6e3e-6e87-2476-9d16a27173de",
  "kind": "theorem",
  "lexical_name": "closedCenteredHalfInventory_eq_finite_harmonics",
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
  "slug": "closedcenteredhalfinventory-eq-finite-harmonics--8a9cc90177367a18761b675f",
  "source": {
    "blob": "dc1d7689c590c61b64d45540835e226bb5d83359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a9cc90177367a18761b675f83f49cf868ac4b77cac7bae5106dfeb19116789c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ce909c-6e3e-6e87-2476-9d16a27173de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedCenteredHalfInventory_eq_finite_harmonics
    (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    closedCenteredHalfInventory U L =
      alpha U * finiteHalfHarmonic L -
        (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d)) + 1 - alpha U * finiteHalfHarmonic U := by
  have hfull : (∑ n ∈ Finset.Icc 1 L, beta U n / Real.sqrt (n : ℝ)) =
      1 - ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
    have hc := weighted_short_sum U L hUL
    have hn (n : ℕ) : beta U n =
        (if n = 1 then (1 : ℝ) else 0) -
          (shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n := by
      rw [beta_eq_long_convolution, longPart, sub_mul, coe_moebius_mul_coe_zeta]
      change (1 : ArithmeticFunction ℝ) n -
        (shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n = _
      rw [ArithmeticFunction.one_apply]
    simp_rw [hn, sub_div, Finset.sum_sub_distrib]
    rw [hc]
    have he : (∑ n ∈ Finset.Icc 1 L,
        (if n = 1 then (1 : ℝ) else 0) / Real.sqrt (n : ℝ)) = 1 := by
      simp [ite_div, hU.trans hUL]
    rw [he]
  have hshort : (∑ n ∈ Finset.Icc 1 U, beta U n / Real.sqrt (n : ℝ)) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    rw [beta_zero_of_le U n (Finset.mem_Icc.mp hn).2, zero_div]
  have hsplit := Finset.sum_Ioc_consecutive
    (fun n => beta U n / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  have he0 (M : ℕ) : Finset.Ioc 0 M = Finset.Icc 1 M := by
    rw [← Finset.Icc_add_one_left_eq_Ioc]
    rfl
  rw [he0 U, he0 L, hshort, zero_add, hfull] at hsplit
  have hh := Finset.sum_Ioc_consecutive
    (fun n : ℕ => 1 / Real.sqrt (n : ℝ)) (Nat.zero_le U) hUL
  rw [he0 U, he0 L] at hh
  unfold closedCenteredHalfInventory
  simp_rw [centeredBeta, add_div]
  rw [Finset.sum_add_distrib, hsplit]
  simp_rw [show ∀ n : ℕ, alpha U / Real.sqrt (n : ℝ) =
    alpha U * (1 / Real.sqrt (n : ℝ)) by intro n; ring]
  rw [← Finset.mul_sum]
  unfold finiteHalfHarmonic
  nlinarith [congrArg (fun x : ℝ => alpha U * x) hh]

/-- The original natural-quotient closed inventory is the same positive harmonic formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant2448a7faf483666dd7183fd0bfd6b9980976a9afff5282dc0d8fdbe1f9ab05df.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1d7689c590c61b64d45540835e226bb5d83359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
