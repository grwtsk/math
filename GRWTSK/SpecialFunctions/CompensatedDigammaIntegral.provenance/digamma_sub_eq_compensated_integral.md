# CDI-v1-04: digamma_sub_eq_compensated_integral

Local declaration: `GRWTSK.SpecialFunctions.CompensatedDigammaIntegral.digamma_sub_eq_compensated_integral`.
Maintained source: `../CompensatedDigammaIntegral.lean`.
Primary MSC2020: 33B15.
Source SHA-256: `1ea983596b77f46fa227f86d97851c10f20b752aa5e9835c81fb50022985f745`.

## Literal source statement

```lean
theorem digamma_sub_eq_compensated_integral {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) :
    Complex.digamma (((alpha : ℂ) + d) / 2) - Complex.digamma ((alpha : ℂ) / 2) =
      2 * ∫ r in Ioi (0 : ℝ), compensatedDensity alpha d r
```

## Complete argument and exact consumer

Let G(alpha,d,r) be compensatedDensity. For N>=0 put
G_N(r)=G(r)(1-exp(-2Nr)). The exact finite geometric identity gives, for r>0,
G_N(r)=sum_{j<N}[exp(-(alpha+2j)r)-exp(-(alpha+d+2j)r)].
Every exponential is integrable: alpha>0 and Re d>=0 keep each rate in the
open right half-plane. Their integrals are the actual reciprocal differences.
Also 0<=1-exp(-2Nr)<=1, so the same CDI-v1-02 majorant dominates all G_N.
Pointwise G_{n+1}->G on (0,infinity), and dominated convergence passes the integral.

Put x=alpha/2 and z=(alpha+d)/2. The native finite Euler formula is
logDeriv(GammaSeq_n)(w)=log n-sum_{j<=n}(w+j)^(-1), for n!=0 and Re w>0.
Subtract its values at z and x BEFORE taking a limit. The log n terms cancel;
the remaining sum is 2*integral G_{n+1}, by the exact reciprocal rescaling.
GammaEulerLimit.logDeriv_GammaSeq_tendsto at both points identifies its limit
with Complex.digamma(z)-Complex.digamma(x). Uniqueness of limits proves the
stated identity. No infinite digamma series, Gauss integral, zero-free strip,
or arithmetic positivity hypothesis is imported.

Consumer: WGC-v1-03 uses alpha=a+1/2 and d=3/2+it. These satisfy all hypotheses
for every natural a and every REAL t, including both Dirichlet parities.
The prefactor 2 is forced by the lattice spacing 2 in the rates; omitting it
is a normalization error.

## Individual source correspondence

NIST DLMF 5.9.16 and 5.7.6 (accessed 2026-11-12), https://dlmf.nist.gov/5.9.E16 and https://dlmf.nist.gov/5.7.E6. Native `GammaEulerLimit.logDeriv_GammaSeq` and `logDeriv_GammaSeq_tendsto` at the baseline (blob `b04828358d697dd7c61ce5755374fc8e40379ff9`) supply the actual Gamma return. This adapts a classical formula by finite Laplace integration; it does not assume the formula. Anthropic `GammaFacts/Series.lean` at `16a5ce41304fcdaea4e0be7c132e1c361dc26da5` was compared, not imported.

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
