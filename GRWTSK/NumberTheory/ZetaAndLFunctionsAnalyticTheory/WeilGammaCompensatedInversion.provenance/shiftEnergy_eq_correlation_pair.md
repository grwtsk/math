# WGC-v1-01: shiftEnergy_eq_correlation_pair

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion.shiftEnergy_eq_correlation_pair`.
Maintained source: `../WeilGammaCompensatedInversion.lean`.
Primary MSC2020: 11M41.
Source SHA-256: `0b0d3eaeebb14c9afcb714e2ff83faae748bc9497c5ef59ce5408e120af953de`.

## Literal source statement

```lean
theorem shiftEnergy_eq_correlation_pair {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    (energy (fun t => f (t + r) - f t) : ℂ) =
      2 * (energy f : ℂ) - correlation f r - correlation f (-r)
```

## Complete argument and exact consumer

For complex u,v,
|v-u|^2=|v|^2+|u|^2-2 Re(conj(u)v).
For an actual L2 source the two squared norms and the correlation integrand
are integrable. Lebesgue translation invariance makes both norm integrals E(f),
so e_f(r)=2E(f)-2 Re C_f(r). Changing variables in C_f(-r) gives conj C_f(r).
Embedding the real identity into C gives exactly 2E-C_f(r)-C_f(-r).
Consumer: WGC-v1-02; arbitrary complex phases and all real shifts are retained.
This argument is valid on the actual L2 source, without imposing smoothness
or replacing the correlation by an auxiliary positive Gram model.

## Individual source correspondence

Native `WeilSourcePrimeCorrelation.energy`, `correlation`, and `integrable_correlation_integrand`; pinned Mathlib complex norm-square algebra and Lebesgue translation invariance. This is a local consequence on the original source, not a new form definition.

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
