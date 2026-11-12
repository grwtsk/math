# Source-preserving weighted arithmetic enclosure

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature.primitiveArithmeticValue_weighted_enclosure`.
MSC2020: primary 11M06; supporting 65D30, 26A42.

## Exact Lean statement

The namespace opens in the canonical source bind all native identifiers.
The following is the literal declaration type, with the proof body omitted:

```lean
theorem primitiveArithmeticValue_weighted_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v s : ι → ℝ) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I) (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ) :
    let sampled := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        energy (fun t => f (t + s i) - f t)) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := shiftEnergySlope A R L * δ * kernelCellMass (gammaParity χ) ε R
    sampled - error ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ sampled + error +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (gammaParity χ + 2 * n) R * energy f
```

## Exact arithmetic statement

Let chi be a primitive NONPRINCIPAL character modulo its true conductor q;
let kappa=gammaParity(chi), c=gammaConstant(q,kappa). Let f be the same
complex Lipschitz L2 source, zero outside [-A,A], A>=0. Choose R>0 with
R>=2A, 0<epsilon<=R, any natural n, and any finite covering disjoint cell
family with the sampling hypotheses in the literal declaration above.

With E=energy(f), P=tailPrefix(kappa,n,R), w_i=kernelCellMass(kappa,u_i,v_i),
E_i=energy(tau_(s_i)f-f), and the native signed prime expression S, set

    B = (c+P)E + sum_i w_i E_i - S,
    D = shiftEnergySlope(A,R,L) * delta * kernelCellMass(kappa,epsilon,R),
    H = headConstant(A,R,L) * epsilon^2 / 2,
    T = tailUpper(kappa+2n,R) * E.

Then the UNCHANGED native arithmetic value obeys

    B-D <= primitiveArithmeticValue(chi,primitive,nonprincipal,A,f)
         <= B+D+H+T.

All original von Mangoldt prime powers in activePrimePowers(A), the strict
support convention and Re(conj(chi(n))*correlation(f,log n)) remain in S.
No absolute-mass replacement or discarded signed residual occurs.

## Proof and consumer correspondence

The previous `primitiveArithmeticValue_twoCutoff_enclosure` gives
B_exact <= Q <= B_exact+H+T, where B_exact uses the exact middle integral
rather than the weighted sum. The newly proved finite quadrature gives
|B_exact-B|<=D, because all other terms agree literally. Therefore
B-D<=B_exact<=Q, and Q<=B_exact+H+T<=B+D+H+T. The Lean proof combines
these inequalities by linear arithmetic. It does not assume the desired
quadrature estimate: `gamma_finite_sampling_error` supplies it from the
original test and the structural partition data.

This supplies a sound enclosure consumer for finite outer sampling. A
certified B-D>=0 would certify this test's arithmetic nonnegativity; a
certified B+D+H+T<0 would certify its arithmetic negativity. A negative
lower bound alone has neither implication. Rounding and inner energy or
prime evaluation errors must be added BEFORE either numerical sign test.
The eventual explicit-formula/criterion consumer still needs its own exact
source-identification and domain theorems.

## Boundaries and falsification checks

The gamma head and far remainder are nonnegative, so H and T appear only
on the upper side. The quadrature error has no known sign and appears on
BOTH sides. Moving D to the upper side alone would create an unsound
positivity certificate. Each constant depends explicitly on the support,
shift cutoff and source Lipschitz bound. This is not a growing-window
uniform estimate and not a theorem asserting all signs are nonnegative.

The primitive nonprincipal interface cannot stand in for conductor-one
zeta. The generic a=0 kernel results remain applicable to the zeta gamma
component, but BOTH pole orientations still have to be assembled in a
complete zeta source-return theorem. No pole-neutral equivalence, RH,
Dirichlet GRH, finite-to-infinite positivity or independent review is claimed.

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
