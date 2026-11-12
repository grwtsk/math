# WGRE-v1-03: `weil_finite_gamma_evaluation`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilGammaResolventEvaluation.lean](../WeilGammaResolventEvaluation.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_finite_gamma_evaluation`.
Source SHA-256: `3e83bcfefec233c56bc885f5509e77538b214bf96915e144ace5b646c44f7f22`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

```lean
theorem weil_finite_gamma_evaluation
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (a n : ℕ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    Integrable (fun t : ℝ => H t * gammaEulerMultiplier a n t) volume ∧
    (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, H t * gammaEulerMultiplier a n t) =
      -((Real.log Real.pi + Real.eulerMascheroniConstant : ℝ) : ℂ) * correlation f 0 +
      ∑ j ∈ Finset.range (n + 1),
        (correlation f 0 / ((j : ℂ) + 1) -
          ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
            (Real.exp (-((a : ℝ) + 1 / 2 + 2 * (j : ℝ)) * r) : ℂ))
```

## Complete argument and consumer

At r=0, WGRE-v1-01 gives normalized integral H=2C(0). Apply WGRE-v1-02 to b=2+a+2j. The constant reciprocal contributes C(0)/(j+1), and the resolvent contributes the displayed positive-half-line correlation integral. Establish each term integrable, then use finite integral additivity and the exact baseline.

Consumer: WGRE-v1-06 takes the limit of these actual physical partial expressions.

[Connected analytical proof and source return](README.md). No RH/GRH, simplicity,
real/even-test restriction or all-test sign is assumed. Canonical objects and
quantifiers are retained; no external arithmetic target is substituted.

## Individual provenance and comparison

Native inputs: correlation_weight_inversion, norm_correlation_contour_weight_le_strip,
and GammaEulerLimit.logDeriv_GammaSeq / logDeriv_GammaSeq_tendsto (blob
`b04828358d697dd7c61ce5755374fc8e40379ff9`), by grwtsk contributors. Pinned
Mathlib: ImproperIntegrals.integral_exp_mul_complex_Ioi (David Loeffler);
Integral/Prod.lean, Integrable.mul_prod and integral_integral_swap (Floris van
Doorn and contributors), blob `7484a64e40beacdd472da61f858f02c8ffb62863`;
Integral/DominatedConvergence.lean, tendsto_integral_of_dominated_convergence,
blob `f9151af5679b358686392d6d28721e01382dcad0`. Classical comparison:
[DLMF5.7.6](https://dlmf.nist.gov/5.7.E6), accessed2026-11-12.

This is a local consequence/assembly, not a new direct paper formalization.
No external code is copied, no provider build is inherited, and the comparison
is targeted rather than an exhaustive novelty search. Imported evidence remains
unchanged. Original unpublished material, where applicable, is recorded in README.

## Hostile check and evidence

The compensating constant must not be omitted; n=0 still retains j=0, and t=0,a=0 gives exact multiplier -(log(pi)+gamma)/2.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
