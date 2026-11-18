# Lasso structure, conformal-net positivity, and the literal cofinal RH path

Local mathematical attribution: grwtsk contributors.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).
This is a source-specific mathematical connection and proof-obligation analysis,
not a claim that the external result or a complete RH proof has been formalized.

## 1. Exact sources and what they establish

The inspected mathematical source is `grwtsk/math@64414a25b0d624009ad0f300bcb5fdfee096e752`.
The lasso route uses the existing `SoficSingletonPrefixCapacity`,
`SoficSingletonPrefixLassoUniqueness`, `SoficCyclicMonoidCayley`,
`SoficCyclicMonoidKernel`, and `SoficCyclicMonoidIdempotentReturn` modules.
The last module's lossless cycle projection includes a quotient tag; it is not
just a projection onto the periodic states. Label recurrence remains distinct
from recurrence of a native machine's full configuration.

The external source is OpenAI, *Strongly rational unitary vertex operator
algebras and conformal nets*, September 25, 2026, catalogue result 280, at
`openai/math@4eaee87548250b2682affda7d05d947c05554bae`:

- [Main theorem and definitions](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/Strongly-rational-unitary-vertex-operator-algebras-and-conformal-nets-September-25-2026/build/main.tex), label `thm:main`, blob `203b871026eee708dd930dab0b0255b94bc3f423`.
- [Positive fusion forms](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/preprints/Strongly-rational-unitary-vertex-operator-algebras-and-conformal-nets-September-25-2026/build/05-fusion.tex), theorem `thm:positive-fusion` and identities `eq:transport-gram`, `eq:transport-positive`, blob `fdd30b2d3cd56a9a20b9dded26e47d167c570f4c`.

The exact LaTeX was inspected. The manuscript states that a simple unitary
strongly rational complex VOA has polynomial energy bounds and is strongly
local; its net is completely rational, its simple modules are unitarizable,
and its canonical fusion forms are positive. The CWX functor is a braided
unitary tensor equivalence, with the actual closed smeared-field equality,
including domains. Strong rationality includes CFT type, self-contragredience,
rationality, and finite-dimensional `V/C2(V)`. These are hypotheses to prove
for a candidate VOA, not consequences of a finite graph.

In the fusion argument, bounded creation operators give `K_ab=T_a^*T_b` in
an actual local algebra. A normal local representation preserves the positive
matrix. Exact transport identities then identify the resulting pairing with
the canonical fusion form. This is the useful methodological connection:
**positivity is returned to the intended form by an identity, not by a name or
an analogy**. This record neither re-proves nor formally accepts the manuscript.

## 2. A sharp boundary for the lasso-to-unitary step

For the lasso monoid `M_{mu,p}`, the cycle ideal is the existing group
`K_{mu,p} ~= Multiplicative (ZMod p)`. Its internal identity `e` need not be
the ambient root `1`. The new source
[SoficCyclicMonoidGroupImage.lean](../../DynamicalSystemsAndErgodicTheory/SoficCyclicMonoidGroupImage.lean)
proves as a source candidate that every group-valued monoid homomorphism obeys

`F(e)=1`, `F(e*m)=F(m)`.

For `mu>0`, it is not injective. The companion
[declaration-level record](../../DynamicalSystemsAndErgodicTheory/SoficCyclicMonoidGroupImage.md)
gives the complete cancellation proof. Thus a faithful **unitary symmetry**
can represent the cycle, not the whole stem as the same group action.
Nonunitary operators and dilations with additional memory are not excluded.

Retain the source using the existing pair `(e*m, floor(exp(m)/p))`.
The existing sharp bit-width condition is
`floor((mu+p-1)/p) < 2^b`. This bounds the auxiliary word for states of one
finite monoid. It is not a fixed-width encoding of an unbounded stage counter.
Discarding that residual can lose the original root and complete label tail.

On the cycle itself the shift is a permutation with `U^p=I`. Its regular
complex representation is unitary and has roots of unity as eigenvalues.
This does not identify them with zeta zeros. Neither the time-shift monoid nor
its kernel is automatically the full letter-transition or syntactic monoid.

## 3. A concrete lattice-VOA control, not a missing arithmetic theorem

There is a concrete model with more content than an unspecified positive space.
Take the positive even rank-one lattice `L=Z alpha`, `(alpha,alpha)=2`, and its
lattice VOA `V_L`. For `p>=1`, cyclically permute the tensor factors of
`V_L^{tensor p}`. The orbit of a fixed nonzero weight-one vector placed in one
factor, with vacua elsewhere, is a regular `C_p` representation. It supplies
an explicit cyclic-symmetry model for `K_{mu,p}`; the transient residual and
original source labels are additional data, not recovered from the symmetry.

The manuscript itself records that positive-definite even lattice VOAs and
finite tensor products were already covered by earlier comparison results.
Therefore this control is an instance of result 280, not an application that
requires its new generality. It also does not identify `C_p` with the VOA's
entire fusion category.

For `q=exp(2 pi i tau)`, let

`chi_V(tau)=Tr_V q^(L0-1/24)` and
`theta_L(tau)=sum_{n in Z} q^(n^2)`.

The standard lattice character identity is

`eta(tau) chi_V(tau)=theta_L(tau)`.

A directly inspected reference is Dominic Joyce, *Vertex Algebras*, Oxford
lectures 3-4 (2021), slide 41, equation (4.12),
[author's slides](https://people.maths.ox.ac.uk/joyce/VertexAlgebras2021/VA3%2B4.pdf).
It describes the lattice/Heisenberg graded-vector-space decomposition giving
this formula; it is not a new result attributed to this increment.

The following tensor-trace calculation is a local derivation. Let `U` be the
p-cycle on the tensor product and `L0_tot` the sum of the p energies. In a
homogeneous orthonormal tensor basis, a diagonal term of
`U q^(L0_tot-p/24)` is nonzero only when all p basis entries agree. Thus,
with convergent traces for `Im(tau)>0`,

`Tr(U q^(L0_tot-p/24))=chi_V(p tau)`.

The uninserted positive trace is `chi_V(tau)^p`; it must not be confused with
the trace with `U` inserted. Setting `tau=i t/(2p)` and multiplying by
`eta(i t/2)` recovers the exact classical theta function

`Theta(t)=sum_{n in Z} exp(-pi t n^2)`.

For `Re(s)>1`, absolute convergence and the gamma integral give

`(1/2) integral_0^infinity (Theta(t)-1) t^(s/2-1) dt`
`    = pi^(-s/2) Gamma(s/2) zeta(s)`.

Indeed the two terms at `n` and `-n` cancel the factor `1/2`, and each integral
is `Gamma(s/2)(pi n^2)^(-s/2)`; absolute summability is `sum n^(-Re(s))<infinity`.
This is an exact function-level route in the convergent half-plane. Extending
it to the repository's analytically continued source needs its continuation
and normalization correspondence, not totalized integrals outside convergence.
The theta modular identity also yields the pole-explicit continuation

`Lambda(s) = -1/s - 1/(1-s)`
`  + (1/2) integral_1^infinity (Theta(t)-1)`
`      * (t^(s/2-1)+t^((1-s)/2-1)) dt`,

away from `s=0,1`. The two pole terms are part of the source, not errors to drop.
This displayed continuation is an analytic derivation target, not a new Lean
result in this increment.

Even an exact character/Mellin identity does not prove positivity of the
original signed Weil form. Passing to the logarithmic derivative and the
explicit formula introduces prime powers and pole/gamma contributions; a
positive thermal trace is not a positive lower bound for that full expression.
For primitive Dirichlet characters, complex phases, parity, conductor, dual
characters and the nonprincipal sectors need their own exact construction.
The zeta control does not establish primitive Dirichlet GRH.

## 4. The exact cofinal consumer already in the repository

[WeilOddLiteralCofinal.lean](WeilOddLiteralCofinal.lean) defines `StageLower j` on
the **original** measurable odd real `L2` tests supported almost everywhere in
`[-(j+1),j+1]`, with its gamma-energy integrability hypothesis. Write
`Q_T(f)=shiftedOddWeilEnergy T 0 f` and `mass(f)=integral ||f||^2`.
Its physical-shift identity makes the stage statement

`Q_(j+1)(f) >= -2^(-j) mass(f)`.

Window agreement is proved for the same input; added prime powers have zero
correlation beyond the support. The gamma and both pole moments are retained.
[WeilOddCofinalCoverage.lean](WeilOddCofinalCoverage.lean) supplies
`stageLower_of_later` and `all_stages_of_cofinal`, using exactly

`Covers index := forall j, exists n, j <= index n`.

It requires successful source signs at the selected indices, not merely an
unbounded list of tasks. The final source return is already
`RealWeilSource.riemannHypothesis_of_literal_odd_stageLower`, consumed in
[WeilCertificateRootReturn.lean](WeilCertificateRootReturn.lean). That module
belongs to its isolated `WeilZetaOddCriterion`/Zeta23 environment. No root import
or dependency pin is changed here to make its short imports resolve.

The additional primitive return and character stage hypotheses in
`dirichletGRH_of_cofinal_packets` remain explicit and unsupplied.

## 5. Why a finite lasso is a component, not the cofinal supplier

The owner [WeilCofinalFiniteStateBoundary.lean](WeilCofinalFiniteStateBoundary.lean)
has namespace `GRWTSK.NumberTheory.WeilQuadraticForm.CofinalFiniteStateBoundary`.
Its new elementary source candidates are:

| Declaration | Exact statement/consumer |
| --- | --- |
| `bounded_of_equal_tails` | Equal tails at `i<j` bound a natural-valued trace by the maximum of its first j values. |
| `not_covers_of_bounded` | Such a bound contradicts the existing `Covers` predicate at `B+1`. |
| `not_covers_finite_readout` | Any fixed natural-valued observation of a finite state set fails `Covers`, regardless of the visit sequence. |
| `not_covers_of_finite_exactRoot` | Reuses `equal_tails_of_exactRoot` to exclude finite exact-prefix presentations of a cofinal natural stage trace. |
| `covers_arithmetic_laps` | `start+p*n` is cofinal for every positive p. |
| `phase_lap_reconstruct` | The original unbounded index is `n%p+p*(n/p)`. |
| `all_stageLower_of_arithmetic_laps` | Genuine literal stage signs on that progression give all stages by the existing restriction theorem. |

For the first proof, strong induction replaces every index `n>=j` by the
strictly smaller `i+(n-j)` with the same label. The maximum of the first j
labels bounds every index. This is a primary elementary proof, not a search
heuristic. A one-state constant readout is the basic hostile control.
For the constructive counterpart choose lap `n=j`; `p>=1` gives
`j<=start+p*j`. The finite control plus unbounded lap is not a finite-state
exact presentation of its full stage output. A short program generating all
indices is entirely consistent with the obstruction.

## 6. The nontrivial arithmetic bridge to construct

The immediate finite consumer is either
`OddStageCertificate.stageLower_of_lower_nonneg` in
[WeilOddStageCertificate.lean](WeilOddStageCertificate.lean), or
`CofinalFlexibleHead.stageLower_of_positiveLower` in
[WeilCofinalFlexibleHead.lean](WeilCofinalFlexibleHead.lean).
The latter takes a rational bordered lower matrix on `Fin N + Unit`, an
independently proved high floor, and the actual source comparison. The `Unit`
coordinate is the original auxiliary pole coordinate; deleting it changes the
question.

A proposed conformal construction must yield operators or vectors from the
arithmetic source and prove, for **every** real head/pole vector v, an identity
or inequality such as

`quadratic(cast lower_j,v) >= ||sum_a v_a X_(j,a) Omega||^2 >= 0`.

An exact identity is a stronger sufficient target. The vector/operator family
must be constructed independently of the desired positivity; taking the square
root of the unknown lower matrix presupposes the conclusion. Actual domains,
bounded regularizations, and normalization must be justified before using a
positive operator pairing.

In addition, the existing packet comparison requires all of:

1. The unchanged physical high floor and exact head matching.
2. Error control for the original shifted bordered trial energy.
3. Every finite intermediate residual row, including mixed terms.
4. The complete remote allowance, not a sampled or truncated tail.
5. Rationalization/rounding costs when passing from analytic Gram data to the
   rational matrix supplied to the finite checker.

For the flexible packet the paid comparison is, schematically but with its
actual fixed high-floor denominator,

`quadratic(cast lower_j,v)`
`    <= observed_j(v)-error_j(v)`
`       -(finiteGram_j(v)+remote_j(v))/(1/5)`.

All source fields in that packet retain their exact repository definitions.
The source comparison alone does not prove the lower matrix positive, and a
positive Gram matrix alone does not satisfy the source comparison. Even in
one dimension, two positive numbers can have a negative difference.

The complete proposed path is therefore:

`exact lasso -> cycle group + retained transient residual`
`  -> specified cyclic observables in a qualifying VOA [construction]`
`  -> result-280 locality/integration/fusion positivity [external theorem]`
`  -> SAME fully paid signed Weil lower form [OPEN arithmetic identity/bound]`
`  -> StageLower at all indices of a cofinal sequence [OPEN supplier family]`
`  -> all_stages_of_cofinal -> existing isolated zeta criterion -> RH`.

Result 280 can justify a positive operator-side form once its hypotheses hold.
It supplies neither the arithmetic identification nor cofinal existence of
accepted packets. `C2`-cofiniteness of a VOA is not cofinality of stage indices.
Connes fusion is not by name a spectral identification of zeta zeros. The
ordinary lattice control may validate construction/normalization while the
new generality of the paper becomes relevant only for a genuinely new
arithmetic VOA not already covered by older lattice/affine results.

## 7. Next bounded research test and evidence

Use the existing radius-two stage as a first source-exact comparison, retaining
its pole coordinate and all residuals. Construct the candidate conformal
matrix elements, compare them symbolically to the actual bordered source,
and expose the first unmatched coefficient or signed remainder. Keep the
mode-64 high-floor premise visible if using the specialized radius-two packet.
A passing finite comparison is not a cofinal sign proof. In parallel, attempt
a direct arithmetic estimate of the same remainder; it is an alternative
argument only if it does not reuse the same unproved positivity assumption.

This increment formalizes only the elementary group-image and finite-state
boundary statements. It does not formalize a VOA, a net, the manuscript's main
theorem, the lattice character/Mellin control, or the missing arithmetic bridge.
No paper theorem is introduced as an axiom. The paper-derived statements above
are individually located and have no asserted Lean declaration correspondence.
The local declarations are consequences of existing canonical source, not a
claim to have adapted the external proof. Novelty remains UNASSESSED.

Root pins remain Lean 4.34.1 and mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. New-file elaboration,
expected-type checks, fresh kernel replay, transitive axiom audit, and
independent review: NOT_RUN. No local Lean/Lake executable was available.
Recent #1832 evidence is source-bound historical evidence, not execution of
this increment. Publication and source readback do not change these statuses.
