# WGC-v1-04: conductor_line_evaluation

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion.conductor_line_evaluation`.
Maintained source: `../WeilGammaCompensatedInversion.lean`.
Primary MSC2020: 11M41.
Source SHA-256: `0b0d3eaeebb14c9afcb714e2ff83faae748bc9497c5ef59ce5408e120af953de`.

## Literal source statement

```lean
theorem conductor_line_evaluation (q : ℕ) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let V := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, (Real.log (q : ℝ) : ℂ) * V (2 + Complex.I * (t : ℂ))) =
        ((Real.log (q : ℝ) * energy f : ℝ) : ℂ)
```

## Complete argument and exact consumer

For the reflected contour convention W(s)=V(1-s), its conductor factor on
s=2+it is log(q)*W(1-s)=log(q)*V(s). The native inversion theorem at sigma=2
y=0 evaluates the normalized V integral as C_f(0)=E(f). Pulling the scalar
log(q) through the Bochner integral gives the stated equality.
The algebraic statement is valid for natural q under the library's logarithm
convention; its arithmetic consumer always has q>=1. At q=1 the term is zero.
This does not imply that the zeta pole products vanish or are nonnegative.
Consumer: the unshifted baseline gammaConstant in the written assembly below.

## Individual source correspondence

Native `WeilCorrelationInversion.correlation_weight_inversion` at y=0; native reflected-source identity W(1-s)=V(s). The original conductor/parity normalization is in `WeilGammaData` and the full right-line block in `WeilFiniteArithmeticLine`. This is an actual-source normalization consequence.

The full written gamma/conductor assembly, absolute Fubini budget, and unchanged
arithmetic return are in [WGC-v1-03](digamma_right_line_compensation.md). The subsection there explicitly
distinguishes its written proof from the component Lean source candidates.

## Pins, falsification, and disposition

Local attribution: grwtsk contributors. Date: 2026-11-12.
Native baseline: `c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

At d=0 the scalar identity is zero=zero; separately integrating its two
singular terms would be invalid. Alpha=1/2,d=-1 violates the Laplace domain
and gives a divergent tail, so analytic continuation alone is not enough.
Both parity values, both height signs, zero shifts and zero sources are covered.
Arbitrary complex phases are retained; the two zeta pole cross-products are
not replaced by squares. Real odd sources may have a negative pole term.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, full dependency build,
fresh kernel replay, transitive axiom audit, independent analytical review, and
whole-form numerical certification: NOT_RUN. Static checks and uncertified
scalar numerical experiments are not formal verification. Historical failures
are not promoted. No first current compiler error was identified without a build.
The native imported candidates keep their existing evidence status.

Coordination: math#1801, scope `6829876246`. No research claim is promoted by
this source-local record. The prescribed execution skill was inaccessible at
Noe `3a22e1022074ecc99d5cdeaabeb5dc919711a55b`; no dependent execution ran.
Next: exact-pin complete import build, then kernel/axiom and statement audits.
The written product-Fubini assembly is not yet a Lean theorem; universal
signed prime-gamma-pole domination remains the central arithmetic obligation.
