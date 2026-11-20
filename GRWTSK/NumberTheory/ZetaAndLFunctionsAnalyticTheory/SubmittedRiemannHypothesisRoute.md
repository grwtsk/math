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
