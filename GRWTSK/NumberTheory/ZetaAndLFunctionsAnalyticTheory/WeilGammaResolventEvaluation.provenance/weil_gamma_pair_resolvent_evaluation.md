# WGRE-v1-02: `weil_gamma_pair_resolvent_evaluation`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilGammaResolventEvaluation.lean](../WeilGammaResolventEvaluation.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_gamma_pair_resolvent_evaluation`.
Source SHA-256: `3e83bcfefec233c56bc885f5509e77538b214bf96915e144ace5b646c44f7f22`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

```lean
theorem weil_gamma_pair_resolvent_evaluation
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) {b : ℝ} (hb : 0 < b) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    Integrable (fun t : ℝ => H t / ((b : ℂ) + Complex.I * (t : ℂ))) volume ∧
    IntegrableOn (fun r : ℝ => (correlation f r + correlation f (-r)) *
      (Real.exp ((3 / 2 - b) * r) : ℂ)) (Ioi 0) ∧
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, H t / ((b : ℂ) + Complex.I * (t : ℂ))) =
      ∫ r in Ioi (0 : ℝ), (correlation f r + correlation f (-r)) *
        (Real.exp ((3 / 2 - b) * r) : ℂ)
```

## Complete argument and consumer

For an arbitrary L1 phi, use F(t,r)=phi(t)exp(-(b+it)r) on R times (0,infinity). Its norm is exactly |phi(t)|exp(-br); b>0 supplies the integrable product. Integrate in r by the pinned complex Laplace integral and in t by Fubini. Apply WGRE-v1-01 to the literal paired weight and combine the two exponential factors. Both resulting one-dimensional integrability assertions are consequences of the product proof.

Consumer: WGRE-v1-03 evaluates the genuine denominators b=2+a+2j.

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

b must be strictly positive. The physical exponent can grow when 0<b<3/2, but the native correlation is compactly supported; the theorem does not require b>=3/2.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
