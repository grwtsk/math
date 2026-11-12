# A finite weighted rule for the actual gamma integral

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature.gamma_finite_sampling_error`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact Lean statement

The namespace opens in the canonical source bind all native identifiers.
The following is the literal declaration type, with the proof body omitted:

```lean
theorem gamma_finite_sampling_error {ι : Type*} (I : Finset ι) (a : ℕ)
    (u v s : ι → ℝ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R ε δ : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R) (hε : 0 < ε)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I) (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ) :
    |(∫ r in Ioc ε R, gammaCorrectionDensity a f r) -
      ∑ i ∈ I, kernelCellMass a (u i) (v i) * energy (fun t => f (t + s i) - f t)| ≤
      shiftEnergySlope A R L * δ * kernelCellMass a ε R
```

## Mathematical statement and proof

Use the preceding supported Lipschitz L2 source and its derived slope
J=2(2A+R)L^2R. Let 0<epsilon and let I be any finite index set. Its cells
C_i=(u_i,v_i] have u_i>0, v_i<=R and samples s_i in [u_i,v_i]. Require
pairwise disjointness for distinct indices, exact union (epsilon,R], and
an explicitly verified sampling radius delta>=0:

    |r-s_i| <= delta for every i in I and every r in C_i.

Define w_i=integral_C_i K_a, E_i=E(tau_(s_i)f-f), and
W=kernelCellMass(a,epsilon,R). Then

    |integral_(epsilon,R] K_a(r) E_r dr - sum_i w_i E_i| <= J delta W.

All integrals are genuine. Each cell kernel is integrable by restriction
from the positive tail. The native density is integrable by the prior
supported Lipschitz head/tail theorem. Hence K_a*(E_r-E_i) is integrable.
On C_i the proved energy modulus gives |E_r-E_i|<=J delta. Positivity of
K_a, followed by the integral triangle inequality and comparison, proves

    |integral_C_i K_a E_r - w_i E_i| <= J delta w_i.

This is `gamma_cell_sampling_error`. Finite disjoint additivity proves
both that the full middle integral is the sum of its cell integrals and
that sum_i w_i=W. The finite triangle inequality and sum of the preceding
estimates prove the displayed result. No numerical quadrature error premise
or implicit infinite limit is inserted.

For a midpoint sample (u+v)/2, elementary interval arithmetic proves that
the sampling radius is (v-u)/2. This is instantiated without a geometric
mesh premise in `gamma_cell_midpoint_error`. Thus for a midpoint partition
with maximum cell width h, delta=h/2 and the outer error is at most J h W/2.
The exact cell masses return to the native tail masses through
`kernelCellMass_eq_tail_sub`; their finite enclosures are separately proved.

The immediate consumer is `primitiveArithmeticValue_weighted_enclosure`.
No new quadratic form, zero set, inner product or source carrier is defined.

## Comparison with concurrent Fourier quadrature

Main at `a788b981195fbcdb0f270983fc6190b14b549fa8` also contains
`NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFourierQuadrature.lean`.
Its retained core is a Fourier-spectrum weight times a rational digamma
partial sum, with ordinary composite midpoint sampling. The present rule
instead uses exact physical gamma-kernel cell weights and samples the
native whole-line translation energy. It reuses the physical head/tail
modules and does not import or modify that concurrent Fourier work. Equality
of the two source assemblies is not inferred from similar quadrature names;
any cross-representation verification still needs its exact source theorem.

## Hostile cases and scope

The exact-cover and disjointness assumptions are structural data to verify
for a chosen partition. Missing cells, overlaps or sample points outside
the cells cannot be silently accepted. Zero-length cells are allowed and
have zero weight. The single positive cell gives a direct nonvacuous
midpoint theorem. No assertion of a particular supplied partition or
implementation is made.

This is an OUTER quadrature theorem. E_i are still actual inner whole-line
L2 integrals. Certified evaluation of those integrals, and rounding of
weights, are separate. Since w_i>=0, independently proved energy errors
|E_i-e_i|<=eta_i would contribute sum_i w_i eta_i; approximated weights
require an additional charge. Those numerical hypotheses are not assumed
to have been supplied here. Fixed-window error bounds and finite sampling
do not establish positivity on every test or universal certificate existence.

## Source, provenance and actual evidence

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Canonical mathematical source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaWeightedQuadrature.lean`.
Source SHA-256: `7ce594020c241b9d6d7f024ac3ab5ccdbd3d7b415c40d4ca55c8aaad4bfcdfc8`. This identifies bytes, not proof validity.
Initial main readback: `69e41c27fb6ba3518728fad8d0629a564bfc68b1`.
The source reuses the unchanged gamma modules published at
`935c5ee3609bae72893c264ef33ddcfab500ee78`; the intervening main change
reported by comparison was a separate analytical phase-overlap note.
Lean: `leanprover/lean4:v4.34.1`. Mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is an elementary local consequence of the original source definitions,
not a theorem imported verbatim from a paper and not a Yang--Mills theorem.
The original convolution/complex-inner-product context is Connes, Consani
and Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
(2.1)--(2.5), with the native gamma normalization carried by the existing
`WeilGammaData`, `WeilGammaTailCompensation` and `WeilExactGammaTail` modules.
The actual definition of the native character term is authoritative:
`Re(conj(chi(n))*correlation(f,log n))`. No phase convention is inferred
merely from a citation. No third-party source code is copied.

The pinned Mathlib proof dependencies are the reverse triangle inequality,
Bochner norm/comparison and finite disjoint-union theorems, and the existing
improper exponential integral used by the native tail module. Public Mathlib
documentation was compared for the norm inequality; it is not a substitute
for elaboration against the pinned source. Repository/code searches did not
establish a corpus-wide absence of related quadrature results. No novelty
claim or new research-registry claim promotion is made; novelty `UNASSESSED`.

Status: `SOURCE_PROOF_CANDIDATE`. Written argument: supplied here and in
source. `LEAN_ELABORATION`, `FULL_DEPENDENCY_BUILD`, `FRESH_KERNEL`,
`TRANSITIVE_AXIOM_AUDIT`, `INDEPENDENT_ANALYTICAL_REVIEW`, numerical
certification and full repository validation: `NOT_RUN`.
Static text inspection/hashes do not imply any of those checks passed.
The required proof-automation skill was inaccessible at the inspected Noe
main `92b047bb11ff22692651cab71c6a4d50de6bb4f5`; dependent proof execution
was stopped. No verified local skill checkout or Lean/Lake executable was
present. No runner, scheduler or background job was dispatched.

The exact-source verification obligation is to elaborate this module and
its full native import closure at the published commit and unchanged pins,
then audit transitive axioms and literal statement correspondence. Source
publication is not acceptance evidence. Coordination and publication receipts
belong to existing [issue #1789](https://github.com/grwtsk/math/issues/1789).
