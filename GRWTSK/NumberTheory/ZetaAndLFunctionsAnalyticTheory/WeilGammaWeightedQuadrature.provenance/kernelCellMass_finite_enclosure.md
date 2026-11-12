# Exact positive gamma cell weights and two-endpoint enclosures

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature.kernelCellMass_finite_enclosure`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact Lean statement

The namespace opens in the canonical source bind all native identifiers.
The following is the literal declaration type, with the proof body omitted:

```lean
theorem kernelCellMass_finite_enclosure (a n m : ℕ) {u v : ℝ}
    (hu : 0 < u) (huv : u ≤ v) :
    max 0 ((tailPrefix a n u - tailPrefix a m v - tailUpper (a + 2 * m) v) / 2) ≤
        kernelCellMass a u v ∧
      kernelCellMass a u v ≤
        (tailPrefix a n u + tailUpper (a + 2 * n) u - tailPrefix a m v) / 2
```

## Mathematical statement and proof

For a natural a put K_a(r)=exp(-(a+1/2)r)/(1-exp(-2r)). For real 0<u<=v,
let w_a(u,v)=integral_(u,v] K_a(r) dr. The native kernel is nonnegative and
integrable on (u,infinity), as proved by `WeilExactGammaTail`. Disjoint
additivity on (u,v] union (v,infinity) gives EXACTLY

    w_a(u,v) = (tailMass(a,u)-tailMass(a,v))/2 >= 0.

For every pair n,m of natural prefix lengths, write P_u=tailPrefix(a,n,u),
P_v=tailPrefix(a,m,v), U_u=tailUpper(a+2n,u), U_v=tailUpper(a+2m,v).
The native finite tail enclosure says
P_u < tailMass(a,u) <= P_u+U_u and
P_v < tailMass(a,v) <= P_v+U_v. Subtract these intervals in the correct
orientations and divide by two. This gives

    max(0,(P_u-P_v-U_v)/2) <= w_a(u,v)
    w_a(u,v) <= (P_u+U_u-P_v)/2.

The lower bound must charge the UPPER error at v; the upper bound must
charge the UPPER error at u. Deleting either endpoint error invalidates
interval subtraction. The exact weights, rather than point samples of a
singular kernel, are consumed by `gamma_cell_sampling_error` and the finite
rule. All rates and both genuine parities are retained. The recurrence's
indices a+2n and a+2m are auxiliary rates, not new character parities.

## Hostile cases and limitations

u=0 is excluded: K_a has a nonintegrable singularity there. That excluded
piece is handled by the DIFFERENT source density head budget, which uses
cancellation of the shift difference. When u=v the exact cell mass is zero;
the displayed non-strict enclosure remains valid for every n,m, including
empty prefixes. Very narrow cells can suffer subtraction cancellation;
the enclosing theorem stays valid but may be numerically inefficient.

The finite prefixes contain exact real exponentials. This theorem is not
an implementation of outward-rounded exponential evaluation. A numerical
cell-weight certificate must include such rounding and all arithmetic
operations; positivity of these weights is not positivity of the whole
Weil form. This is physical translation truncation, not Fourier cutoff.

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
