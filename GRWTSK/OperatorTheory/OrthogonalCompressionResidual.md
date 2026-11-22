# Full residuals and the Riemann95 blank-tape history

Local source attribution is grwtsk contributors. The local Lean module is
[OrthogonalCompressionResidual.lean](OrthogonalCompressionResidual.lean),
under `GRWTSK.Analysis.OperatorTheory`. The consumer is the full-operator
certificate in [grwtsk/math #1825](https://github.com/grwtsk/math/issues/1825).
The projection identity, the bounded spectral-distance certificate, and the
spurious Ritz fixture have Lean declarations. The weighted history operator
and its spectral halting equivalence also have Lean proofs at weight two.
The observation estimates below are analytic arguments.
[Formal source and verification](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Riemann95HistorySpectrum.md)

## Projection and spectral distance

Let E be a nonzero complex Hilbert space and H a densely defined
self-adjoint operator on E. Let P be the orthogonal projection onto a finite
dimensional subspace K contained in Dom H. Define H_K = P H restricted to K,
with values in K. Since H is symmetric, H_K is Hermitian. For x in K and real
λ, write

    (H − λI)x = (H_K − λI)x + (I − P)Hx.

The first summand belongs to K and the second to its orthogonal complement.
Their inner product vanishes, so

    ‖(H − λI)x‖² = ‖(H_K − λI)x‖² + ‖(I − P)Hx‖².

This step only requires x ∈ Dom H and an orthogonal projection fixing x.
The Lean identity `norm_sub_smul_sq_eq_compression_add_leakage` takes y = Hx
pointwise, so it also permits a restricted domain and a complex scalar.

The spectral theorem gives the positive measure μ_x(S) = ⟨x,E_H(S)x⟩,
where E_H is H's spectral resolution. It has mass ‖x‖², is supported on the
real closed spectrum of H, and has finite second moment for x ∈ Dom H.
Integrating (s − λ)² gives ‖(H − λI)x‖². With d the distance from λ to
the spectrum, that integrand is at least d² on the spectrum. For unit x,

    dist(λ, σ(H)) ≤ √(‖(H_K − λI)x‖² + ‖(I − P)Hx‖²).

For an unbounded H the resolvent consists of z for which
zI − H : Dom H → E is bijective with bounded inverse into E.
Self-adjointness includes closedness here. At the root mathlib pin,
`LinearPMap` provides domains and adjoints for partial linear maps.
Its bounded spectrum API instead takes `spectrum ℂ H` for
`H : E →L[ℂ] E`, as the complement of the set where
`algebraMap ℂ (E →L[ℂ] E) z − H` is a unit. This is the API appropriate
to the bounded history operator below. For self-adjoint H the
complex spectrum is the image of `spectrum ℝ H` under the isometric
real embedding, via `hH.spectrumRestricts.algebraMap_image`.
The Lean theorem `infDist_spectrum_le_compression_residual` uses
`Metric.infDist` on this real spectrum and assumes a unit vector,
which implies that E is nonzero. Its proof uses the bounded continuous
functional calculus to transfer d² ≤ (s − λ)² into the operator
inequality d²I ≤ (H − λI)² and evaluates that inequality on x.
The unbounded certificate above is analytic.

For the fixture take H = diag(−1,1), x = (1,1)/√2 and K = span{x}.
Then Hx = (−1,1)/√2 and ⟨x,Hx⟩ = 0, so PHx = 0. At λ = 0,
the compressed residual is zero and the leakage equals Hx, of norm one.
The full spectrum is {−1,1} and its distance from zero is one, so the
certificate attains equality. The Lean declaration
`diagonal_sign_spurious_zero_ritz` verifies the unit norm, zero projection,
and unit full residual.

## An operator from the literal 95-state run

Use the transition table `Machines.riemann95` and its full
`step machine : Cfg 95 2 → Option (Cfg 95 2)`. Define, for each n ∈ ℕ,

    c_n   : Option (Cfg 95 2) := Riemann95.nSteps n ConjectureMachines.init
    v_n   := 1 if c_n is some, and 0 otherwise
    χ_n   := v_(n+1).

The initializer is state zero on the all-blank tape. By induction through
`Option.bind`, `nSteps (n+1) init = (nSteps n init).bind (step machine)`.
In particular v_0 = 1, live indices form a prefix, and χ_n certifies the
literal transition from the time-n to the time-(n+1) configuration.
The time label is part of each history vertex. If two configurations
coincide, their distinct visit times keep their histories distinct.
Every bounded prefix is determined by finitely many table steps.

At the Cryptids pin, `Halts Riemann95.candidate` is the domain predicate of
`StateTransition.eval (step Riemann95.machine) ConjectureMachines.init`.
By `Part.dom_iff_mem` and `StateTransition.mem_eval`, this is equivalent
to reachability of a configuration with a missing next step. Induction on
`StateTransition.Reaches` gives a finite `nSteps` witness. Conversely,
induction on the number of steps, or
`BootCertificate.nSteps_eq` followed by `Zf380.nSteps_reaches`,
gives reachability. Hence halting is equivalent to

    ∃ (n : ℕ) (c : Cfg 95 2),
        nSteps n init = some c ∧ step machine c = none.

This equivalence was also checked locally at the Cryptids pins. The
construction uses all literal steps, including the 3,634 steps certified
by `BootCertificate.boot_reaches_initialRoot`. The stage theorem
`physical_stage_outcomes` applies at a stage root with padding P ≥ M+21.
It advances a safe stage M to M+1 in finitely many positive steps, with
increased padding, and reaches a terminal configuration on the source
predicate `Riemann120.ShuniaCounterexample (M+2)`. Those stage boundaries
describe subsequences of the operator's time indices. The stage theorem
supplies no fixed number of literal steps per stage.

Fix a real a > 1, for example a = 2. On all of E = ℓ²(ℕ;ℂ), set

    (Bx)_n = χ_n (x_(n+1) − a x_n) + (1 − v_n) x_n,
    H_R95 = B* B.

Here `B*` is the Hilbert space adjoint. The coordinates before a terminal
vertex are rows of the weighted difference. At the terminal vertex there
is no outgoing row. Coordinates after the terminal vertex carry the
identity, so absent configurations cannot create additional zero modes.
There is no incoming edge at n = 0. The active sector is the entire
unfolding from the exact blank initializer. Configurations outside that
unfolding cannot affect this halting predicate.

The shift Sx = (x_(n+1)) is contractive. On the active coordinate subspace,
B is the restriction of S − aI followed by projection to the rows
corresponding to active edges. On the orthogonal complement it is the
identity. Consequently ‖B‖ ≤ a+1, so H_R95 is a bounded positive
self-adjoint operator with domain all of E and ‖H_R95‖ ≤ (a+1)².
Using mathlib's `ℓ²(ℕ, ℂ)`, the operator and equivalence have types

    H_R95 : ℓ²(ℕ, ℂ) →L[ℂ] ℓ²(ℕ, ℂ)
    zero_in_spectrum_iff_halts :
      (0 : ℂ) ∈ spectrum ℂ H_R95 ↔ Halts Riemann95.candidate

If the terminal configuration occurs after T transitions, Bx = 0 forces
x_(n+1) = a x_n for n < T, permits the terminal value determined by that
recurrence, and forces x_n = 0 for n > T. Thus ker B = ker H_R95 is
one-dimensional, spanned by (1,a,…,a^T,0,…). Zero is an eigenvalue.
The squared overlap of the normalized kernel vector with the blank
coordinate e_0 is (a²−1)/(a^(2(T+1))−1), positive for every finite T and
exponentially small for late termination. For T ≥ 1 the T nonzero
active eigenvalues are a²+1−2a cos(jπ/(T+1)), 1 ≤ j ≤ T, each simple.
Indeed the active edge Gram matrix B_act B_act* has diagonal a²+1
and off-diagonal −a. Sine vectors at angles jπ/(T+1) diagonalize it
with zero boundary values at both ghost indices, and the positive
eigenvalues transfer to B_act* B_act by B_act*. An active eigenvalue
equal to one can coincide with the inactive eigenvalue one, without
affecting the multiplicity of zero.

If the machine never halts, B = S − aI and
‖Bx‖ ≥ (a−1)‖x‖ by the reverse triangle inequality. Therefore
⟨x,H_R95 x⟩ ≥ (a−1)²‖x‖² and
‖H_R95 x‖ ≥ (a−1)²‖x‖ by Cauchy–Schwarz. Self-adjointness and the lower
bound give closed range and trivial orthogonal complement of the range,
hence surjectivity and a bounded inverse. As a direct check, B is
invertible via −a⁻¹ Σ_(k≥0) (S/a)^k in operator norm, therefore B*B
is invertible as well. This proves both directions analytically.
For an infinite run the spectrum is exactly [(a−1)²,(a+1)²].
The preceding lower and upper bounds give containment. For
s = a²+1−2a cos θ, the unit vector with coordinates m^(−1/2)e^(inθ)
on {2,…,m+1} and zero elsewhere has residual at s of norm at most
2a/√m for m ≥ 2. The interior rows satisfy the eigenvalue equation
and only the two endpoints and their exterior neighbors contribute.
Thus every point of the interval belongs to the spectrum.

To encode the entire configuration relation, one may retain a copy
of this construction for each possible start configuration c. The
configuration set is countable since its tapes are pairs of quotients
of finite symbol lists together with a scanned symbol. Define B_c
using `nSteps n c` and take the orthogonal direct sum of B_c* B_c + I
over c different from the blank initializer, together with the
unshifted blank block H_R95. Every native transition out of a
configuration c appears at time zero in its own block. The extra
blocks are uniformly bounded by (a+1)²+1 and uniformly bounded
below by I, so the direct sum is bounded self-adjoint on its whole
space and the extra blocks cannot put zero in its spectrum. The
blank block decides the same source-return equivalence.

The pinned Cryptids `Semantics.halts_candidate_iff_not_riemannHypothesis`
then identifies the spectral test with failure of `_root_.RiemannHypothesis`.
The lower bound (a−1)² is conditional on the infinite run. A uniform
positive lower bound for this fixed H_R95 would exclude the terminal
kernel and would imply RH. The existing `ChebyshevBand.BandBound` route
could exclude that kernel if supplied with a universal band bound.

## Compressions and observation errors

Let P_N keep the coordinates 0 through N, Q_N = I − P_N, and
H_N = P_N H_R95 restricted to the retained coordinates. With χ_(−1) = 0,
H_R95 has diagonal d_n and adjacent off-diagonal b_n given by

    d_n = a² χ_n + χ_(n−1) + (1 − v_n)
    b_n = H_(n,n+1) = H_(n+1,n) = −a χ_n.

These entries follow by expanding the inner product of the columns of B.
The diagonal entry at N includes a² χ_N from the outgoing edge even
though the other vertex is outside the window. Forming the Gram operator
after dropping the outgoing edge loses that term. The correct H_N is
obtained by calculating through c_(N+1), and the H_N are nested principal
compressions. For x in the window,

    Q_N H_R95 x = −a χ_N x_N e_(N+1).

The generic residual certificate for this model has exact leakage
a χ_N |x_N|. The bound a |x_N| also works if the outgoing edge is
unobserved. If every index through N+1 is live, the compression matches
the corresponding compression of (S−aI)*(S−aI) and has gap (a−1)²
as a lower bound. The actual bootstrap proves this hypothesis for
every N ≤ 3,633. The same observations through N+1 are compatible with
a later terminal vertex in a general deterministic history. Thus a gap
estimated only from those entries cannot distinguish the two histories.
For bounded H_R95, a common lower bound on all the compressions would
extend to E by density of finite support. The quantifier in that criterion covers all windows.

Indeed, in the class of finite-or-infinite paths the length-T halted
operators converge strongly to the infinite operator as T tends to
infinity. For each finitely supported vector their actions eventually
agree exactly, and the uniformly bounded norms extend convergence to
every vector. Yet zero belongs to the spectrum of every halted
operator and its distance from the infinite spectrum is at least
(a−1)². The normalized terminal vectors converge weakly to zero
because every fixed coordinate tends to zero and their norms are one.

For a finite solver with unit trial vector x, let A_N be an approximate
Hermitian tridiagonal compression and let λ̃ be the solver's trial value.
If diagonal errors are at most δ_d and retained off-diagonal errors at
most δ_b, then Δ_N = δ_d + 2δ_b bounds ‖H_N − A_N‖ by the diagonal
norm and the two contractive shifts. This quantifies the readout
contribution once its coefficients are certified against c_0 through
c_(N+1). Direct use of the exact source gives Δ_N = 0. For a target λ
with certified scalar error η = |λ̃−λ|, and
r_s ≥ ‖(A_N−λ̃I)x‖, the direct estimate is

    dist(λ, σ(H_R95)) ≤ √((r_s + Δ_N + η)² + (a χ_N |x_N|)²).

Here r_s is a finite solver tolerance. An arithmetic surrogate that
supplies coefficients or trial values owes the corresponding Δ_N or η
bound against the original source. The Shunia stage predicate describes
when the run terminates, while the above coefficients use literal
instruction times and cannot be inferred from a count of stages.

The complex phase and heat channels can also certify a residual with
separate error terms. Put L = (a+1)², λ ∈ [0,L], and 0 < |ε| ≤ π/L.
For s in [0,L],

    |e^(iεs) − e^(iελ)| ≥ (2|ε|/π)|s−λ|.

This follows from the chord formula and concavity of sine on [0,π/2].
Hence the vector residual of e^(iεH_R95) at e^(iελ), measured in complex
amplitudes, bounds the generator residual after multiplication by
π/(2|ε|). If λ̃ and λ are compared by this phase channel on [0,L], a
scalar chord error η_phase gives η ≤ πη_phase/(2|ε|).
A measured norm ‖P e^(iεH)x‖ alone is constant when P commutes with H
by unitarity.

For heat with time t > 0, the mean value theorem gives
|e^(−ts)−e^(−tλ)| ≥ t e^(−tL)|s−λ| on [0,L]. Thus the full heat
residual bounds the generator residual with gain e^(tL)/t. A scalar heat
target with certified error η_heat gives η ≤ e^(tL)η_heat/t. For either
phase or heat, suppose also 0 ≤ A_N ≤ LI and u is a certified approximate
action of A_N on x. An explicit bound on the full functional residual is

    ‖u − z x‖ + δ_solver + δ_Euler + δ_target
      + |s| Δ_N
      + a χ_N ∫_0^|s| |(F_N(r)x)_N| dr,

where z is the supplied scalar target, δ_target bounds its discrepancy
from the exact phase or heat scalar, and δ_solver bounds error in the
computed finite action. For phase use s = ε and F_N(r) =
exp(i sign(ε) r H_N), with δ_Euler = 0 for an exact exponential model.
For heat use s = t and F_N(r) = exp(−r H_N). With m ≥ 1, m ≥ tL,
explicit Euler on A_N adds δ_Euler ≤ t²L²/(2m). To see this, on each
spectral value the one-step exponential and Euler multiplier differ by
at most (tL/m)²/2 by the integral Taylor remainder. Their powers are
contractions, so telescoping multiplies this error by at most m.
This is the one-generator case of the multiplier error estimates in
`FiniteEulerHeatRecovery`.

The |s|Δ_N term follows from Duhamel's formula with the two contractive
heat semigroups or the two unitaries. For the infinite tail, apply
Duhamel again to H_R95 and its block diagonal part P_N H_R95 P_N +
Q_N H_R95 Q_N. Starting in the retained block, their difference acts as
−a χ_N (F_N(r)x)_N e_(N+1) along the finite evolution, giving the
integral above. The coarse bound a χ_N |s| follows from ‖x‖ = 1.
The integral is a bound in terms of the exact finite evolution and
requires its own upper certificate if replaced by numerical quadrature.
Multiply the total bound by the corresponding phase or heat gain to
bound the distance to the actual full spectrum.

## Hostile checks and remaining arithmetic input

- For H e_n = e_n/n on ℓ²(ℕ_{≥1}), the compression on the first N
  basis vectors has minimum eigenvalue 1/N. The unit vectors e_n have
  full residuals going to zero at λ = 0, so zero belongs to the spectrum.
- The unweighted half-line difference S−I sends each normalized indicator
  of {0,…,m−1} to a vector of norm 1/√m. The associated Gram operator
  sends those vectors to zero in norm in the limit and has trivial
  kernel, since a constant ℓ² sequence vanishes. Its range is dense by
  self-adjointness, so zero is in the continuous spectrum even for an
  infinite run. For a finite run the unweighted constant is a zero
  eigenvector. Positivity of either Gram operator holds in both cases.
- For globally irrational ε₂/ε₁ and ε₁ ≠ 0, the two-phase map is exactly
  injective, as in `PrismaticEigenphase.two_channel_injective_of_irrational`.
  At λ_q = 2πq/ε₁ the first phase equals the phase at zero. Dirichlet
  approximation gives unbounded positive q and integers p with
  |q ε₂/ε₁−p| → 0, so the second phases approach each other too.
  The single-channel chord estimate on [0,L] gives the bounded-window
  stability above without a global inverse.
- If two distinct configurations have the same successor, sending
  their orthonormal basis vectors to the same successor would change
  their inner product from zero to one. The operator here is a Gram
  operator on time-indexed histories. Its unitary exponential is an
  observation channel. Literal transition semantics are retained by
  `nSteps`, and no unitary implementation of the transition is required.
- The inactive coordinates explicitly have eigenvalue one. An additional
  unobserved zero direct summand would defeat spectral exclusion from
  the blank coordinate. Within the active sector every adjacent link
  has coefficient −a, so successive powers of H_R95 on e_0 reach each
  active basis direction by induction. The late-halt overlap above still
  rules out a uniform lower bound on boundary visibility of a zero mode.
- `FilteredPrismaticWalk.filterValidatedWalk_sound` concerns validated
  finite walks over hypothetical inputs. The finite diagonal
  `SpectralResidual.sum_weighted_separation` bound applies to an actual
  diagonalization of H_N. The complement formula here plays the role of
  `weightedFiniteDirac_leakage_outside` using the tape transition instead
  of knot incidence. `SourceResidualEvolution.sourceResidual_evolution`
  and `source_residual_vanishes` would need an actual channel
  identification and the stated forcing and contraction hypotheses.
- The source series in `WeilGammaPhysicalReturn` retain arithmetic
  information absent from this history energy. For two real quadratic
  forms Q and Q+D, omitting any term D that is negative on an admissible
  test can turn a zero direction of Q into a rejected direction of Q+D.
  A relative phase is likewise indispensable when there are mixed
  terms. The positive semidefinite form |u+v|² takes values 4 and 0
  on (1,1) and (1,−1), whose squared coordinate moduli coincide. These
  fixtures test the inference from an incomplete observable to an
  all-test sign. For any finite family of tested admissible directions,
  a nonzero linear functional ℓ on the admissible test space can
  vanish on their span and be nonzero on some direction g outside
  that span. Subtracting C|ℓ|² with C sufficiently large preserves
  the tested values and makes the new form negative on g.
  The actual `zeta_hasSum_physical_arithmetic` formula contains both W(0) and W(1), the gamma constant and correction, and
  the signed sum over `activePrimePowers A`. The primitive nonprincipal
  `primitive_hasSum_canonical_arithmetic` keeps the inverse character in
  its arithmetic value and weights W(ρ) by each complex zero's
  multiplicity. Take a smooth nonnegative bump supported on [−A,A]
  and positive on (−A,A), with A > log(4)/2. Its correlation
  at log 4 is strictly positive by overlap of the two translated
  supports. Omitting the 2² term changes the zeta arithmetic value
  by log(2) times this correlation. Multiplication of the bump by
  exp(iπ t/log 4) preserves its modulus and flips the correlation
  at log 4. For the original bump both pole terms W(0) and W(1) are
  positive because the correlation is nonnegative and positive near
  zero. For shifts r > 2A the gamma correction still has positive
  density since the shifted and original bumps have disjoint
  supports and the parity kernel is positive. For any fixed complex
  ρ, a sufficiently narrow positive bump gives Re W(ρ) > 0 by
  restricting the correlation support to where cos(Im(ρ)r) > 0.
  Dropping a multiplicity in that summand changes its value.
  A Weil positivity argument still requires a source-exact comparison
  that retains the prime powers, gamma/parity, conductor and character
  phases, both zeta poles, complex zero multiplicities, and infinite tails.

## Source and evidence

The relevant sources were inspected at math main
`ba49b45f3cb69c396412a08a51b4939ad1e03461` and checked for changes
through `4284fae2acbcf9e6c6e652e9b8258ec09246937b`, tree
`0048ae97550abe0d693c4e0e8d8e47dbc86ccfd5`.
Root Lean is `v4.34.1`, with mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The isolated source is Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC,
Apache-2.0. It uses `v4.35.0-rc4` and mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`.

- The literal transition table has Git blob
  `d6f841a883bcf826d1fbdbd1c66497e072231c55`. Its interpreter and
  initializer are in `Cryptids/Machines.lean`, blob
  `345a59a2133776d937507536b4a07667c11e299b`.
  [Interpreter and initializer](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean)
- `Cryptids/Riemann95Definition.lean` gives `nSteps`, blob
  `cabc27cb96a7eecdfb8254e98c8dc0a9c9144a38`.
  `Bootstrap95.lean` has blob `3c6eae70196edf6d1beb66c06d7b481e2acdf387`
  and `Stage95.lean` has blob `096aeffc26350ca0fb65ac3683f7405b1ebcdfdb`.
  [Step recurrence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean)
  [Bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean)
  [Stage outcomes](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean)
- The halting-to-counterexample theorem is in `Cryptids/Riemann95.lean`,
  blob `3fd86d0b954485707b620846f36ccd98d5ba970f`. The final arithmetic
  return is in `Cryptids/Semantics/Riemann95.lean`, blob
  `476d1101cb827e1a29ce61232d2e7b8b0727fecf`.
  [Counterexample equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean)
  [RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean)

The local Lean module has Git blob `21a37ef5f3fd68f4230f7e36983b6ea052e532be`.
The targeted Lake build, `lake env lean -DwarningAsError=true --trust=0`,
and `lake env leanchecker GRWTSK.OperatorTheory.OrthogonalCompressionResidual`
passed. The transitive `#print axioms` report for the four theorems contains
exactly `propext`, `Classical.choice`, and `Quot.sound`.

At the isolated Cryptids pins, the scratch module `Issue1825SourceTerminal`
(Git blob `eb7a4b2fc79e34335e1fcc59867319dad3174d33`) checked the
`nSteps` successor recurrence and terminal equivalence. It passed
`lake env lean -DwarningAsError=true` with olean output and a targeted
`leanchecker` run on that olean. The recurrence uses `propext` and
`Quot.sound`. The terminal equivalence also uses `Classical.choice`.
Exact integer evaluations of the model's stencil checked the diagonal
and off-window entries at cutoffs 0 through 6 with terminal indices
0, 1 and 4 and with no terminal vertex.

The weight-two history operator and the spectral equivalence are
formalized locally in the isolated Cryptids environment. Lean formalization
and kernel replay of the exact spectral interval, unbounded spectral-distance
estimate, and observation bounds are `NOT_RUN`. Independent analytic review
and numerical certification are `NOT_RUN`.
[Formal source and verification](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Riemann95HistorySpectrum.md)
