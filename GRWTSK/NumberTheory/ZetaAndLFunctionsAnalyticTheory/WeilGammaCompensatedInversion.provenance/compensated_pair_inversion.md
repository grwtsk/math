# WGC-v1-02: compensated_pair_inversion

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion.compensated_pair_inversion`.
Maintained source: `../WeilGammaCompensatedInversion.lean`.
Primary MSC2020: 11M41.
Source SHA-256: `0b0d3eaeebb14c9afcb714e2ff83faae748bc9497c5ef59ce5408e120af953de`.

## Literal source statement

```lean
theorem compensated_pair_inversion (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (r : ℝ) :
    let V := fun s : ℂ => ∫ u : ℝ, correlation f u *
      Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => V (2 + Complex.I * (t : ℂ)) +
      V (-1 + Complex.I * ((-t : ℝ) : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, H t * (1 - Complex.exp
        (-((3 / 2 : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ)))) =
      (energy (fun u => f (u + r) - f u) : ℂ)
```

## Complete argument and exact consumer

Define V(s)=integral C_f(u)exp((s-1/2)u)du and
H(t)=V(2+it)+V(-1-it). Native smooth-compact vertical integrability supplies
both terms of H in L1. Multiplication by exp(-ity) preserves the norm.
Apply the already proved source inversion at sigma=2 and y, and at sigma=-1
and -y after t->-t. The two terms give
(1/(2pi))*integral H(t)exp(-ity)dt
 = [C_f(y)+C_f(-y)]exp(3y/2).
At y=0 this is 2E(f), since C_f(0)=E(f) as a complex equality.

For every fixed real r, exp(-(3/2+it)r)=exp(-3r/2)exp(-itr).
Both terms of the t-integral are genuinely integrable. Subtracting the two
inversion identities cancels exp(-3r/2)*exp(3r/2) exactly and gives
2E(f)-C_f(r)-C_f(-r). WGC-v1-01 identifies this with the original e_f(r).
This is not an assertion based on a midpoint and adds no inversion premise.
Consumer: the full written gamma/conductor evaluation below; WGC-v1-03 supplies
the exact special-function factor that is integrated against this identity.

## Individual source correspondence

Native `WeilCorrelationInversion.correlation_weight_inversion` at baseline, and the actual L2 correlation identity in this file. The earlier inversion supplier retains its own SOURCE_PROOF_CANDIDATE status. This consumes rather than postulates inversion at every real point.

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
