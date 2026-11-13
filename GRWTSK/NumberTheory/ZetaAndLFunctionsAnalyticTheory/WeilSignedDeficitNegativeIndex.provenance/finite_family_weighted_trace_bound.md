# WSDI-v1-03: finite_family_weighted_trace_bound

Local author: grwtsk contributors, 2026-11-12.
MSC2020 11M26, 11M41, 46E35.
Maintained Lean: ../WeilSignedDeficitNegativeIndex.lean
Fully qualified:
GRWTSK.NumberTheory.WeilQuadraticForm.SignedDeficitNegativeIndex.finite_family_weighted_trace_bound
Source proof candidate blob SHA: 5b2f39ce7fa573edeb8fc54e9f7b3f6e47468a28

## Literal statement

~~~lean
theorem finite_family_weighted_trace_bound
    {ι : Type*} (s : Finset ι) (A η : ℝ)
    (w : ℝ → ℝ) (u : ι → ℝ → ℝ)
    (hw : Integrable w volume)
    (hwu : ∀ i ∈ s, Integrable (fun ξ => w ξ * u i ξ) volume)
    (hw0 : ∀ᵐ ξ ∂volume, 0 ≤ w ξ)
    (hBessel : ∀ᵐ ξ ∂volume, (∑ i ∈ s, u i ξ) ≤ 2 * A)
    (hnegative : ∀ i ∈ s, η ≤ ∫ ξ : ℝ, w ξ * u i ξ) :
    (s.card : ℝ) * η ≤ (2 * A) * (∫ ξ : ℝ, w ξ)
~~~

## Proof and arithmetic consumer

Sum the original integral lower bounds eta<=int(w*u_i) over the
finite family s. Genuine integrability hwu allows interchange
of the finite sum and the integral. At almost every frequency,
the original pointwise Bessel bound sum_i u_i<=2A, combined
with the nonnegative actual weight hw0, gives
sum_i w*u_i<=2A*w. Integral monotonicity and scalar
linearity yield card(s)*eta<=2A*integral(w).
This proves a real analytical trace estimate, not a
finite-model positivity assertion.

In the original arithmetic consumer take w to be the EXACT
positive part of eta-fullFrequencySymbol(chi,A,xi),
and u_i(xi)=|F_fi(xi)|² for an arbitrary L2-orthonormal
family of smooth supported complex source tests. The
Bessel premise is then the genuine support factor
||1_[-A,A]*exp(i*xi*t)||²=2A. The per-test negative
integral premise follows from the ACTUAL Weil source
Fourier/Plancherel return and Qchi<=0.
These two source-specific bridges are proved in the
WRITTEN analytical companion WeilSignedDeficitNegativeIndex.md;
they are NOT Lean declarations or assumed new axioms here.
In particular the theorem has no built-in hypothesis
asserting universal positivity or a certificate existence.

For conductor-one zeta, retain both signed original
pole orientations. Their exact decomposition into a
positive cosh moment square and one negative sinh moment
square gives a +1 negative-index bound, and also an
alternative Bessel pole-trace budget. Neither zeta
bridge is silently imported into this theorem.

## Prior art, provenance, status

Primary comparison: E. Bombieri, Remarks on Weil's quadratic
functional in the theory of prime numbers, I (2000),
Rend. Lincei 11, pp.183--233, especially pp.183--185
and the variational negative-eigenvalue sections;
these arguments are classical Hilbert/trace methods,
not a claim of novelty. Physical source conventions:
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20).
Native returned definitions: LowSchur.activePrimePowers,
CharacterWindow.twistedPrime, SourcePrimeCorrelation,
FullFrequencyTail.fullFrequencySymbol and
GammaPhysicalReturn (source candidate). Exact pins:
grwtsk/math/main 83f3cdac0bb22ad41c745710d29cf79a1f1ec4de; Lean leanprover/lean4:v4.34.1;
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

SOURCE_PROOF_CANDIDATE: elaboration NOT_RUN, complete
dependency build NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, independent review NOT_RUN,
numerical certification NOT_RUN, novelty UNASSESSED.
No sorry/admit/new research axiom, imprimitive transfer,
universal sign, RH or primitive Dirichlet GRH conclusion.
