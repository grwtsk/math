# The submitted prime-sum route and its connection to RH

grwtsk contributors

This exposition reconstructs a mathematical route visible in the submitted Lean source at revision `a172c464fd4bcfc4f53e394dcba45d742b1409a6`. It distinguishes the statements written in that source from independently checked mathematics. The source ends with the actual Mathlib target `RiemannHypothesis` and corresponding statements for Dirichlet L-functions. Inspection of those declarations does not establish the validity of every imported proof. The arithmetic construction and full replay remain the decisive acceptance obligations.

## 1. Start with the exact arithmetic quantity

Write \(\Lambda(n)\) for the von Mangoldt function and \(\gamma\) for Euler's constant. The source defines

\[
S_\zeta(x)=\sum_{1\le n\le\lfloor x\rfloor}
 \Lambda(n)\left(\frac{x}{n}-1\right),
\qquad
G_\zeta(x)=S_\zeta(x)-x\log x+(1+\gamma)x.
\]

The summation is over a finite interval of natural numbers. For fixed \(x\), the weight decreases as \(n\) increases and is zero at \(n=x\) when \(x\) is an integer. The main terms are subtracted with exactly the displayed signs. These definitions are `Formalism.Sz` and `Formalism.Gz` in [StatementOC.lean][statement].

The independently derived finite identity in [SmoothedMangoldt.lean](../MultiplicativeNumberTheory/SmoothedMangoldt.lean), with its [source and proof record](../MultiplicativeNumberTheory/SmoothedMangoldt.md), concerns, for a sequence \(a_n\),

\[
S_a(N)=\sum_{n=1}^{N}a_n(N/n-1).
\]

Taking \(a_n=\Lambda(n)\) identifies the *uncentered finite sum* with the source's \(S_\zeta(N)\). This gives a concrete mathematical consumer for exact summation identities and their error estimates. It supplies no bound on the centered quantity \(G_\zeta\), and does not supply the character-family estimate used below. In particular, recovering partial sums by differences must retain the error amplification from those differences.

The continuation [SmoothedMangoldtWindows.lean](../MultiplicativeNumberTheory/SmoothedMangoldtWindows.lean)
now proves a wider-window return, with a [complete source record](../MultiplicativeNumberTheory/SmoothedMangoldtWindows.md).
For `0<h<N`, upper centered observations at `N-h` and `N+h` and a lower
centered observation at `N` imply
\(|\psi(N)-N|\le h+(2N+h)E/h\), with every error cost retained. It uses
the nonnegativity of the actual von Mangoldt coefficients. A one-sided
upper estimate alone does not provide its central lower observation, and
the character-family coefficients do not automatically satisfy its
positivity hypothesis. This finite transfer is therefore distinct from
the Landau-window deduction below.

## 2. The central estimate concerns a weighted character family

The source works with primitive Dirichlet characters, including the trivial primitive character of conductor one. To avoid confusion with the von Mangoldt function, call its `Level` object \(\mathcal L\). It contains a finite set `KEPT`, includes the trivial character, and is closed under taking inverse characters.

For a nontrivial character \(\chi\), the complex-valued arithmetic function is

\[
g_\chi(x)=
\sum_{1\le n\le\lfloor x\rfloor}
\Lambda(n)\chi(n)\max(x/n-1,0)
+x\frac{L'(\chi,1)}{L(\chi,1)}.
\]

For the trivial character, `An.gChi` uses the separate zeta expression `An.G`. The source's `Gz_eq` identifies `An.G` with \(G_\zeta\), including the apparently different positive-part weight; the weights are nonnegative on the specified summation interval. These distinctions are explicit in [Analytic.lean][analytic] and [GzEq.lean][gzeq].

The actual family sum is

\[
G_{\mathcal L}(x)=G_\zeta(x)+
\sum_{\chi\in\mathrm{KEPT}\setminus\{1\}}
w_\chi\operatorname{Re}g_\chi(x).
\]

Its weights are \(w_\chi=1\) when the optional distinguished character equals \(\chi\), and \(w_\chi=(3o+1)^{-1}\) otherwise, where \(o\) is a natural-number field of the level object. They are strictly positive. The zeta contribution has coefficient one. These are exactly `Level.wt`, `Level.Nt`, and `Level.Gm` in [ExplicitFormulaErrorOfHostConditions.lean][level]. `level_family` in [LevelFamily.lean][family] identifies this sum with the one used in the subsequent analytic criterion.

The required estimate is a **one-sided upper bound**:

\[
G_{\mathcal L}(x)
\le x^{\,1/2+(e_D+e_L+7)\varepsilon}.
\tag{1}
\]

It is not an absolute-value bound. Nor is it merely a bound on \(G_\zeta\), an unsigned energy, or a finite Gram matrix.

## 3. Quantifiers supply the strength

For a set \(S\subseteq\mathbb R\), the source defines

\[
\operatorname{HasWindows}(S,\lambda)
\iff
\forall y\in\mathbb R\;\exists Y\ge y\;
\forall x\in[Y,Y^\lambda],\ x\in S.
\]

The consuming theorem requires \(\lambda>1\). Since the lower threshold \(y\) is arbitrary, it can include every needed cutoff and \(1\); the intervals then provide arbitrarily late, growing ranges. See [Window.lean][window].

The construction must provide fixed constants \(e_D,e_L\) and \(\varepsilon_1>0\), and then, **for every** \(0<\varepsilon<\varepsilon_1\), a suitable arithmetic family with these windows and all the hypotheses needed for (1). Constants cannot silently change with the zero being excluded in a way that destroys the small-\(\varepsilon\) argument. This requirement is `ChebyshevInequalityAtWindowScale`; the estimate itself is `ChebyshevInequalityOnWindows` in [TopWin.lean][topwin].

The source does not obtain this uniform existence statement from a finite sample. Its arithmetic side must construct the families, identify their character values with the actual L-functions, and control divisibility, losses, and the remaining errors.

## 4. From a small error exponent to nonvanishing

Suppose a retained character has a zero \(s\) with \(\sigma=\operatorname{Re}s>1/2\). Set

\[
\delta=\min(\sigma-1/2,1/2)>0.
\]

Choose \(0<\varepsilon<\varepsilon_1\) small enough that
\((e_D+e_L+7)\varepsilon\le\delta/2\). Such a choice exists for any fixed real coefficient; `exists_small_eps` explicitly supplies it. Equation (1) then gives

\[
G_{\mathcal L}(x)\le x^\theta,
\qquad \theta=1/2+\delta/2,
\]

on arbitrarily late power windows. Here \(0<\theta<1\) and \(\theta<\sigma\).

The source's Landau criterion says that these upper bounds exclude every retained L-function zero with real part greater than \(\theta\). Applying it contradicts the proposed zero. The concrete endpoint is `level_of_tiedWin` in [TopWin.lean][topwin]. Its analytic input is supplied through `formB` and `zeroFree_of_rpow_window`: the latter assumes, for fixed \(\delta'>0\), an upper bound \(C x^\theta\) on arbitrarily late intervals \([Y,Y^{1+\delta'}]\), and concludes the corresponding zero-free region. See [ZeroFreeOfRpowWindow.lean][landau].

This explains why control arbitrarily close to exponent \(1/2\) matters. A fixed positive loss would exclude zeros only to the right of a wider line. The quantifiers and the uniform arithmetic construction carry the improvement to the critical line.

### How the one-sided Landau argument works

A deeper source inspection makes the analytic mechanism explicit. The
following reconstruction uses the source's named analytic lemmas; it is
not a report of their full kernel replay or an independent verification
of all their dependencies.

Set \(g(u)=G_{\mathcal L}(e^u)\). The source constructs a meromorphic
function \(\Phi\) whose right-half-plane representation is

\[
\Phi(s)=\int_0^\infty g(u)e^{-su}\,du,
\qquad \operatorname{Re}s>2.
\]

For a nontrivial character, the corresponding transform is

\[
-\frac{L'(\chi,s)/L(\chi,s)
       -sL'(\chi,1)/L(\chi,1)}{s(s-1)}.
\]

The zeta branch regularizes its pole at one separately. A zero \(\rho\)
of multiplicity \(m\), with \(0<\operatorname{Re}\rho<1\), contributes
the residue \(-m/[\rho(\rho-1)]\). Taking the real character sum pairs
each character with its inverse. At a zero of the resulting family, the
residue therefore has the form

\[
-\frac{M_\rho}{\rho(\rho-1)},\qquad
M_\rho=\frac12\sum_i a_i
 \bigl(m_{\chi_i}(\rho)+m_{\chi_i^{-1}}(\rho)\bigr)>0.
\]

This explains a concrete use of the positive weights: the multiplicity
coefficient cannot cancel. For a real zero \(0<\rho<1\), the residue is
positive as a real number. The construction and the actual multiplicity
argument are in [poleData.lean][poledata]. These pole facts are additional
structure; a generic real function with a small one-sided upper bound
need not encode any zero exclusion.

For \(\sigma>2\), differentiation of the transform gives the normalized
moments

\[
A_k(\gamma)=\frac{(-1)^k}{k!}\Phi^{(k)}(\sigma+i\gamma)
=\int_0^\infty g(u)\frac{u^k}{k!}
  e^{-\sigma u}e^{-i\gamma u}\,du.
\]

The weight \(u^ke^{-\sigma u}/k!\) is nonnegative. If \(R\ge0\) and
\(g\le R\) on a window, the pointwise inequality
\(|g|+g\le2R\) controls
\(\lVert A_k(\gamma)\rVert+\operatorname{Re}A_k(0)\), with a separate
cost for the complement of the window. The source's `PoleData` also
supplies the global bound \(|g(u)|\le C_0e^{2u}\) for \(u\ge0\), which
controls that complement. This retains the sign of the
real-center moment; it does not replace the hypothesis by an unproved
absolute bound on \(g\). See [landauWindowIneq.lean][windowineq].

Under \(x=e^u\), a power window becomes \([U,(1+\delta)U]\). A bound
\(G_{\mathcal L}(x)\le Cx^\theta\) gives a nonnegative majorant whose
window integral against \(e^{-\theta u}\,du\) is at most
\(|C|\delta U\); this is eventually
at most \(e^{\eta U}\) for every \(\eta>0\). The source's tail estimates
choose a suitable \(\sigma\) and an integer \(k\ge U\) so that the
outside contribution is small. They yield

\[
\lVert A_k(\gamma)\rVert+\operatorname{Re}A_k(0)
\le \frac{C_1e^{\eta U}}{(\sigma-\theta)^k}.
\]

The exact quantifier order is: a suitable fixed \(\sigma,C_1\), then
every \(\eta>0\), then arbitrarily large \(U\) and a suitable \(k\ge U\).
The selected \(k\) is not claimed to range over every natural number.
The coefficient, tail, and assembly lemmas are [LandauCoeff.lean][coeff],
[landauTails.lean][tails], and [landauWindow.lean][landauwindow].

Finally, suppose a pole lies to the right of \(\theta\). The source uses
a geometric dichotomy: either isolate a positive-residue real pole, or
isolate a pole near a shifted center while the real-center term is
analytic on a larger disk. Pole expansions and Cauchy bounds then force
an inequality of the shape

\[
\frac{c}{d^k}
\le \frac{M}{e^k}+\frac{C_2e^{\eta U}}{E^k},
\qquad c>0,\quad 0<d<e\le E=\sigma-\theta,\quad k\ge U.
\]

Choose \(0<\eta<\log(e/d)\). Since \(U\le k\), the right side is at
most a constant times \(e^{\eta k}/e^k\), which is asymptotically smaller
than \(c/d^k\). Arbitrarily large windows give the contradiction.
This is the exponential separation in [LandauGrowthContra.lean][growthcontra].
The differentiation, tail localization, and pole-isolation lemmas remain
part of the submitted proof's verification obligations.

## 5. Where the arithmetic proof must be checked

The inspected chain has the following concrete interfaces:

| Interface | Mathematical obligation |
|---|---|
| `CoreAtH` | Produce arithmetic data and exact character identities, together with size, thin-scale, cost, and remainder bounds. |
| `core_gm` | Derive (1), eventually in \(x\), from `CoreAtH` and the analytic compatibility conditions `EAtH`. |
| `ChebyshevInequalityAtWindowScale` | Supply suitable families for every sufficiently small positive \(\varepsilon\), with fixed loss exponents and arbitrarily late power windows. |
| `level_of_tiedWin` | Convert those bounds into nonvanishing right of \(1/2\). |
| `everyCharacter` | Supply this nonvanishing for all Dirichlet characters. |
| `rh_of_every` | Specialize to zeta and transport zeros by the functional equation. |

`CoreAtH` includes `HostAddCharCompatible`, which identifies a constructed character readout with the actual logarithmic derivative \(L'/L(1)\). `core_gm` then retains the exponent costs. See [CoreAtH.lean][core] and [CoreGm.lean][coregm].

The higher-level assembly invokes theta integrals, local matching, covolume bounds, automorphic and Galois data, and arithmetic window constructions. One quantitative interface, `VWin`, requires weighted bounds on finite `shaLen` quantities for \(1\le e<\lfloor x^{401}\rfloor\), bounded by \(\sqrt{\exp(x^\varepsilon)}\), on prescribed windows for associated number fields. Its definition in [ExistsPageN.lean][vwin] illustrates the substantial arithmetic content still requiring review. This particular square root does not establish the announcement's separate claim about choosing \(\sqrt X\) theta lifts.

The final source connects `everyCharacter` through `everyCharacter_of_row` to a theta-lift/Galois construction; see [MainConclusion.lean][conclusion]. This is a trace of asserted dependencies. It is not a complete independent proof of the theta-lift construction, its quantitative constants, or the full collection of imported results.

### An independently reconstructed numerical leaf

The local [PowerExponentialBudget.lean](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.lean)
now gives an original Mathlib-only proof of the exact numerical statement
`UpperTheory.V.error_terms_le_sqrt_exp_rpow` in the submitted
[ErrorTermsLeSqrtExpRpow.lean][errorbudget]. For every `ε>0` and real
constants `K,C`, eventually in `x`, uniformly over all `u≥1` satisfying
`log u≤2x^(ε/4)`, it proves

\[
e^{x^{4\varepsilon/5}}\log2
+K e^{8x^{\varepsilon/4}}
+u^C+C e^{x^{4\varepsilon/5}}
\le\sqrt{e^{x^\varepsilon}}.
\]

The new proof absorbs each term using the strict gap between its power in
the exponent and `ε`. It allows negative `K,C` and chooses the cutoff
before `u`; it does not promise a cutoff uniform in `ε`. The [source record](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.md)
compares this argument to the submitted explicit-cutoff proof and records
the actual verification scope.

The exact arithmetic consumer is `vwinAt_of_joint` in
[AdmissibleOfPageN.lean][admissible]. It sets `t(x)=floor(x^Ct)` and applies
the budget to `u=condF(E)*t(x)` after obtaining the logarithmic bound from
the conductor estimates. Its `Ct=401` specialization still consumes
`JointWin 401` and `ThmBc 401`. Reconstructing the numerical budget leaves
those arithmetic premises and the construction of the complete windows
to be verified. The external environment has not been rebuilt with the
local declaration substituted.

### Below the counting interfaces

The [deeper arithmetic source audit](SubmittedRiemannHypothesisArithmeticAudit.md)
traces a concrete branch beyond the package names. Polynomial bounds on
automorphic eigensystems produce finite trace families. A trace bound
`|t|≤sqrt(q)+2` separates those traces from
`q^(-e)z+1+q^e/z` for `q≥7,e≥1` and a root of unity `z`. A full
Galois-stable product of the scaled differences is a nonzero integer with
a controlled logarithmic size. Its valuations then bound the relevant
length sums, using the separate deformation input `OneCharU_s`.
The `CountI` assembly fixes its auxiliary primes and exponent before the
varying host parameters, retaining the uniformity needed later.

The audit found no demonstrated defect in those inspected finite-product
and summation arguments. The cohomological/eigensystem bounds,
`OneCharU_s`, the other count cases, and the theta/Galois input remain
substantive external verification obligations. The linked record gives
the exact declarations, hypotheses and source revisions; it reports no
full external compilation or transitive proof replay.

### A checked local finite-arithmetic return

The [trace-witness assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md)
now reconstructs that finite part against the root Mathlib. For supplied
finite trace and root-of-unity families, it proves

\[
N=\prod_o\prod_s q^e(t_s-E(q,e,z_o))\in\mathbf Z\setminus\{0\},
\qquad
\log|N|\le |O|\,|S|\,(2e\log q+1).
\]

The [trace leaf](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceSeparation.md)
proves the stronger factor bound `5/2≤|q^e(t−E)|≤2(q^e)^2` and integral
closure separately. The [Galois-product theorem](../AlgebraicNumberTheoryGlobalFields/GaloisInvariantIntegerProduct.md)
derives integer-valuedness from full abstract automorphism invariance,
preserving multiplicities. Finally the [prime budget](../AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.md)
gives `Σ log p v_p(N)≤log|N|` for every finite prime set, with the same
integer chosen first. Its two-witness theorem covers distinct auxiliary
exceptions when the pointwise valuation estimates are available.

All 22 local theorem bodies compiled with `--trust=0`; their transitive
axiom queries returned only the standard three axioms. The component
records give exact sources, target/control checks, trust settings, and
retained failed attempts. The full external build, fresh dependency
replay, and an independent kernel implementation remain unperformed
here. Constructing the trace families, matching admissible
representations to their classes, and deriving deformation lengths from
trace valuations remain the missing inputs to the larger arithmetic
route. The checked finite assembly does not remove those premises.

### From that integer to the actual local trace valuations

The [local valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md)
now supplies the next finite link. For each prime `ℓ`, let class maps
injective separately within each orbit identify the selected local traces
with the corresponding complex trace values under an abstract field
equivalence. Each scaled
factor is integral, hence has `ℓ`-adic norm at most one. Dropping omitted
factors increases the product norm. Also `‖q^eδ‖_ℓ≤‖δ‖_ℓ`, since natural
integers have norm at most one. Consequently the **same** integer above
satisfies

\[
0<\|N\|_\ell\le\prod_o\prod_{\rho\in X_o}
 \|\operatorname{tr}_{o,\rho}-\iota^{-1}(E_o)\|_\ell.
\]

Every selected difference is therefore nonzero. Taking negative
logarithms base `ℓ` gives the checked bound

\[
\sum_o\sum_{\rho\in X_o}
 v_\ell(\operatorname{tr}_{o,\rho}-\iota^{-1}(E_o))
\le v_\ell(N).
\]

This removes the private `vl_bound` and finite class-selection norm
comparison from the locally unproved portion. The finite inequality does
not need `ℓ∤q`; exact norm cancellation does, and the wider arithmetic
construction has separate uses of its prime restrictions. The field
equivalence transports algebra and integrality, not norms.

The continuation adds 25 theorem bodies in three modules. All compiled
with `--trust=0` and warnings as errors; all 25 transitive axiom reports
contain only `propext`, `Classical.choice`, and `Quot.sound`. Exact raw
targets and boundary controls passed. The linked component records
preserve the failed development checks and distinguish these results
from fresh full-dependency and independent-kernel replay, both `NOT_RUN`.

The substantive remaining input supplies
`Vn(o)≤2Σρ v_ℓ(trace difference)`. Its source proof passes through actual
arithmetic length, model cotangent length, and graded algebra. The
[expanded arithmetic audit](SubmittedRiemannHypothesisArithmeticAudit.md#below-onechar-the-two-length-comparisons)
now identifies the concrete theorem bodies behind those comparisons,
the origin of the factor two, and the local graded reconstruction below.
The local observation theorem retains this input
explicitly; with it, the proved summation gives `Σ_o Vn(o)≤2v_ℓ(N)`.

### The graded algebra behind the multiplicity factor

Three further local modules now prove the actual quotient-map step and
its finite iteration. Let `A=⊕_w A_w`, `B=A₀`, let `J` be a homogeneous
ideal, and let `t∈A_d`. The notation `(A/I)_w` denotes the actual image
of `A_w` in `A/I`. The [graded exact-sequence construction](../../CommutativeAlgebra/GradedQuotientExact.md)
builds

\[
(A/(J+(t)))_{w-d}
\xrightarrow{\ \times t\ }
(A/(J+(t^2)))_w
\xrightarrow{\ \pi\ }
(A/(J+(t)))_w.
\]

Multiplication is well defined because `t(J+(t))⊆J+(t²)`. Projection
is well defined because `J+(t²)⊆J+(t)`. If a homogeneous representative
`a` projects to zero, write `a=j+tc` and take degree `w`. Homogeneity of
`J` gives `a=j_w+t c_(w-d)`, with `j_w∈J`; the class of `c_(w-d)` is
the required preimage. This proves exactness. Projection is also
surjective, but multiplication need not be injective.

The [localized length proof](../../CommutativeAlgebra/LocalizedGradedLength.md)
localizes this actual pair at any prime `P` of `B` and uses module length
in `ℕ∞`. Factoring through the image modules gives

\[
L_P((A/(J+(t^2)))_w)
\le L_P((A/(J+(t)))_{w-d})+L_P((A/(J+(t)))_w).
\]

The degree shift matters: for `A=k[x],t=x,J=0,w=1`, the middle piece
has length one, the last piece has length zero, and the shifted first
piece has length one. Removing the shift would give `1≤0`.

The [finite-family theorem](../../CommutativeAlgebra/GradedSquareFamilyLength.md)
assumes a bound `c` for the original quotient at **every** weight. It
squares one homogeneous equation at a time, applying that bound at
both required weights. Each step costs at most two; `n` equations give
`2^n c`. Individual equations can have different degrees. Empty
families, repeated values, and infinite length bounds remain valid.

The final theorem uses the source's literal five families. It squares
the `r+1` equations `F` of degree `−1` and the `r′` equations `E` of
degree `+1`, while retaining `G,E′,Z` of degrees `−2,+2,0`. At the prime
kernel of a field-valued point `σ`, it proves

\[
\left[\forall w,\ L_\sigma((A/(F,G,E,E',Z))_w)\le1\right]
\Longrightarrow
\forall w,\ L_\sigma((A/(F^2,G,E^2,E',Z))_w)\le2^{r+1+r'}.
\]

This is the finite multiplicity estimate appearing in the upper
deformation argument. Its lower comparison carries `2^(r+r′)`, so
their ratio is exactly two. The three modules contain 21 public theorem
bodies and two private containment helpers. All maintained sources
passed trust-zero checks with warnings as errors; their adjacent records
give exact source identities, endpoint/axiom audits, retained failures,
and the limits of that verification.

### Dehomogenization, finite-image nilpotence, and the slice return

Three further local modules now reconstruct the algebra around the
geometric slice step. They contain 14 public theorems and two private
finite-support helpers. Each maintained source and its imported endpoint
audit passed `--trust=0 -DwarningAsError=true`; every public theorem
reports exactly `propext`, `Classical.choice`, and `Quot.sound`.

The [dehomogenization theorem](../../CommutativeAlgebra/GradedDehomogenization.md)
starts with homogeneous `J`, `f∈A_d`, `d≠0`, and `h∈A_w`. It proves

\[
h\in J+(f-1)\quad\Longrightarrow\quad
\exists n\in\mathbb N,\ f^n h\in J.
\]

To see why, write `h=j+u(f−1)` and work in `A/J`. The homogeneous
components of `u` along the degrees `w+kd` satisfy a recurrence
`c_k=f c_{k−1}` except at `k=0`, where the defect is `−h`. Because
the expansion of `u` has finite support and `d≠0`, the backward
recurrence forces `c_{−1}=0`. The central component is then `−h`,
and the forward components are `−f^n h`. Some forward component is
zero, so `f^n h=0` in the quotient. No cancellation by `f` is needed;
zero divisors are allowed.

The [localization module](../../CommutativeAlgebra/GradedDehomogenizationLocalization.md)
adds the reverse implication and identifies this condition with the
vanishing of `[h]/1` in the actual ring `(A/J)[1/f̄]`. This equivalence
is restricted to homogeneous `h`: the entire slice quotient is not
being equated with that localization. For example, `X−1` belongs to
the slice ideal in `ℚ[X]` but does not vanish after inverting `X`.

The downstream return preserves the original degree-zero point. Choose
`f,g` of opposite nonzero degrees, put `τ=fg∈A₀`, and assume
`σ(τ)≠0`. If the slice supplier gives

\[
c\,g^Nbh\in J+(f-1),\qquad c\in O\setminus\{0\},\quad
b\in A_0,\quad\sigma(b)\ne0,
\]

then dehomogenization supplies `m` with `f^m c g^Nbh∈J`. The
constructed multiplier

\[
b'=c\,\tau^{N+m}b\in A_0
\]

has nonzero point value, using faithful coefficient action, and

\[
b'h=(f^Ng^m)(f^mcg^Nbh)\in J.
\]

Thus the original homogeneous quotient class vanishes after
localization at `ker σ`. The formal result uses the actual quotient
image module and `LocalizedModule`, and keeps the slice relation as
an explicit hypothesis.

The [finite-image module](../../CommutativeAlgebra/FiniteAlgebraPointNilpotence.md)
supplies a distinct input. The source's `M2` condition makes the
actual image of `A₀→A/I` finite over `O`. If `σ(p)=0`, the image of
`p` therefore satisfies a nonzero polynomial relation. Write it as
`q(X)=X^n r(X)` with `r(0)≠0`, and set `b=r(p)`. Then

\[
\sigma(b)=r(0)\ne0,\qquad bp^n\in I,
\]

where the constant is mapped faithfully into the point field.
This proves local nilpotence from the exact finite quotient-image
hypothesis. It does not require the point to factor through the
quotient; `n=0` covers a point outside its support. The adjacent
records give the complete proofs, exact source/object/audit digests,
and retained failed attempts. The imported controls also check why
nonzero degree, finite support, a polynomial relation, faithful
coefficients, and admissible denominators matter.

### Euler derivation and tangent rigidity on the actual slice

The next continuation now proves the Euler construction and the complete
`M4`-to-zero-point-derivations subargument. Its three modules add
17 public theorems, one private scalar helper, and three actual
Euler-map definitions. Their maintained sources and imported endpoint
audits pass trust-zero checks with warnings as errors. All public axiom
sets are contained in the standard three; the two generic localization
theorems use only `propext` and `Quot.sound`.

The [Euler construction](../../CommutativeAlgebra/GradedEulerDerivation.md)
defines an actual `Derivation O A A` by

\[
E_A\left(\sum_j a_j\right)=\sum_j j a_j.
\]

For homogeneous factors, the product has degree `i+j`, so the
product rule is just distributivity of `(i+j)ab`. Linearity extends
this identity to all finite homogeneous sums. A homogeneous ideal is
preserved because each component of its elements lies in the ideal.
Composing with a point `ξ` therefore gives the genuine point derivation
`E(a_j)=jξ(a_j)`, killing `I` whenever `ξ` kills `I`.

The [rigidity theorem](../../CommutativeAlgebra/GradedSlicePointDerivation.md)
uses the source's actual slice algebra

\[
C=(A/(I+(f-1)))[1/(\overline\pi\,\overline g)].
\]

At a point `ψ` of `C`, pullback gives `ξ(f)=1`, `ξ(g)≠0`, and
`ξ(I)=0`. The negative degree of `f` and positive degree of `g`
supply precisely the two-signed premise of `M4`. A point derivation
on `C` pulls back to `D′` killing `I` and `f`. Euler kills `I` and,
for the source degrees, satisfies `E(f)=−2≠0`. The nontrivial
dependence

\[
\alpha D'+\beta E=0
\]

evaluated at `f` forces `β=0`, then `α≠0` forces `D′=0`.
Euler is used on the original algebra: it generally cannot descend
through `f−1`, since its value there is nonzero. This is the tangent
direction removed by the normalization.

The [localization theorem](../../CommutativeAlgebra/LocalizedPointDerivation.md)
then returns `D′=0` to the actual derivation `D` on `C`. For a fraction
`z`, write `zι(t)=ι(r)` with an allowed denominator. Its differentiated
identity gives `ψ(ι(t))D(z)=0`. The coefficient is a unit, so it can
be cancelled even in a target ring with zero divisors. The proof uses
the actual localization property, never surjectivity of the algebra
map into the localization.

The resulting endpoint is exactly that the source point-derivation
submodule is zero at every point of `C`. The imported audit checks
that submodule, its scalar Leibniz convention, and the full `M4`
quantifiers. The general theorem allows different negative and positive
degree magnitudes, retaining `(d:K)≠0` for the degree of `f`. Integer
nonzero degree alone fails in characteristic dividing `d`; the
compiled Euler controls include a genuine Laurent grading over `𝔽₂`.

### From zero point derivations to finite separating slice points

The source's `et_unram` and full conditional `et_holds` now have
checked local proofs. Three modules make the successive implications
explicit.

First,
[PointDerivationUnramified](../../CommutativeAlgebra/PointDerivationUnramified.md)
uses the actual universal derivation `d:C→Ω[C/O]`. If a `C`-linear
map `F:Ω[C/O]→C/m` were nonzero and `ι:C/m→K` were an injective
residue embedding, then `ι ∘ F ∘ d` would be a point derivation at
the point `ι ∘ q`. The tangent hypothesis makes it zero. Injectivity
of `ι` and the fact that `d(C)` spans `Ω` force `F=0`. Every dual
functional on the residue-field vector space `Ω/mΩ` is therefore
zero, so the fiber vanishes. Finite generation and Nakayama give
`Ω=0`, which is precisely `Algebra.FormallyUnramified O C`.
The core assumes only that `Ω` is finite; the finite-type version
supplies this automatically. The target can be any commutative ring
with the stated injective residue embeddings.

Second,
[FiniteTypeResiduePoints](../../CommutativeAlgebra/FiniteTypeResiduePoints.md)
constructs those embeddings when the base is a field, `C` is finite
type, and `K` is algebraically closed. Every maximal residue field is
a finite algebraic extension of the base field and hence embeds into
`K`. The same module proves the later separation step: in a reduced
Jacobson ring, the intersection of maximal ideals is zero. A nonzero
element survives in some maximal quotient and therefore in the point
obtained from that quotient's injective embedding.

Third,
[FiniteTypePointRigidity](../../CommutativeAlgebra/FiniteTypePointRigidity.md)
returns to the coefficient domain `O`. Assume `K` is an algebraically
closed field with faithful `O`-action, `C` is finite type over `O`,
and every nonzero coefficient of `O` becomes a unit in `C`. The proof
constructs compatible scalar actions by the actual fraction field
`F=FractionRing O` on both `C` and `K`. It obtains the residue
embeddings, uses the first module to prove formal unramifiedness, and
passes to the field base `F`. The finite-type formally unramified
`F`-algebra is finite-dimensional and reduced.

Distinct `F`-algebra maps from a finite-dimensional algebra are
linearly independent, giving finiteness of its point set. A separate
proved compatibility theorem shows that every original `O`-algebra
point respects the fraction scalars; this keeps the result on the
source's original point type. Reducedness and the Jacobson separation
theorem then give the complete endpoint

\[
\#\operatorname{Hom}_{O\text{-alg}}(C,K)<\infty,
\qquad
\bigcap_{\xi:C\to_{O\text{-alg}}K}\ker\xi=0.
\]

The algebra's finite dimension is over `F`; finite generation as an
`O`-module is not asserted. The generic return needs only a coefficient
domain once the displayed suppliers hold. DVR structure, completeness,
and characteristic zero are not additional premises of that return.
They have their roles in the source's earlier construction and in the
`−2,+2` tangent specialization.

The final theorem applies these results to the actual normalized and
localized graded slice, using the full supplied `M4` to kill point
derivations. The source `−2,+2` specialization is included. Its finite
type and coefficient-inversion hypotheses are still explicit. These
three modules add 16 public theorems; their exact maintained sources
and imported endpoint/control audits pass trust-zero checking at the
unchanged root pins. Fifteen public axiom reports give the standard
three axioms, while the fraction-scalar compatibility theorem uses
only `propext` and `Quot.sound`.

### Completing the normalized slice and homogeneous vanishing return

The next three modules now discharge the actual finite-type and unit
suppliers and prove the complete source `slice_holds` conclusion.

[FiniteTypeGradedQuotient](../../CommutativeAlgebra/FiniteTypeGradedQuotient.md)
uses `IsWRing.gen` and the actual `M2` finite degree-zero quotient
image. Choose finitely many extra algebra generators for `A` over
degree zero. In `A/I`, the image of degree zero is generated by
finitely many elements as an `O`-module. Those elements and the
images of the extra generators generate the quotient as an
`O`-algebra. Passing through the normalization quotient and adjoining
one inverse prove finite type of the actual slice. Neither the
degree-zero algebra nor `A` is assumed to be a finite `O`-module.

[DVRLocalizedCoefficients](../../CommutativeAlgebra/DVRLocalizedCoefficients.md)
uses the chosen irreducible uniformizer `π`. Inverting `πg` makes
each factor a unit. Every nonzero coefficient of the DVR is `uπ^n`,
so all its nonzero coefficients become units in the slice. This works
even if the quotient or localization has zero divisors or is zero.

[GradedSliceSeparation](../../CommutativeAlgebra/GradedSliceSeparation.md)
proves that restriction has exactly the normalized point set as its
range. A normalized point satisfies `ξ(I)=0`, `ξ(f)=1`, and
`ξ(g)≠0`. The first two conditions descend it to the quotient;
faithfulness gives `ξ(π)≠0`, so the product denominator has a unit
image in the field `K` and permits a unique Away lift. Equality of
two lifts is proved using the actual localization universal property.

The previously checked finite set of slice points therefore makes the
normalized point set finite. If `h` vanishes at all normalized points,
the checked separation theorem kills its image in `C`. The actual
localization-zero criterion, now proved as an equivalence on these
objects, returns

\[
(\pi g)^n h\in I+(f-1),
\qquad\text{equivalently}\qquad
c g^n h\in I+(f-1),\quad c=\pi^n\ne0.
\]

The full theorem now derives every one of these intermediate inputs
from the original finite-generation, `M2`, homogeneous-ideal, and
`M4` data. Its source `−2,+2` specialization retains faithful
characteristic-zero coefficients. Its general version permits unequal
negative and positive degrees with nonzero negative degree cast.
Completeness and the original augmentation are unused here.

The direct `red` consumer is also checked. Let `h∈A_w` and suppose
`b h^n∈I` for `b∈A₀` with `σ(b)≠0`. A field point killing `I`
must kill `bh`, because it either kills `b` or kills the power of
`h`. Apply the full slice theorem to `bh`, then the earlier
dehomogenization return. With `τ=fg` and `σ(τ)≠0`, it yields

\[
\exists b'\in A_0,\qquad
\sigma(b')\ne0,\qquad b'h\in I.
\]

The proof constructs the degree-zero multiplier from
`c τ^(N+m)b`. The original point `σ` is only a point of `A₀`;
no extension of it to `A` is assumed. This is the homogeneous
nilpotence-to-vanishing statement needed by the length argument.
These three modules contain 18 public theorems, with no private
theorem helpers or new mathematical definitions. All final source
checks and imported endpoint/control audits pass with
`--trust=0 -DwarningAsError=true`; every public axiom report gives
exactly `propext`, `Classical.choice`, and `Quot.sound`.

### The actual length-one return and its finite-squaring consumer

[GradedPointLengthOne](../../CommutativeAlgebra/GradedPointLengthOne.md)
now proves the all-weight bound on the actual localized homogeneous
quotient image. For `e∈A_{−2w}`, the identity
`(h₀²e)h=(hh₀e)h₀` gives a local generator when `σ(h₀²e)≠0`.
Powers of `f,g` supply both `e` and a complementary `e′` with
`ee′=τ^k`. If every quadratic value vanishes, finite-image nilpotence
gives `b(h²e)^n∈I`; multiplying by `(e′)^n` and applying `red`
kills the localized class of `h`. Zero then generates the whole piece.

For `p∈ker σ`, the same finite-image theorem gives `bp^n∈I`.
Multiplication by `h^n` and `red` applied to `ph` show that the
maximal ideal of `R=(A₀)_(ker σ)` annihilates the piece `N`.
Cyclicity constructs a surjection `R→N`, whose kernel contains
that maximal ideal. The resulting surjection `R/𝔪_R→N` proves

\[
\forall w\in\mathbb Z,\qquad
\operatorname{length}_{(A_0)_{\ker\sigma}}
\big((A/I)_w{}_{\ker\sigma}\big)\le1.
\]

The final theorem retains the literal source condition that the ideal
generated by degree `−2,+2` products is not contained in `ker σ`.
That condition selects `f,g` with `σ(fg)≠0`. It is essential:
the one-sided grading on `O[x,y]/(x,y)^2` has a degree-one piece
of length two, while the source's two-signed `M4` is vacuous.
The complete mathematical comparison and the distinction between
compiled controls and analytical counterexamples are in the
[expanded audit](SubmittedRiemannHypothesisArithmeticAudit.md#the-checked-geometric-length-one-supplier).

Applying the new theorem at every weight supplies the previously
explicit premise of
`GradedSquareFamilyLength.pointLength_five_family_squares_le`.
The imported audit checks the exact composition: replacing the
`r+1` degree-minus-one equations and the `r′` degree-one equations
by their squares gives the bound `2^(r+1+r′)`, with the other
three families retained in the same ideal.

This fourth module adds six public theorems, with no new definitions
or private theorem helpers. Its maintained source and final imported
endpoint/source-object/control audit pass
`--trust=0 -DwarningAsError=true`; all six public axiom reports give
exactly `propext`, `Classical.choice`, and `Quot.sound`.
The successful five-family check is a separate imported audit using
an explicit equality between a named ideal and the literal unsquared
span. It transports the derived length bound along that equality,
without assuming a length premise. Earlier literal-fixture
elaboration failures remain recorded at their actual outcomes.

The next source-specific upper comparison is
`locLen_mQ_gr_le_locLen_aPiece`: its actual Rees lattice/monomial
maps and saturation argument must connect the Rees graded module
to these quotient pieces. Finite orbit coverage, finite annihilator
and support, Herbrand, the lower cotangent comparison, and the
arithmetic construction of the original `M2`,`M4` data remain
necessary to reach the deformation-to-valuation estimate.
Fresh full-dependency replay, an independently implemented kernel
check, and substitution of the new declarations into the external
geometric consumer are **NOT_RUN**.

## 6. The final zero transport

For a primitive character, a zero in the open strip reflects under the completed functional equation to a zero for the inverse character at \(1-s\). Gamma factors are nonzero in the relevant positive-real-part region. If \(\operatorname{Re}s<1/2\), its reflection lies to the right; if \(\operatorname{Re}s>1/2\), the original zero already lies there. Universal right-half-plane nonvanishing leaves only \(\operatorname{Re}s=1/2\).

For an imprimitive character, the extra Euler factors cannot vanish when \(\operatorname{Re}s>0\), because

\[
|\chi^*(p)p^{-s}|\le p^{-\operatorname{Re}s}<1.
\]

A strip zero therefore passes to the primitive character. `factor_ne_zero`, `prim_zero`, `prim_reflect`, and `strip` implement these deductions in [ClaimStrip.lean][strip]. The exported right-half-plane statement retains the condition \(\chi\ne1\) or \(s\ne1\). For zeta, the trivial zeros and the pole convention are handled explicitly, giving Mathlib's exact `RiemannHypothesis`. The submitted endpoint is visible in [Main.lean][main].

## 7. Consequences for the existing routes

An independently accepted proof of that exact RH target would supply the RH premise wherever an existing route explicitly consumes it. The Dirichlet endpoints would similarly supply predicates about the stated Dirichlet L-functions. They do not cover every Hasse–Weil or automorphic L-function merely because those words occur in intermediate constructions.

The concrete local consumers are already maintained in the [RH/GRH blueprint](RHGRHProofBlueprint.md):

| Local consumer | Consequence after the exact external endpoint has been accepted |
|---|---|
| `dirichletGRH_of_rh_and_primitive_rightStrip` in [WeilRightStripWitnessReturn](WeilRightStripWitnessReturn.lean) | Universal right-half-plane nonvanishing supplies its primitive exclusion premise; modulus one supplies RH. |
| `dirichletGRH_iff_rh_and_primitive_right_corridor` in [PrimitiveDirichletRightCorridor](PrimitiveDirichletRightCorridor.lean) | The same nonvanishing rules out the entire residual corridor, with its closed right edge. Invoking this equivalence retains its explicit `PrimitiveStripZeroUpperBound σ` hypothesis. |
| `smallConductorStages_iff_criticalLine` and `cofinalInverseOrbitStages_iff_criticalLine` in [WeilPrimitiveCofinalStageCriterion](WeilPrimitiveCofinalStageCriterion.lean) | Accepted character-local critical-line assertions imply the qualitative stage predicates. This does not execute a finite rational certificate producer. |
| `riemannHypothesis_iff_literal_odd_nonneg` in [WeilZetaOddCriterion](WeilZetaOddCriterion.lean) | Accepted RH implies nonnegativity of the exact arithmetic form on its full stated test carrier. |

All of these rows remain conditional on external proof acceptance. They are not a second independent proof of the same endpoint.

The local [ChebyshevBandCryptids](ChebyshevBandCryptids.md) route consumes `BandBound`, a precise inequality for differences of \(n-\theta(n)\) on every band \([4^j,4^{j+1}]\). Its provenance already gives an analytic comparison from RH through Schoenfeld's explicit estimate. This pass adds [ChebyshevBandSchoenfeld](ChebyshevBandSchoenfeld.lean), with a [source record](ChebyshevBandSchoenfeld.md), to prove the exact constants and all-band coverage from that estimate. The analytic implication from RH to Schoenfeld's estimate still needs a Lean supplier. An RH endpoint alone does not instantiate that missing supplier.

Likewise, a true global positivity statement does not itself construct a particular finite certificate, demonstrate that an approximation checker accepts it, or prove that a surrogate kernel returns the original arithmetic distribution. Source identities, approximation losses, signed observations, and certificate acceptance remain separate obligations. A hypothetical accepted endpoint could finish the global theorem while those implementation-specific routes remained incomplete.

The concurrent conductor-three work at
`grwtsk/math@2bf99849996eb52b0281003945e5f75fe08dbce6` has now supplied the
specific integrated-kernel return to `primitiveArithmeticValue` for compact
C1 tests in the radius-four window. Its [source record](WeilConductorThreeKernelReturn.md)
retains the remaining sign-certificate and zero-side identification
obligations. This progress is preserved and is not attributed to the
external RH submission or to the numerical lemmas in this continuation.

At the inspected revision, the verification project records preliminary checks and a smaller checker test; its full-submission result remains pending in [the pinned verification record][verification]. No local compilation or full replay of that submission is claimed here. The finite smoothing identity is an independently checkable arithmetic advance; the universal character-window construction remains the point where the claimed proof must earn acceptance.

A publication-time refresh inspected external revision
`976eeac58f2c5fdf94d935bd12e5d9cdada93726`. Its changes from the mathematical
source pin affect verification instructions, the CI challenge export, and
export arguments; no submitted Lean proof file changed. The
[refreshed verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/976eeac58f2c5fdf94d935bd12e5d9cdada93726/verification/NOTES.md#results)
still report the build in progress and provide no completed full-submission
verdict. The removal of the README's old status table does not supply that
missing result. Mathematical source links in this record remain pinned
to the exact revision inspected.

The arithmetic continuation additionally inspected external revision
`1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba`. Its changes clarify sandboxed
export and the clean configuration supplied to the judge. They change
no submitted Lean proofs. Its [verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/1f2beda145f7b7a9f6f6f6640a60f2e44920b7ba/verification/NOTES.md#results)
still record the build in progress, without a completed full-submission
verdict.

The valuation continuation refreshed revision
`8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116`. Only README wording changed
since that previous refresh. The [verification notes at the new revision](https://github.com/Deicyde/riemann-hypothesis/blob/8b83d5e7b319ebc7b3be6e59ce3411ba2b09d116/verification/NOTES.md#results)
are unchanged and still report the full build in progress. No submitted
Lean proof changed and no completed full-submission verdict was observed.

The graded continuation checked external revision
`bdb1810a06c78f246da285c9bcbe7db2cd992888`. The added commit only sets
`LEAN_ABORT_ON_PANIC=1` in the README build commands and CI challenge
job. Submitted Lean files and the
[verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/bdb1810a06c78f246da285c9bcbe7db2cd992888/verification/NOTES.md#results)
are unchanged; the full build is still reported in progress. This is
separate from the completed checks of the new local graded modules.

The dehomogenization continuation refreshed external `main` at
`712a6aef8fe265fb6f3a5fa1f3101a017aec8fe9`. The intervening changes
touch only the cache URL, checker configuration, README, and
[verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/712a6aef8fe265fb6f3a5fa1f3101a017aec8fe9/verification/NOTES.md).
The maintainers report that con-leche/con-ron do not support a mutual
reflexive inductive block in these dependencies, and the bundled
lean4lean has a core-version compatibility problem. Lean paranoid and
nanoda remain configured; a compatible lean4lean replay is described
separately. A reported solution export is evidence of export progress,
not a completed checker verdict. The Results section still reports
the build in progress. Submitted Lean proofs remain unchanged, and
no full-submission acceptance is claimed here.

The Euler/tangent continuation inspected external revision
`e50d09817ad81469f737e8f637561e6ccf86c670`. Only its
[verification notes](https://github.com/Deicyde/riemann-hypothesis/blob/e50d09817ad81469f737e8f637561e6ccf86c670/verification/NOTES.md)
changed, correcting the earlier incomplete metaprogramming inventory.
The newly documented direct term-assignment tactics remain subject to
the reported kernel-checking process. No submitted Lean file changed,
and the full verification result remains pending. These are maintainers'
reports, separate from the completed local source checks above.

The normalized-slice and length-one continuation reread the same
external head and complete verification notes. Neither the revision
nor the pending full-submission status changed.

## 8. Source pins and continuation

The external source uses Lean `v4.33.1` and Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`; the inspected local source at `5624239ab1a35db87d6eb8aa7771f68ad7117b74` uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The `.olean` environments are not interchangeable. An eventual admission must use a pinned compatible environment or a verified source port, compare the exact independently stated target, audit transitive axioms, and replay the actual submitted proof object. Source scans and the smaller checker test do not replace that result.

The next mathematical audit target is the construction supplying `ChebyshevInequalityAtWindowScale`: fixed exponent costs, every sufficiently small positive epsilon, actual character compatibility, and arbitrarily late complete power windows. Trace those suppliers through `CoreAtH`, `core_gm`, `VWin`, and `everyCharacter_of_row`; retain the distinction between an import graph and the final proof term's dependency closure. Coordinate the route through [math #1828](https://github.com/grwtsk/math/issues/1828), preserving the separate conductor-three source-return work in [math #1839](https://github.com/grwtsk/math/issues/1839).

[statement]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/StatementOC.lean
[analytic]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean
[gzeq]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/PrimitiveCosets/GzEq.lean
[level]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean
[family]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/PrimitiveCosets/LevelFamily.lean
[window]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean
[topwin]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/TopWin.lean
[landau]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/ZeroFreeOfRpowWindow.lean
[poledata]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/poleData.lean
[windowineq]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/landauWindowIneq.lean
[coeff]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/LandauCoeff.lean
[tails]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/landauTails.lean
[landauwindow]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/landauWindow.lean
[growthcontra]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/LandauGrowthContra.lean
[errorbudget]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/ErrorTermsLeSqrtExpRpow.lean
[admissible]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean
[core]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean
[coregm]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean
[vwin]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean
[conclusion]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean
[strip]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/CharacterBoxes/ClaimStrip.lean
[main]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Main.lean
[verification]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/verification/NOTES.md
