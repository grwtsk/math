# hasNegativeFrame_of_weighted_approximation

Local attribution: grwtsk contributors.

## Exact source and dependencies

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.hasNegativeFrame_of_weighted_approximation` in [NegativeFramePerturbation.lean](../NegativeFramePerturbation.lean).
Source blob: `ad1027a32525519477026631827daeab4c29f16b`.
Source SHA-256: `d39d17fdbf9d8886f21b88809338ae74fbe09dd86abd238cb56f9ca03160364a`.
Inspection base: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The weighted topology dependency is blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b` from this change. Program 3's existing `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NegativeIndex.lean`, blob `e0b7a4a243ced641ab3961a93f749c43c5002cb0`, supplies `HasNegativeFrame` and `negativeIndex`. No parallel dimension or index definition is created.

## Exact statement and primary argument

For arbitrary n:Nat and a weighted evaluation model D on a normed complex space E, take complex-linear G,F:(Fin n->Complex)->E. Let radius be nonnegative on all coefficient vectors and positive on every nonzero vector. Assume S,epsilon>=0 and, for every v:

- norm(Gv)<=S radius(v);
- norm(Fv-Gv)<=epsilon radius(v);
- D.quadratic(Gv)<=-eta radius(v)^2.

If `D.mass*(2*S*epsilon+epsilon^2)<eta`, then the canonical `HasNegativeFrame (scalar := Complex) D.quadratic n` holds, realized by F itself. No injectivity of F or G is assumed.

The full-divisor perturbation theorem yields |q(Fv)-q(Gv)| <= M(2S epsilon+epsilon^2)radius(v)^2. For nonzero v, the strict gap therefore gives q(Fv)<0. If Fv=0 this contradicts q(0)=0. Thus F has zero kernel, and linearity proves injectivity. This returns an actual n-dimensional complex negative subspace, not n separately negative samples. The following theorem returns the frame to the existing ENat index.

## Comparison, hostile check and source return

This is a local standard stability consequence of [RP-OC-02 W1/W3/W4, research issue #51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), composed with Program 3's negative-frame interface [math #1808](https://github.com/grwtsk/math/issues/1808). The originating monograph is grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 19.3. This is not a new literature theorem, a second independent proof, or a direct formalization of Bombieri's finite-exception theorem. Novelty comparison remains UNASSESSED; no novelty is asserted.

The source countermodel q(x,y)=-x^2-y^2+4xy has q(1,0)=q(0,1)=-1 but q(1,1)=2. Hence generator-only negativity cannot replace the every-vector hypotheses. Equality at the error threshold need not leave a strict negative margin. There is no assumed finite global negative index and no finite-off-critical-exception hypothesis.

Mathematical consumer: one common linear compactification or approximation of a supplied negative frame. Actual Gaussian families, a uniform error estimate over all combinations, admissible compact smooth tests, the arithmetic divisor/moment, and the full pole-inclusive explicit formula remain required. No conductor, parity/gamma term, pole orientation or prime power is suppressed. This theorem does not construct those suppliers or prove unconditional positivity, arithmetic index counting or GRH.

## Reproduction and evidence

Publication receipt: [math #1801](https://github.com/grwtsk/math/issues/1801). Use a clean checkout of the publication commit and unchanged dependency pins. Build imported project modules, then run `lake env lean GRWTSK/FunctionalAnalysis/NegativeFramePerturbation.lean`. Inspect `#print axioms GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.hasNegativeFrame_of_weighted_approximation` in the same environment. These commands were NOT_RUN here.

Elaboration/build: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN. Arithmetic certificate execution: NOT_RUN. Local lexical checks and matching blob identities do not establish compilation, mathematical acceptance, or stronger status for imported candidates.
