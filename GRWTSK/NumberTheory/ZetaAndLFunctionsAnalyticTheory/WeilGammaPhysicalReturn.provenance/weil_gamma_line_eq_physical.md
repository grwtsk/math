# WGPR-v1-01: `weil_gamma_line_eq_physical`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_gamma_line_eq_physical`.
Source SHA-256: `c992ae2b6c9ee7dd498f3c00e1e5f8aa057c6c285070556845cb481bf3b0b377`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

```lean
theorem weil_gamma_line_eq_physical
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (a : ℕ) :
    let W := fun s : ℂ => ∫ u : ℝ, correlation f u * Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => W (2 + Complex.I * (t : ℂ)) + W (1 - (2 + Complex.I * (t : ℂ)))
    let G := fun t : ℝ => H t * (-(Real.log Real.pi : ℂ) / 2 +
      Complex.digamma (((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2) / 2)
    Integrable G volume ∧ IntegrableOn (gammaCorrectionDensity a f) (Ioi 0) ∧
      (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, G t) =
        (((-Real.log Real.pi +
          (Complex.digamma ((1 / 4 + (a : ℝ) / 2 : ℝ) : ℂ)).re) * energy f +
          ∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r : ℝ) : ℂ)
```

## Complete argument and consumer

Write alpha=a+1/2, d(t)=3/2+it and F(t,r)=H(t)*compensatedDensity(alpha,d(t),r).
The native full-complex density bound and the literal pair bound give
|F(t,r)| <= [6B(2/alpha+1/2)/(1+t^2)]*exp(-alpha*r/2) for r>0.
Both scalar factors are integrable, jointly measurable, and nonnegative. This
proves genuine product integrability before swapping integrals. Native
compensated_pair_inversion evaluates the normalized t-integral as the complex
embedding of gammaCorrectionDensity(a,f,r). Product integration also supplies
integrability of that physical correction. The exact digamma compensation
splits the original gamma integrand into H times its unshifted constant and the
r-integral of F. Normalized integral H=2E pays the factor1/2. Finally positive-real
digamma is real: every eventual GammaSeq logarithmic derivative is real at the
same positive real point, and its actual limit preserves zero imaginary part.
Thus the equality is in C, not merely an equality of real parts.

Consumer: WGPR-v1-02 evaluates the complete original arithmetic integral.

[Connected analytical proof and source return](README.md). No RH/GRH, simplicity,
real/even-test restriction or all-test sign is assumed. Canonical objects and
quantifiers are retained; no external arithmetic target is substituted.

## Individual provenance and comparison

Native inputs: WeilGammaCompensatedInversion, digamma_right_line_compensation and
compensated_pair_inversion, blob `ab18e9b34a34e4d99bdbac3d3233e9953a48cbad`;
CompensatedDigammaIntegral.norm_compensatedDensity_le, blob
`fc8216804044e46a9da62e88d1fc1c7479789f4d`; WeilSourceHeightTail,
primitive_hasSum_contour_weight_source_bound, blob
`c9226f7083e9df82b00a9f9bfb65fcfdbb39cde2`; DirichletWeilIntegrand,
gammaParity_inverse, and WeilConductorFrontier.primitiveArithmeticValue.
The argument identifies each direct use. Native authorship: grwtsk contributors.
Pinned Mathlib Fubini: Integral/Prod.lean, blob
`7484a64e40beacdd472da61f858f02c8ffb62863`, Floris van Doorn and contributors.
Classical comparison: [DLMF5.9.16](https://dlmf.nist.gov/5.9.E16), accessed2026-11-12.

This is a local consequence/assembly, not a new direct paper formalization.
No external code is copied, no provider build is inherited, and the comparison
is targeted rather than an exhaustive novelty search. Imported evidence remains
unchanged. Original unpublished material, where applicable, is recorded in README.

## Hostile check and evidence

The singular endpoint r=0 and frequency t=0 are controlled by compensation; the two divergent kernel pieces are never split.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
