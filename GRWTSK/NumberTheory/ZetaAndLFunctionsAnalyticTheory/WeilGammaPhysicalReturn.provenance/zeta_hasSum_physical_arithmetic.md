# WGPR-v1-05: `zeta_hasSum_physical_arithmetic`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.zeta_hasSum_physical_arithmetic`.
Source SHA-256: `c992ae2b6c9ee7dd498f3c00e1e5f8aa057c6c285070556845cb481bf3b0b377`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

```lean
theorem zeta_hasSum_physical_arithmetic
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      (((gammaConstant 1 0 * energy f +
        (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity 0 f r) -
        2 * ∑ n ∈ LowSchur.activePrimePowers A,
          LowSchur.primeWeight n * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ) +
        W 0 + W 1)
```

## Complete argument and consumer

Apply WGPR-v1-03 to the unique conductor-one principal character, whose
primitivity is supplied by isPrimitive_one_level_one. Its parity is0; inverse
character equals itself, and all coefficient values on ZMod1 are1. Expand only
the existing twistedPrime definition and retain both W(0) and W(1) with plus
signs on the full zero-sum side. The original zero type and continued source
are unchanged; LFunction_modOne_eq identifies the source with riemannZeta.

Consumer: The explicit conductor-one RH branch, with no pole-neutral or even-test restriction.

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

The two pole products are signed cross products, not positive squared norms; neither may be omitted.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
