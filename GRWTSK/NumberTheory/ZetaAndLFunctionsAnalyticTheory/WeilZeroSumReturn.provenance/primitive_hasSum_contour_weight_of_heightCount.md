# primitive_hasSum_contour_weight_of_heightCount

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
Statement ID: WZSR-v1-04. Source status: SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_hasSum_contour_weight_of_heightCount`.
Source: [WeilZeroSumReturn.lean](../WeilZeroSumReturn.lean).
Analytical argument: [WeilZeroSumReturn.md](../WeilZeroSumReturn.md).
Coordination: grwtsk/math#1801, scope comment 6829493093.

## Literal statement

Notation, imports, namespaces and the ambient positive level are those of the
maintained Lean file. The source index, multiplicities and test predicate are
canonical, not new definitions.

```lean
theorem primitive_hasSum_contour_weight_of_heightCount
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (D L : ℝ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0))
```

## Argument, consumer and hostile check

Obtain the existing source-selected heights and contour limit. Their lower bound n+2 proves divergence to infinity. Add back both applicable pole terms. The cofinality theorem and absolute summability discharge the premises of pinned Mathlib hasSum_of_subseq_of_summable.

Consumer/source return: This is the actual zero-divisor HasSum endpoint corresponding to the full arithmetic right-line integral. Physical prime/gamma evaluation and sign remain separate.

Hostile check: Synthetic paired terms +1,-1 at each height have zero paired partial sums but no unordered sum. Absolute convergence prevents that error; both source poles are restored with the positive sign.

## Individual provenance and evidence boundary

Inspected math revision `6f7d2e3b6d15f0d2c49aaba984af27c48786943c`.
Local dependencies: WeilVerticalLimits.lean, blob 093765bad5c2aa68b057700be8e70a85a9472356, exists_primitive_weil_full_line_limit; WeilPrimitiveZeroMoment.lean; pinned Mathlib InfiniteSum.

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
`#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_hasSum_contour_weight_of_heightCount`.
