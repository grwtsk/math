# CDI-v1-03: compensatedDensity_integrable

Local declaration: `GRWTSK.SpecialFunctions.CompensatedDigammaIntegral.compensatedDensity_integrable`.
Maintained source: `../CompensatedDigammaIntegral.lean`.
Primary MSC2020: 33B15.
Source SHA-256: `1ea983596b77f46fa227f86d97851c10f20b752aa5e9835c81fb50022985f745`.

## Literal source statement

```lean
theorem compensatedDensity_integrable {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) :
    IntegrableOn (compensatedDensity alpha d) (Ioi 0)
```

## Complete argument and exact consumer

The density is a measurable complex quotient (including its harmless totalized
value at r=0). On the restricted measure of (0,infinity), CDI-v1-02 dominates
its norm by C exp(-alpha*r/2), where C=2||d||(2/alpha+1/2).
Alpha>0 makes this exponential genuinely integrable on the WHOLE half-line.
The native Integrable.mono' theorem therefore supplies actual integrability.
Consumer: CDI-v1-04 and the original parity-kernel specialization WGC-v1-03.
There is no use of equality between two divergent totalized integrals.

## Individual source correspondence

The preceding whole-half-line majorant and pinned Mathlib `ImproperIntegrals.integrableOn_exp_mul_Ioi`, with `Integrable.mono'`. The primary objects are the explicit scalar kernel and Lebesgue measure.

The full written gamma/conductor assembly, absolute Fubini budget, and unchanged
arithmetic return are in [WGC-v1-03](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaCompensatedInversion.provenance/digamma_right_line_compensation.md). The subsection there explicitly
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
