# A source-derived modulus for physical translation energy

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature.shiftEnergy_difference_le`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact Lean statement

The namespace opens in the canonical source bind all native identifiers.
The following is the literal declaration type, with the proof body omitted:

```lean
theorem shiftEnergy_difference_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R r s : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : r ∈ Icc (0 : ℝ) R) (hs : s ∈ Icc (0 : ℝ) R) :
    |energy (fun t => f (t + r) - f t) - energy (fun t => f (t + s) - f t)| ≤
      shiftEnergySlope A R L * |r - s|
```

## Mathematical statement and proof

Let A,R be nonnegative real numbers. Let f:R->C be in physical Lebesgue
L2, vanish pointwise outside [-A,A], and satisfy
|f(x)-f(y)| <= L|x-y| for a given nonnegative L. Put
E_r = integral_R |f(t+r)-f(t)|^2 dt. For every r,s in [0,R],

    |E_r-E_s| <= J |r-s|,    J=2(2A+R)L^2 R.

This is a derived modulus of the actual source, not an input certificate.
For z=f(t+r)-f(t) and w=f(t+s)-f(t), one has |z|,|w| <= LR and
|z-w| <= L|r-s|. The reverse triangle inequality and factorization give

    ||z|^2-|w|^2| = ||z|-|w||(|z|+|w|)
                  <= 2 L^2 R |r-s|.

Both shift differences vanish outside I=[-A-R,A]. Indeed a point outside I
is either above A, when both t and t+r lie above A, or below -A-R, when
both t and t+r lie below -A; the same holds for s. Therefore the difference
of squared norms is supported in the SAME I, whose Lebesgue length is 2A+R.
Each squared norm is genuinely integrable by native L2 translation invariance.
Linearity, localization and the norm-of-integral bound now give the result.

Declaration map: `squared_norm_difference_le` proves the scalar estimate;
`shiftSquare_difference_le` substitutes the actual complex source;
`shiftEnergy_difference_le` uses the existing support supplier and integrates.
The consumers are `gamma_cell_sampling_error` and, through it, the finite
weighted quadrature and the unchanged arithmetic enclosure.

## Domain, hostile cases and limitations

R=0 gives only the zero shift and J=0. A=0 forces a continuous supported
source to be zero, though the estimate itself remains correctly stated.
The support carrier is the physical real line, not a periodic quotient.
Complex-valued sources are not replaced by real sources or their moduli in
the arithmetic form. This estimate concerns an upper approximation error,
not a lower sign or coercivity estimate.

A discontinuous hard zero extension need not be globally Lipschitz and
cannot inherit this theorem. The coefficient depends on A,R,L; no uniform
bound over growing windows or unbounded source derivatives is asserted.
L2 membership remains explicit in this quantitative theorem; the earlier
compact C1 result can supply it, but a numerical Lipschitz bound still has
to be justified for a concrete input.

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
