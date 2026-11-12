# Return of nested energy errors to the unchanged primitive arithmetic value

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.NestedGammaQuadrature.primitiveArithmeticValue_nested_enclosure`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact source statement

Canonical file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilNestedGammaQuadrature.lean`.
Source SHA-256: `e14ee0de0355892683393056136e19c6b28882db59bbb88e70fbeee71b2cc133`. A digest identifies bytes, not proof validity.
The following is the literal declaration type with its proof body omitted.
Native names are bound by the namespace opens in the canonical module.

```lean
theorem primitiveArithmeticValue_nested_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v s : ι → ℝ) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I)
      (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ)
    (m : ι → ℕ) (η : ι → ℝ) (zp z0 : ι → ℕ → ℂ)
    (hm : ∀ i ∈ I, 0 < m i) (hη : ∀ i ∈ I, 0 ≤ η i)
    (hp : ∀ i ∈ I, ∀ j < m i,
      ‖zp i j - f (midpoint A R (m i) j + s i)‖ ≤ η i)
    (h0 : ∀ i ∈ I, ∀ j < m i,
      ‖z0 i j - f (midpoint A R (m i) j)‖ ≤ η i) :
    let sampled := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        sampledEnergy A R (m i) (zp i) (z0 i)) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := shiftEnergySlope A R L * δ * kernelCellMass (gammaParity χ) ε R +
      ∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        innerBudget A R L (s i) (m i) (η i)
    sampled - error ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ sampled + error +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (gammaParity χ + 2 * n) R * energy f
```

## Analytical argument

Retain every assumption of `primitiveArithmeticValue_weighted_enclosure`,
including primitiveness, nonprincipality, physical support, genuine L2,
R>=2A, and a finite disjoint exact cover of (epsilon,R] whose samples and
mesh are verified. For each cell let w_i be its exact kernel integral,
e_i the original inner energy, ehat_i its point-evaluated midpoint sum,
and b_i the `innerBudget` derived from the source-bound point certificates.
The preceding theorem proves |e_i-ehat_i|<=b_i; w_i>=0 is native.
Thus

    |sum_i w_i*e_i - sum_i w_i*ehat_i| <= sum_i w_i*b_i = U.

Write B for the original outer sampled expression, Bhat for the same
expression with only e_i replaced by ehat_i, Delta=J*delta*W, and H,T
for the old omitted head/tail budgets. The old theorem gives

    B-Delta <= Q <= B+Delta+H+T.

Since |B-Bhat|<=U, elementary order addition gives

    Bhat-(Delta+U) <= Q <= Bhat+(Delta+U)+H+T.

There is no unknown sign assigned to the sampling errors; both sides are
charged. The nonnegative omitted head and tail stay upper-only. The
baseline coefficient, energy(f), finite exponential prefix and entire
signed prime-power expression are literally unchanged and exact.

## Declaration map and arithmetic consumer

`InnerEnergyQuadrature.shiftEnergy_midpoint_approx_error` supplies each
inner error from the actual source. `weighted_sum_error` is finite
positive-weight error propagation. The public theorem invokes the unchanged
`GammaWeightedQuadrature.primitiveArithmeticValue_weighted_enclosure` and
concludes an enclosure of exactly `primitiveArithmeticValue`.
No new arithmetic value or altered RH/GRH target is defined.

## Domain, hostile cases and unresolved obligations

This theorem is restricted to primitive nonprincipal characters. It cannot
be instantiated with the conductor-one principal character and says nothing
about removing either zeta pole orientation. Both parities are allowed by
the original natural parity index. Character phases, all prime powers,
strict support cutoff and arbitrary complex source values are retained.
The baseline coefficient may be negative; it is not rounded, so no
unjustified monotone product rule is used.

This is not yet a rational enclosure of the full arithmetic expression:
cell weights, baseline constants, energy(f), logarithms, exponentials,
character values, correlations and prime terms still require their own
source-bound evaluation and signed interval arithmetic. Prime-cutoff
comparisons must be certified, not decided by rounded logarithms.
No full explicit-formula or Weil-criterion transfer, smooth-test density,
universal nonnegativity or universal good-sign certificate existence is
proved. Inner evaluation reduces one genuine analytic obligation, not the
central signed arithmetic inequality.

## Sources, comparison and evidence

Inspected native source revision: `grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The unchanged native definitions and consumers in `WeilGammaHeadIntegrability`,
`WeilExactGammaTail` and `WeilGammaWeightedQuadrature` are authoritative.
In particular, the prime term remains `Re(conj(chi(n))*correlation(f,log n))`;
this convention is not reconstructed from a loose paper analogy.

This is an elementary local consequence of the physical source, not a theorem
imported verbatim from a paper and not a new-paper claim. The mathematical
context is Connes, Consani and Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1 (27 November 2025), convolution/complex pairing (2.1)--(2.5)
and the native gamma context (3.19)--(3.20), as recorded in the inspected
source provenance. No theorem of that paper is identified with the present
midpoint error theorem. Source-return here is to the existing arithmetic
expression, not a newly established completed-L-function explicit formula.

The methods are the reverse triangle inequality, integration of the exact
midpoint distance, finite additivity, and positive-weight comparison.
Pinned Mathlib `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean`
was inspected for `norm_integral_le_of_norm_le`,
`sum_integral_adjacent_intervals` and interval additivity. Public Mathlib
documentation was also compared; documentation is not elaboration evidence.
No third-party implementation was copied. Repository searches were incomplete
and prove no absence of prior results. Novelty: `UNASSESSED`. No research
claim-ID promotion or change to any existing claim meaning is made.

Written argument: supplied. Formal status: `SOURCE_PROOF_CANDIDATE`.
`LEAN_ELABORATION`, `FULL_DEPENDENCY_BUILD`, `FRESH_KERNEL`,
`TRANSITIVE_AXIOM_AUDIT`, `INDEPENDENT_ANALYTICAL_REVIEW`, and
`NUMERICAL_CERTIFICATION`: `NOT_RUN`. Static token/delimiter checks are not
parsing, elaboration, axiom-audit or numerical-sign evidence. Earlier repaired
and checked modules in issue #1789 keep their exact historical evidence;
those checks do not establish this new import closure.

The current required proof-automation skill path was inaccessible (404) at
inspected Noe main `e8309df2b998cc050e80ca1dffd4a78bb83d9448`.
No verified local skill checkout or Lean/Lake executable was available.
Dependent execution remained stopped. No runner, scheduler or remote proof
service was dispatched. Ordinary authorized source authoring and GitHub
publication continue under the inspected AGENTS/CONTRIBUTING policy.

The next formal obligation is to build the complete native import closure
at the published source and these exact pins, repair its earliest actual
failure, then check literal statement correspondence and transitive axioms.
No current compiler failure is claimed without a run. Coordination and
publication readback belong to [issue #1789](https://github.com/grwtsk/math/issues/1789),
continuation comment `6817050860`. Publication does not promote these statuses.
