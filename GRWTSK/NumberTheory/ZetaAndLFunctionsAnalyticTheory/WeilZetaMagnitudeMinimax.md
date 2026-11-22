# Exact magnitude-only obstruction for the zeta prime source

Authors: grwtsk contributors

## Statement and scope

The accompanying [Lean module](WeilZetaMagnitudeMinimax.lean) uses the original
`FirstPrimeWindow.WindowTest A`: a complex-valued smooth function on the real
line, with compact support and closed support contained in `[-A,A]`. Its
correlation and energy are the original `SourcePrimeCorrelation` definitions

\[
C_f(r)=\int_{\mathbb R}\overline{f(t)}f(t+r)\,dt,
\qquad E(f)=\int_{\mathbb R}|f(t)|^2\,dt.
\]

All integrals use Lebesgue measure on the real line. No periodic boundary
identification or discrete surrogate is introduced.

Fix a real support radius satisfying

\[
\log 2<2A\leq\log 3,
\qquad w=\frac{\Lambda(2)}{\sqrt2}=\frac{\log2}{\sqrt2}>0.
\]

The actual conductor-one character is used. In this window the only active
prime power is 2, with the endpoint at 3 excluded by the source's strict
cutoff. The original signed arithmetic readout is exactly

\[
P_A(f)=\operatorname{signedWindowValue}(1,A,f)
      =2w\operatorname{Re} C_f(\log2).
\]

Define the full magnitude observation by
\(\mathcal O(f)(r)=|C_f(r)|\), for every real \(r\). The main declaration
`exists_zeta_onePrime_magnitude_decoder_iff` proves, for every real tolerance
\(\varepsilon\),

\[
\left[
\exists D:(\mathbb R\to\mathbb R)\to\mathbb R,\quad
\forall f\in\operatorname{WindowTest}(A),\ E(f)=1
\Longrightarrow |D(\mathcal O(f))-P_A(f)|\leq\varepsilon
\right]
\iff w\leq\varepsilon.
\]

There are no continuity, linearity, computability, or statistical assumptions
on the decoder. The quantifier includes every function of the entire
magnitude profile. Thus the conclusion also applies to any observation that
is a function of that profile, including finite samples.

The declaration `not_determines_zeta_onePrime_energy_magnitude` separately
refutes the repository's literal `DeterminesWindowReadout` predicate for the
observation consisting of exact energy together with the full magnitude
profile. This is a concrete obstruction at the original signed source
consumer, without a hypothesized realization field.

These statements concern the full **complex** `WindowTest` domain. The
modulations in the proof need not preserve real-valuedness or oddness. This
module therefore does not directly establish an obstruction on the real odd
domain of `WeilOddLiteralCofinal.StageLower`.

## Mathematical proof

### A source-domain witness

The existing declaration
`exists_windowTest_unitEnergy_correlation_eq_I_div_two` supplies, for any
\(0<r<2A\), an original smooth test \(v\) such that

\[
E(v)=1,\qquad C_v(r)=i/2.
\]

Its construction uses two separated translates of one real smooth bump,
with relative phase \(i\). More explicitly, take a nonzero bump \(b\)
centered at \(-r/2\), with sufficiently small support radius
\(\rho\leq\min(r/4,(2A-r)/4)\), and set

\[
m=\int b(t)^2\,dt>0,
\qquad
v(t)=\frac{b(t)+i b(t-r)}{\sqrt{2m}}.
\]

Disjointness of the two supports gives energy one. At delay \(r\), only
the forward cross term survives, and its integral is \(i/2\). The Lean
module reuses the established declaration; it does not reconstruct or claim
the bump construction as new.

### Modulation preserves all observed magnitudes

For a real frequency \(\lambda\), define

\[
(U_\lambda f)(t)=e^{i\lambda t}f(t).
\]

The multiplier is smooth and has modulus one. Multiplication preserves the
original support constraint and gives

\[
E(U_\lambda f)=E(f),\qquad
C_{U_\lambda f}(u)=e^{i\lambda u}C_f(u)
\quad(u\in\mathbb R).
\]

The latter identity follows directly from
\(\overline{e^{i\lambda t}}e^{i\lambda(t+u)}=e^{i\lambda u}\)
inside the original correlation integral. In particular,
\(\mathcal O(U_\lambda f)=\mathcal O(f)\) on the whole real line.

Apply this to the preceding witness with \(r=\log2\) and
\(\lambda=\pi/(2r)\). Set \(f=U_\lambda v\) and
\(g=U_{-\lambda}v\). Both are original unit-energy tests, their full
magnitude profiles agree, and

\[
C_f(r)=i(i/2)=-1/2,
\qquad
C_g(r)=(-i)(i/2)=1/2.
\]

Consequently \(P_A(f)=-w\) and \(P_A(g)=w\). This is the explicit
pair in `exists_zeta_onePrime_magnitude_collision`.

Any decoder takes the same value \(x\) on their observations. If its errors
on both tests are at most \(\varepsilon\), the triangle inequality gives

\[
2w=|(x+w)-(x-w)|\leq|x+w|+|x-w|\leq2\varepsilon.
\]

This proves the necessary lower bound \(\varepsilon\geq w\), and proves
the failure of exact source determination even when energy is adjoined.

### The lower bound is sharp

For any original test supported in \([-A,A]\), and any \(r\geq A\),

\[
|C_f(r)|\leq E(f)/2.
\]

Indeed, a nonzero product \(\overline{f(t)}f(t+r)\) can occur only when
\(t\leq0\leq t+r\). At such a point, Young's inequality gives

\[
|\overline{f(t)}f(t+r)|
\leq\tfrac12\left(
\mathbf1_{(-\infty,0]}(t)|f(t)|^2+
\mathbf1_{[0,\infty)}(t+r)|f(t+r)|^2\right).
\]

Outside that region the product is zero, so the same bound remains valid.
Integrate, use translation invariance, and add the two half energies. Their
double count at zero has Lebesgue measure zero, and their sum is \(E(f)\).
This proves the bound on the original whole-line correlation.

The hypothesis \(2A\leq\log3<\log4=2\log2\) implies
\(A<\log2\). For unit energy the preceding estimate therefore gives

\[
|P_A(f)|
\leq2w|C_f(\log2)|\leq w.
\]

The constant decoder \(D=0\) attains tolerance \(w\), completing both
directions of the exact minimax statement.

## Boundary and hostile checks

The condition `r ≥ A` in the half-energy estimate is essential. Analytically,
if `0 < r < A`, choose a real unit-L2 smooth bump with radius less than
`min(r/3, A-r)`. Three disjoint translates centered at `-r, 0, r`, each
with coefficient `1/sqrt(3)`, have energy one and correlation `2/3` at
delay `r`. Thus the half-energy bound cannot be used for arbitrary delays.
This explicit boundary check is mathematical exposition, not a separately
formalized declaration in the module.

The lower window endpoint is also essential: at `2*A = log 2`, the strict
prime cutoff leaves the source sum empty and its exact decoder tolerance is
zero. The upper endpoint `2*A = log 3` is allowed because the prime 3 is
excluded by that same strict cutoff. A separate mathematical review checked
the modulation orientation, the singleton-zero measure argument, finite-delay
resonance cancellation, and the amplitude normalization. It found no blocking
issue; this is AI-assisted review, not independent external peer review.

## Source identity, attribution, and verification boundary

The inherited source revision is
`grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`. The relevant reused
declarations and arguments are:

| Source | Contribution reused |
| --- | --- |
| `WeilSourcePrimeCorrelation.lean` | Original correlation and energy |
| `WeilLowSchurEnclosure.lean` | Original von Mangoldt prime weight |
| `WeilFirstPrimeWindowReturn.lean` | Original `WindowTest`, signed readout, and `DeterminesWindowReadout` |
| `WeilFirstPrimePhaseReadout.lean` | Exact first-prime support and source coefficient |
| `WeilFirstPrimeUnboundedError.lean` | Smooth unit-energy witness with correlation `I/2` |
| `WeilPhysicalHalfCorrelation.lean` | The half-line support-splitting argument for the sharp upper bound |
| Mathlib | Complex exponential, integration, smoothness, and elementary inequalities |

The support-splitting argument is reconstructed privately in this module to
avoid importing the unrelated primitive-stage consumer dependencies of
`WeilPhysicalHalfCorrelation.lean`. That argument and the reused bump
construction are attributed to the repository's grwtsk contributors. The
contribution of the new module is the conductor-one magnitude collision,
its exact decoder tolerance, and its connection to the literal source
determination predicate.

The source uses Lean 4.34.1 and Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Compilation, protected-target
acceptance, transitive dependency and axiom inspection, and fresh replay are
separate checks. Their verifier-owned receipts and final acceptance status
belong to the investigation checkpoint; this mathematical note does not
replace those checks.

The candidate worker's final source compilation succeeded with exit code 0
using `lean -j2 --trust=0 -DwarningAsError=true`, with no diagnostic output
and no source change during the run. The Lean compiler revision was
`5045d0056413266e57c625dcd7c365b10e377c52`. The exact source SHA-256 was
`d8bea047d5cf312ec5daab6da67b693702e4e558e6e8940dc0fffe652b2a014f`, and
the emitted module SHA-256 was
`61cab2680178c41214f4257265d93bdc01957770ff9d71728db40ffff25e50d0`.
The worker receipt is `verification/finite_delay/build4_final.json` in the
external investigation checkpoint. This records successful source compilation
against the imported environment. It does not substitute for the independent
protected-target, transitive-dependency, axiom, and replay acceptance gates.

Verifier-owned native acceptance is **PASSED** for
`exists_zeta_onePrime_magnitude_decoder_iff` and
`not_determines_zeta_onePrime_energy_magnitude`. Their actual proof expressions
were admitted at separately compiled literal target propositions, after the
combined 60,469-declaration dependency closure was replayed in an empty Lean
kernel environment. Their individual audited closures contained 46,957 and
46,877 declarations. Only `propext`, `Classical.choice`, and `Quot.sound`
were present; their actual axiom types were checked against standard `Init`.
The run exited 0 with every bound source and object unchanged. This is native
Lean-kernel evidence. The additional Lean4Lean native implementation check
also **PASSED**: the same 60,469 declarations and five actual proof terms
were replayed/admitted against the independent targets, with exit 0 in
554.4178 seconds and all 54 bound files unchanged. The checker source at
`67f63b0c818920dfaed2ad07ccff187a6a8fe1e3` compiled unchanged with Lean
4.34.1. Its earlier VM timeout is retained separately. Lean4Lean is derived
from Lean's kernel and shares the loader/runtime, so this is an additional
implementation check, not an independently designed foundation. Neither
check accepts the analytic continuation sections below as Lean declarations.

The full Hermitian Weil form also contains its archimedean contribution,
regularization, and the applicable pole terms; its prime contribution uses
the sign specified by the original source. Nothing above identifies the
archimedean or pole terms of the collision pair. In particular, this is not
a negative-value witness for the complete Weil form and does not prove or
disprove RH. All-test source-preserving lower bounds and their cofinal
approximation remain unresolved.

## Concrete continuation: arbitrary finite positive delays

**Status: ANALYTIC_PROOF; LEAN_NOT_RUN.** The following construction is a
proposed next formalization. It is not a declaration supplied by the
accompanying Lean module.

Let \(I\) be a nonempty finite index set, let \(r_i\) be distinct real
numbers with \(0<r_i<2A\), and let \(E>0\). Given a complex vector
\(d=(d_i)\) with Euclidean norm \(D\leq E\), one can construct original
smooth tests \(f_+,f_-\) with

\[
E(f_+)=E(f_-)=E,
\qquad C_{f_+}(r_i)-C_{f_-}(r_i)=d_i\quad(i\in I).
\]

Here is a construction with an explicit support margin. Put
\(R=\max_i r_i\), \(S=\{0\}\cup\{r_i:i\in I\}\), and

\[
\Delta=\min\{|s-t|:s,t\in S,\ s\ne t\}>0.
\]

Choose
\(0<\delta<\min(A-R/2,\Delta/4)\), and choose a real smooth bump
\(\phi\), supported in \((-\delta,\delta)\), with
\(\int\phi^2=1\). Define

\[
\phi_0(t)=\phi(t+R/2),\qquad
\phi_i(t)=\phi_0(t-r_i).
\]

Their supports are pairwise disjoint and contained strictly in \((-A,A)\).
For a real \(\alpha>0\) and complex \(\beta_i\), let

\[
f_\pm=\alpha\phi_0\ \pm\sum_i\beta_i\phi_i.
\]

Disjointness gives
\(E(f_\pm)=\alpha^2+\sum_i|\beta_i|^2\). Subtracting the two
correlations cancels the base-base and translate-translate terms identically.
At delay \(r_j\), the forward base-translate integral is one for \(i=j\)
and zero otherwise, since \(|r_i-r_j|\geq\Delta>2\delta\). Every
reverse term vanishes because \(r_i+r_j\geq2\Delta>2\delta\). Therefore

\[
C_{f_+}(r_j)-C_{f_-}(r_j)=2\alpha\beta_j.
\]

No assumption excluding identities such as \(r_i-r_j=r_k\) is needed:
all translate-translate terms cancel before the remaining terms are
evaluated. Treating these resonances as absent would be an unjustified
restriction on prime-logarithm delays.

Now take

\[
x=\frac{E+\sqrt{E^2-D^2}}2>0,
\qquad \alpha=\sqrt x,
\qquad \beta_i=\frac{d_i}{2\alpha}.
\]

The identity \(x^2-Ex+D^2/4=0\) gives
\(\alpha^2+\sum_i|\beta_i|^2=x+D^2/(4x)=E\), while the displayed
correlation difference is exactly \(d_j\). Empty delay sets can be handled
separately when \(A>0\); zero energy forces the zero difference. A delay
at zero would require \(d_0=0\), and negative delays are linked to positive
ones by complex conjugation, so those cases must not be included as
independent coordinates.

### Connection to the linear observation criterion

Let \(S(f)=(C_f(r_i))_i\), let \(M:\mathbb C^I\to Y\) and
\(L:\mathbb C^I\to\mathbb R\) be real-linear maps, and restrict tests
to the fixed energy \(E>0\). The construction above implies that the
readout \(L(S(f))\) is determined by \(M(S(f))\) on the actual test class
if and only if

\[
\ker M\subseteq\ker L.
\]

For sufficiency, equal observations put the sample difference in \(\ker M\),
so the readouts agree. For necessity, if \(d\in\ker M\) but
\(L(d)\ne0\), replace it by
\(\lambda d\), where \(\lambda=E/(1+\|d\|)>0\). This vector has norm
less than \(E\), so the construction realizes it as an actual equal-energy
sample difference. Those tests have equal observations and different
readouts. A decoder on the attained observations then exists precisely when
the readout is constant on each fiber; it can be extended arbitrarily
outside the attained set.

For the zeta prime source, take the finite active prime-power delays
\(r_i=\log n_i\) and
\(L(c)=2\sum_i\Lambda(n_i)n_i^{-1/2}\operatorname{Re}c_i\). Claiming the
complete prime source requires including all supported prime powers, or
carrying a proved omitted-source bound. A physical or learned sensor must
also be proved to induce the asserted map \(M\) on these original tests.

The magnitude observation of the verified module is nonlinear. Its
obstruction is proved by the explicit same-observation pair above; the
linear kernel criterion is a distinct continuation and is not applied to
the magnitude map.

## Further continuation: a real odd four-bump collision

**Status: ANALYTIC_CANDIDATE; LEAN_NOT_RUN.** This separate construction
addresses the real odd domain needed by the shortest source-located Weil
criterion. It is not part of the accepted complex-modulation Lean theorem.

For every `A < r < 2*A`, set

\[
h=\min(r/16,(A-r/2)/2),\quad a=r/2-h,\quad b=r/2+h,
\quad \eta=\tfrac14\min(A-b,h).
\]

Then `h, η > 0`, `0 < a < b < A`, and `a+b=r`. Choose an even real smooth
bump `φ`, supported in `[-η,η]`, with squared integral one. For `s=±1`, put

\[
f_s(t)=\tfrac12[\phi(t-a)-\phi(t+a)
                  +s\phi(t-b)-s\phi(t+b)].
\]

These are real odd smooth tests supported strictly inside `(-A,A)`. The four
original supports are disjoint, so `E(f_s)=1`. With
`R(u)=∫ φ(t)φ(t+u) dt`, the correlation expands into nine translated copies:

| Translation center | Coefficient in the correlation of `f_s` |
| --- | ---: |
| `0` | `1` |
| `±2a`, `±2b` | `-1/4` |
| `±(b-a)` | `s/2` |
| `±(a+b)` | `-s/2` |

The positive centers are `2h < r-2h < r < r+2h`; the minimum separation of
all nine centers is `2h`. Since `R` is supported in `[-2η,2η]` and
`4η ≤ h < 2h`, its translated supports are pairwise disjoint. At every
delay the two correlations either agree, are negatives, or both vanish.
Their absolute values therefore agree pointwise at every real delay, while
`C_(f_s)(r)=-s/2`. The resonance `b=3a` would merge a fixed coefficient
with a changing one and invalidate this argument; the displayed parameters
exclude it.

The actual odd form's integrability condition also holds analytically.
For support radius `B=b+η` and a finite global Lipschitz constant `M`,
the shift energy satisfies `D_f(u) ≤ (2B+1)M²u²` for `0<u≤1` and
`D_f(u) ≤ 4E(f)=4` for `u≥1`. The original kernel
`K₀(u)=exp(-u/2)/(1-exp(-2u))` is bounded by `3/(2u)` on the first range
and by `exp(-u/2)/(1-exp(-2))` on the second. Hence `K₀ D_f` has an
integrable linear head majorant and an exponentially decaying tail majorant.
Both pole moments are finite by compact support. A formal continuation can
use `GammaHeadIntegrability.gammaCorrection_integrableOn_of_contDiff` after
proving the real-to-complex shift-energy identification.

For the one-prime zeta window, `r=log 2` satisfies the strict range above.
The prime readouts are `-w,+w`, so the same sharp tolerance `w` holds
analytically on the real odd unit-energy subclass, using the half-energy
upper bound. The small-support witnesses also embed into every covering
odd stage: all prime-power correlations for `n≥3` vanish. This preserves
the prime-readout collision, not the small-window upper bound for arbitrary
larger-window tests.

The next protected Lean statement must include actual real functions,
smoothness, oddness, support, exact unit energies, pointwise equality of all
magnitudes, the two signed correlations, and the original gamma integrability
predicate. Its proof, dependency audit and fresh replay remain to be done.
No equality of the two gamma or pole terms, failure of `StageLower`, or sign
of the complete Weil form is claimed.
