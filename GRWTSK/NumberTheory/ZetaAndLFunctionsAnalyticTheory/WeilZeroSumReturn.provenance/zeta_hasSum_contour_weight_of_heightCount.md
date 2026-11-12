# zeta_hasSum_contour_weight_of_heightCount

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
Statement ID: WZSR-v1-06. Source status: SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.zeta_hasSum_contour_weight_of_heightCount`.
Source: [WeilZeroSumReturn.lean](../WeilZeroSumReturn.lean).
Analytical argument: [WeilZeroSumReturn.md](../WeilZeroSumReturn.md).
Coordination: grwtsk/math#1801, scope comment 6829493093.

## Literal statement

Notation, imports, namespaces and the ambient positive level are those of the
maintained Lean file. The source index, multiplicities and test predicate are
canonical, not new definitions.

```lean
theorem zeta_hasSum_contour_weight_of_heightCount
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    (∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L)) →
    ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
      let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
      let V := fun t : ℝ =>
        let s := (2 : ℂ) + (t : ℂ) * Complex.I
        (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
          LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)
      HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
        ((∫ t : ℝ, V t) / (2 * (Real.pi : ℂ)) + (W 0 + W 1))
```

## Argument, consumer and hostile check

Use the existing explicitly expanded conductor-one full-line limit. Add W(0)+W(1), then apply the same absolute-summability/cofinality argument as for the primitive source.

Consumer/source return: Literal zeta gamma/von-Mangoldt endpoint with both poles, for the original canonical conductor-one zero index.

Hostile check: The pole term is 2 Re(M_f(0)*conj(M_f(1))), not a square. The q=1 source is not placed in a nonprincipal entire-function branch.

## Individual provenance and evidence boundary

Inspected math revision `6f7d2e3b6d15f0d2c49aaba984af27c48786943c`.
Local dependencies: WeilVerticalLimits.lean, blob 093765bad5c2aa68b057700be8e70a85a9472356, exists_zeta_weil_full_line_limit; LFunction_modOne_eq for the source identification.

Primary summation API: Sebastien Gouezel, Heather Macbeth, Johannes Hoelzl and
Yury Kudryashov, [Mathlib/Analysis/Normed/Group/InfiniteSum.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean),
`hasSum_of_subseq_of_summable`, revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
`8d025095fe1651bee64c5e50b94011c5640e4139`. Its source license is Apache-2.0;
this file preserves upstream attribution and makes no claim to have invented
that theorem. The literal local proof determines which API it consumes directly.

This is a local consequence/source adapter, NOT a direct new paper formalization.
The written count supplier is WMED-v1-5 in the preceding WeilMellinEnergyDecay
companion, followed by WZSR-v1-07's finite covering: D=324, L=log(3q). The four
count-dependent declarations retain hcount explicitly; neither counting result
has been added as a Lean theorem here. No seven-eighths input is used. Originality
UNASSESSED; prior-art comparison is scoped, not corpus-wide. No independent
analytical review is claimed.

Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, dependency build,
fresh kernel replay, transitive axiom audit, independent review and numerical
functional certification are NOT_RUN, including imported candidates. Text and
hash checks are not proof acceptance. No RH/GRH or all-test sign is concluded.

Proposed axiom query, NOT executed:
`#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.zeta_hasSum_contour_weight_of_heightCount`.
