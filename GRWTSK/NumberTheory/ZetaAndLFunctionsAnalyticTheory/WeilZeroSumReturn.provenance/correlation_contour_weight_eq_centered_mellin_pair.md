# correlation_contour_weight_eq_centered_mellin_pair

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
Statement ID: WZSR-v1-02. Source status: SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_contour_weight_eq_centered_mellin_pair`.
Source: [WeilZeroSumReturn.lean](../WeilZeroSumReturn.lean).
Analytical argument: [WeilZeroSumReturn.md](../WeilZeroSumReturn.md).
Coordination: grwtsk/math#1801, scope comment 6829493093.

## Literal statement

Notation, imports, namespaces and the ambient positive level are those of the
maintained Lean file. The source index, multiplicities and test predicate are
canonical, not new definitions.

```lean
theorem correlation_contour_weight_eq_centered_mellin_pair
    (f : ℝ → ℂ) (A : ℝ) (hf : Integrable f volume)
    (hs : ∀ x, A < |x| → f x = 0) (s : ℂ) :
    (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      (∫ x : ℝ, f x * Complex.exp ((s - 1 / 2) * (x : ℂ))) *
        conj (∫ x : ℝ, f x * Complex.exp ((1 - conj s - 1 / 2) * (x : ℂ)))
```

## Argument, consumer and hostile check

Apply the existing reflected plus-Fourier correlation identity. Prove i*spectralCoordinate(s)=s-1/2 and i*conj(spectralCoordinate(s))=1-conj(s)-1/2, then substitute into both exponentials.

Consumer/source return: The source sum is returned literally to the signed centered-Mellin pairing at rho and 1-conj(rho), including both pole evaluation points.

Hostile check: At an off-line zero the second parameter is not rho. No modulus-square replacement is valid; the lemma keeps both parameters.

## Individual provenance and evidence boundary

Inspected math revision `6f7d2e3b6d15f0d2c49aaba984af27c48786943c`.
Local dependencies: WeilContourWeight.lean: correlation_contour_weight_eq_reflected_product; WeilNegativeWitness.spectralCoordinate.

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
`#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_contour_weight_eq_centered_mellin_pair`.
