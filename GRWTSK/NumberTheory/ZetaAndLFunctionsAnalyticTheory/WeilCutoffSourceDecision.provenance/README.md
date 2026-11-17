# Provenance: WeilCutoffSourceDecision.lean

**Local mathematical attribution:** grwtsk contributors.
**Status:** SOURCE_PROOF_CANDIDATE; Lean elaboration, compilation, fresh kernel replay, transitive axiom audit, numerical certificate replay, and independent analytical review: **NOT_RUN**. No novelty claim.

## Individual external references

1. Akiva Groskin, *A finite Guinand–Weil dictionary and archimedean tail order for the truncated Weil quadratic form*, arXiv:2607.02828v3 (14 August 2026), Theorem 2.5, Theorem 3.2, Corollary 3.3. Its zeta Galerkin-frequency matrix, subject to its explicit band/cutoff restrictions, has an exact finite test dictionary and an ordered, bounded omitted tail. The Lean file formalizes ONLY the logical sign decision after a two-sided enclosure; it does **not** prove the paper's Galerkin order theorem, bound formula, or a Dirichlet-character transfer.
2. Siegfried M. Rump, *Verification methods: Rigorous results using floating-point arithmetic*, Acta Numerica 19 (2010), pp. 287–449, corrected printing supplied, Part 1 §§4–6 and Part 2 §10. Motivates requiring rigorous lower and upper error bounds. No floating-point/interval-arithmetic implementation is formalized here.
3. Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rendiconti Lincei, Matematica e Applicazioni (9) 11 (2000), pp. 183–233, Introduction and §§2–3. The original zeta Weil form has a true source and test domain. No unproved Dirichlet analogue or global positivity is inferred.
4. Alain Connes and Caterina Consani, *Weil positivity and Trace formula: the archimedean place*, arXiv:2006.13771v1, Introduction eqs. (1)–(2), Appendix C. Pole-neutral restrictions require the exact equivalence theorem; no zeta pole is deleted by this nonprincipal-only module.

## Exact local declarations and correspondence

- New file: ../WeilCutoffSourceDecision.lean, namespace GRWTSK.NumberTheory.WeilQuadraticForm.CutoffSourceDecision.
- scalar_signs_of_enclosure: elementary two-sided-enclosure decision, **not** a direct formalization of Groskin's spectral inequality.
- negative_band_ambiguous: hostile sign-band control, with both negative and nonnegative possibilities inside a single unresolved interval; it is not a counterexample to RH/GRH.
- primitive_arithmetic_signs_of_enclosure: conditional numerical-sign adapter to the **original** primitive nonprincipal source; both comparison inequalities remain premises.
- not_primitiveGRH_of_source_cutoff: conditional incompatibility with the original PrimitiveDirichletGRH target if a truly negative original value is supplied AND the source's nonnegativity under GRH is separately proved. This proposition is an input, not an assumed axiom or an established target theorem.
- Original arithmetic source: ../WeilConductorFrontier.lean, GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue; preserves actual primitive complex character, conductor, gamma/parity, all active von Mangoldt prime-power weights, signed correlation and support window.
- Actual target: ../WeilDenseCertificateReduction.lean, GRWTSK.NumberTheory.WeilDenseCertificateReduction.PrimitiveDirichletGRH; its modulus-one source is actual analytically continued riemannZeta.
- Other consumers: ../WeilFiniteEnclosureReturn.lean requires **universal** character/window/test/accuracy coverage and source return; ../WeilPrimitiveDirichletReturn.lean proves induction from the primitive family. ../WeilExactGammaTail.lean proves a physical translation gamma tail, which is **not** Groskin's Galerkin-frequency tail.

## First unresolved mathematics

A true, source-specific complete Weil explicit formula (including a separate pole-inclusive zeta channel); the exact Galerkin or cutoff-to-original-source comparison with total error; original test-domain continuity/density; all-window and all-test certificate existence; and the primitive negative-witness/positivity-to-zero theorem. A verified finite certificate or source-agnostic self-adjoint model does not settle these premises.

Repository baseline inspected before authoring: grwtsk/math/main@3267d858af448f9a53cf40d6997df98da92ba25e; Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Source was authored without changing imports, pins, root aggregation or modifying existing definitions. No user PDF copies are redistributed. Coordination: https://github.com/grwtsk/math/issues/99 and https://github.com/grwtsk/math/issues/1807.
