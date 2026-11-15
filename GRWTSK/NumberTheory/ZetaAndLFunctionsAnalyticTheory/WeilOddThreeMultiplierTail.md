# Original conductor-three odd Weil multiplier: a four-term gamma-tail bound

2026-11-14. Authors: grwtsk contributors. Development: AI-assisted.

**Evidence:** Written analytic proof and exact rational scratch check. Lean elaboration,
kernel replay, transitive axiom audit, full imported dependency replay and independent
mathematical review: **NOT_RUN / UNASSESSED** for this increment. The original
`WeilOddThreeFullSignedShift` source candidate retains its recorded native dependency
build **FAIL**; this note does not declare it repaired. This is neither a stage sign
proof nor a proof of RH or primitive Dirichlet GRH.

## Exact original arithmetic source and consumer

For any Dirichlet character `χ : DirichletCharacter ℂ 3` with the actual
`gammaParity χ = 1`, let the source Fourier multiplier at radius one be

\[
M_\chi(x)=1+\operatorname{gammaConstant}(3,1)
 +\operatorname{periodicMultiplier}(1,x)
 -2\sum_{n\in\operatorname{activePrimePowers}(1)}
 \operatorname{pairedPrimeWeight}(\chi,n)\cos(x\log n).
\]

All three terms are the **actual** definitions in
`WeilOddGammaSineReturn.lean`, `WeilGammaData.lean`,
`WeilOddMultiplierBounds.lean`, and `WeilConductorFrontier.lean`, not a
new spectral comparator. The intended direct consumer is
`DirichletStageChain.PrimitiveStageLower χ hp hn 0` for every original
real odd C² `Admissible χ 1 f`, via the existing
`OddShiftEnergySine.originalPrimitiveQ_eq_sineMultiplier`.

The original radius-one active set is precisely `Finset.Icc 2 7`. The
necessary **source identity**, which needs its own formal import/axiom
qualification, is the native table from
`OddThreeFullSignedShift.odd_three_native_signed_weights`:

\[
(w_2,w_3,w_4,w_5,w_6,w_7)=
(-\log 2/\sqrt 2,0,\log 2/2,-\log5/\sqrt5,0,\log7/\sqrt7).
\]

In particular \(\Lambda(4)=\log2\) and the phase at 4 is \(\log4\).
No principal pole is present for this nonprincipal character.

**Written theorem (conditional on exact source-table correspondence):**

\[
\boxed{\quad \forall x\in\mathbb R,\quad x\ge256
 \Longrightarrow M_\chi(x)>\frac{2017}{2000}>1.\quad}
\]

This is a uniform **frequency tail** statement for fixed conductor and parity.
It is not all-test positivity and is not an assertion about arbitrary
complex-character phases. The source tables and analytic identities are
used as mathematical input, not inferred from a finite numerical run.

## 1. Four original gamma terms and the untruncated remainder

Write \(P_a(x)=\operatorname{periodicMultiplier}(a,x)\). Its exact
summand in `OddMultiplierBounds` is

\[
 t_{a,j}(x)=\frac{2x^2}{r_{a,j}(r_{a,j}^2+x^2)},
 \qquad r_{a,j}=a+\tfrac12+2j.
\]

The identity \(r_{1,j+4}=r_{9,j}\), together with summability of the
nonnegative series, gives an **exact index reindexing** (no discarded term)

\[
P_1(256)=\sum_{j=0}^3t_{1,j}(256)+P_9(256).
\]

The four-term sum is rational, since
\(r_{1,j}\in\{3/2,7/2,11/2,15/2\}\). Exact arithmetic gives

\[
\sum_{j=0}^3t_{1,j}(256)
=\frac{184605452726637489553408}
 {72836572740884698057081}>\frac{253}{100}.
\]

Apply the **existing** `OddMultiplierBounds.log_lower_le_periodicMultiplier`
with its rate parameter **9**, not an invented parity or an altered
original source:

\[
P_9(256)\ge\frac12\log\left(1+\frac{256^2}{(19/2)^2}\right)
 =\frac12\log\frac{262505}{361}.
\]

The entirely rational inequality \(262505/361>704=2^9(11/8)\)
and the elementary logarithmic bounds

\[
\log2>\frac{693}{1000},\qquad
\log(11/8)>\frac{3}{10}
\]

then imply

\[
P_1(256)>
\frac{253}{100}+\frac12\left(9\frac{693}{1000}+\frac{3}{10}\right)
=\frac{11597}{2000}.
\]

The existing `periodicMultiplier_abs_mono` and \(x\ge256\ge0\)
therefore give \(P_1(x)>11597/2000\) for **every** real \(x\ge256\).
The omitted infinite gamma series has been accounted for, not dropped.

## 2. Elementary rational bounds for the source constants

We use the convergent atanh identity for \(0<u<1\), with its nonnegative
geometric tail,

\[
\log\frac{1+u}{1-u}
=2\sum_{k\ge0}\frac{u^{2k+1}}{2k+1},\qquad
0\le2\sum_{k\ge N}\frac{u^{2k+1}}{2k+1}
\le\frac{2u^{2N+1}}{(2N+1)(1-u^2)}.
\]

At \(u=1/3\), three lower terms and two upper terms with the
geometric tail give

\[
\frac{842}{1215}<\log2<\frac{1123}{1620},
\qquad\frac{693}{1000}<\log2<\frac{347}{500}.
\]

At \(u=3/19\), \(\log(11/8)>6/19>3/10\).
At \(u=3/7\), three positive terms prove
\(\log(5/2)>91/100\). At \(u=1/9\), the full geometric
majorant gives \(\log(5/4)<9/40\); at \(u=1/15\),
\(\log(8/7)>2/15\).

For the Euler–Mascheroni constant \(\gamma\), put
\(H_n=\sum_{k=1}^n1/k\) and \(b_n=H_n-\log(n+1/2)\).
The sequence \(b_n\) decreases to \(\gamma\). Indeed, with \(m=n+1\),

\[
\log\frac{m+1/2}{m-1/2}
=\int_0^{1/2}\left(\frac1{m+t}+\frac1{m-t}\right)dt
\ge\int_0^{1/2}\frac2m\,dt=\frac1m,
\]

so \(b_{n+1}\le b_n\), and
\(\log(n+1/2)-\log n\to0\). Consequently
\(\gamma\le b_2=3/2-\log(5/2)<59/100\).

The classical Machin identity
\(\pi=16\arctan(1/5)-4\arctan(1/239)\), with alternating
Taylor bounds, gives the rational brackets

\[
\frac{1231847548}{392109375}<\pi
<\frac{670143059704}{213311234375},
\qquad\frac{157}{50}<\pi<\frac{22}{7}.
\]

The upper bracket implies
\(\log(3/\pi)>\log(21/22)>-1/21\)
by \(\log(1+t)<t\) for \(t>0\). In `WeilGammaData.digamma_quarters`,

\[
\operatorname{gammaConstant}(3,1)
=\log(3/\pi)-\gamma+\frac{\pi}{2}-3\log2.
\]

Thus the **actual** gamma constant satisfies

\[
1+\operatorname{gammaConstant}(3,1)
>1-\frac1{21}-\frac{59}{100}+\frac{157}{100}
    -3\frac{347}{500}
=-\frac{1571}{10500}>-\frac3{20}.
\]

The needed signed prime-weight guards are elementary consequences
of the true table:

\[
\sqrt2>7/5,\quad\sqrt5>221/100,\quad\sqrt7>66/25;
\]

\[
\begin{aligned}
|w_2|&<1/2, & |w_4|&<7/20,\\
|w_5|&<73/100, & |w_7|&<74/100.
\end{aligned}
\]

For \(w_5\), use \(\log5=2\log2+\log(5/4)
<2(347/500)+9/40\); for \(w_7\), use
\(\log7=3\log2-\log(8/7)
<3(347/500)-2/15\). The square-root inequalities
are checked by squaring positive rationals. The four individual
bounds sum to \(\sum_{n=2}^7|w_n|<58/25\), with the exact zero
entries \(n=3,6\) retained.

## 3. Entire-frequency return and quantitative strict margin

The real cosine factors have modulus at most one. Since the full
original gamma sum is monotone in \(|x|\), the previous bounds imply
for **every** \(x\ge256\)

\[
\begin{aligned}
M_\chi(x)
&\ge1+\operatorname{gammaConstant}(3,1)+P_1(x)
      -2\sum_{n=2}^7|w_n|\\
&> -\frac3{20}+\frac{11597}{2000}-2\frac{58}{25}
=\frac{2017}{2000}>1.
\end{aligned}
\]

There is no numerical quadrature, sampled-frequency inference,
RH assumption or infinite-series truncation in the analytic argument.
The only finite operations are explicit rational checks; their relation
to the standard logarithm/digamma/gamma-source identities is stated
above and requires independent formal qualification before this may
be labeled a Lean theorem.

The **direct mathematical consumer** is the original sine deficit
\(d(x)=(1-M_\chi(x))_+\), which then has zero support for \(x\ge256\).
The later all-real-\(L^2(0,1)\) positive operator
\(B=(2/\pi)\int_0^{256}d(x)|\sin(x\cdot)\rangle\langle\sin(x\cdot)|\,dx\)
remains to be justified as an operator with its exact sinc-squared
Hilbert–Schmidt rectangle and all-cell bound. The historical finite
32,768-cell rational checker is **not** proof of
\(\|B\|_{\rm HS}^2<81/100\) without universal continuum enclosures.
Even that inequality would prove only the radius-one stage
\(Q_{\chi,1}(f)\ge-9E(f)/10\) on the original admissible carrier;
all larger windows/characters, `PrimitiveNegativeWitness`, the
pole-inclusive conductor-one ζ RH in both orientations, and primitive
Dirichlet GRH remain open.

## Reproduction and limitations

The source calculations are rational. The authoring scratch checker used
Python 3.13.5 `fractions.Fraction`, command
`python /mnt/data/hs2-c0013-t4/verify_tail.py`, exit 0, stdout
`PASS source-exact C0013/T4 rational guards`; file SHA-256
`77fc73e931b789caeda8db5117e30441058cc888f4f256749d5f1c0e066ab198`.
This command refers to the authoring environment, **not** a
repository-contained reproducibility package; the rational comparisons
and exact fractions are printed in the note for independent replay.
The checker does not validate the full analytic argument, any Lean
source import, kernel, axiom audit or original-root equivalence.

The most important hostile controls are: the source's documented
negative pointwise multiplier near frequency 13 (which does not
contradict this theorem); wrong n=4 von Mangoldt weight; missing
n=2/5 negative versus n=4/7 positive terms; treating the shifted
\(P_9\) tail as an independent parity-nine arithmetic form; missing
conductor-one pole orientations; and replacing all-frequency,
all-test, or global zero coverage with a finite computation.


## Independent sharper rational margin (NON-CYCLE supplement)

2026-11-14, grwtsk contributors, AI-assisted. This is a second written
rational enclosure for the *same* original q=3 odd multiplier. It
strengthens the preceding written inequality to

\[
\boxed{\forall x\in\mathbb R,\quad x\ge256
\Longrightarrow M_\chi(x)>\frac{253}{250}=1+\frac3{250}.}
\]

The character is the original Dirichlet character modulo 3 with its actual
gamma parity one and the **unchanged** six-entry native table. In particular
the weight at \(n=4\) is \(\log2/2\) (not \(\log4/2\)); the phase
remains \(x\log4\). All qualification and consumer boundaries at the top
of this note are unchanged.

### 1. Explicit source gamma constant bound

For \(0<u<1\), the atanh series is
\[
\log\frac{1+u}{1-u}=2\sum_{k\ge0}\frac{u^{2k+1}}{2k+1},\qquad
0\le 2\sum_{k\ge N}\frac{u^{2k+1}}{2k+1}
\le\frac{2u^{2N+1}}{(2N+1)(1-u^2)}.
\]
Seven terms at \(u=1/3\) and twelve at \(u=1/2\), together with the
displayed geometric remainder, prove by rational comparisons
\[
\frac{69314}{100000}<\log2<\frac{69315}{100000},\qquad
\frac{109861}{100000}<\log3<\frac{109862}{100000}.
\]
Machin's identity for pi and the alternating arctangent series, with
six/seven terms at \(1/5\) and one/two at \(1/239\), give
\[
\frac{314159}{100000}<\pi<\frac{3927}{1250}=3.1416.
\]
Since \(3.1416=3(1+59/1250)\), the alternating three-term upper
bound for \(\log(1+u)\) implies
\[
\log\pi<
\frac{109862}{100000}+\frac{59}{1250}
-\frac12\left(\frac{59}{1250}\right)^2
+\frac13\left(\frac{59}{1250}\right)^3
<\frac{114476}{100000}.
\]
The sequence \(H_n-\log n\) decreases to the Euler–Mascheroni
constant \(\gamma\). Using \(1024=2^{10}\) and the above lower bound
for \(\log2\) gives the *finite rational comparison*
\[
\gamma<H_{1024}-\log1024
<H_{1024}-10\frac{69314}{100000}<\frac{5778}{10000}.
\]
The actual quarter-digamma identity in WeilGammaData yields
\[
\begin{aligned}
1+\operatorname{gammaConstant}(3,1)
&=1+\log3-\log\pi-\gamma+\frac\pi2-3\log2\\
&>-\frac{26521}{200000}>-\frac{133}{1000}.
\end{aligned}
\]

### 2. Full native coefficient bound

Using the exact signed n=2..7 table, the nonzero absolute weights
are \(\log2/\sqrt2,\log2/2,\log5/\sqrt5,\log7/\sqrt7\).
Rational square comparisons give
\(\sqrt2>7/5,\sqrt5>111/50,\sqrt7>66/25\).
For \(0<u<1\), the odd partial sums of
\(\log(1+u)=\sum_{k\ge1}(-1)^{k-1}u^k/k\)
are upper bounds. Therefore
\[
\log5=2\log2+\log(5/4)
<2\frac{69315}{100000}+\sum_{k=1}^{5}
 \frac{(-1)^{k-1}}{k\,4^k}<\frac{161}{100},
\]
\[
\log7=\log3+\log2+\log(7/6)
<\frac{109862+69315}{100000}+\sum_{k=1}^{3}
 \frac{(-1)^{k-1}}{k\,6^k}<\frac{39}{20}.
\]
Division by the positive square-root lower bounds then gives
\[
|w_2|<\frac12,\quad |w_4|<\frac7{20},\quad
|w_5|<\frac{73}{100},\quad |w_7|<\frac{74}{100};
\quad\sum_{n=2}^7|w_n|<\frac{58}{25}.
\]
The zero entries at \(n=3,6\) are included in the sum.

### 3. Full infinite gamma and all real frequencies

Keep the exact four-term plus shifted-tail identity already proved
as written in Section 1 above: \(P_1(256)=
\sum_{j=0}^{3}t_{1,j}(256)+P_9(256)\). Its four-term rational head
exceeds \(253/100\). The existing logarithmic lower estimate for the
*same infinite gamma tail* and \(262505/361>704=2^9(11/8)\) imply
\[
P_1(256)>
\frac{253}{100}+
\frac12\left(9\frac{69}{100}+\frac3{10}\right)
=\frac{1157}{200}.
\]
Here \(\log2>69/100\) and
\(\log(11/8)>6/19>3/10\), the latter following from the
positive first atanh term at \(u=3/19\).
Source monotonicity gives the same strict estimate for every \(x\ge256\).
The bound \(|\cos|\le1\) applied to *all original signed atoms* yields
\[
M_\chi(x)\ge 1+\operatorname{gammaConstant}(3,1)
+P_1(x)-2\sum_{n=2}^7|w_n|
>-\frac{133}{1000}+\frac{1157}{200}
-2\frac{58}{25}=\frac{253}{250}.
\]
No finite-frequency sampling, discarded gamma terms, or positivity
assumption enters the written proof.

**Verification scope:** A separate exact Python fractions.Fraction
audit checked the stated finite series endpoints, \(H_{1024}\)
inequality, the four-term rational head, sqrt comparisons and final
strict rational margin (exit 0; stdout
"PASS exact rational analytic-tail guards"; script SHA-256
60c2c49e098c3039847ed4baa603b4aa739e142b62fcba0b844c3ee8e6c72e81).
The script is an authoring scratch file, not a source-local Lean
proof. **New Lean elaboration, full imported closure, kernel replay,
axiom audit and independent review are NOT_RUN/UNASSESSED.** The
historical failed native ledger import remains FAIL. The sine-deficit
Hilbert–Schmidt certificate, stage sign, RH and primitive GRH remain OPEN.


## Independent shorter Euler-constant enclosure: 127 terms (NON-CYCLE)

2026-11-14, grwtsk contributors; AI-assisted. **Analytic source-only supplement.**
This is a second route to the **already stated** original q=3 odd multiplier bound
\(M_\chi(x)>253/250\) for all real \(x\ge256\); it changes neither the
mathematical source, the original signed prime-power table, the
\(\Lambda(4)=\log2\) factor, nor the phase \(x\log4\).
The preceding independent appendix used 1,024 harmonic terms; the route below
uses **127** and sharper elementary integral-tail accounting, at the cost of
a separate inequality for the Euler remainder. This is a possible smaller
Lean certification target, **not** an accepted Lean declaration.

For \(0<u<1\), write
\[
L_N(u)=2\sum_{k=0}^{N-1}\frac{u^{2k+1}}{2k+1},\qquad
U_N(u)=L_N(u)+\frac{2u^{2N+1}}{(2N+1)(1-u^2)}.
\]
The positive atanh series gives
\(L_N(u)<\log((1+u)/(1-u))<U_N(u)\).
Exact rational comparisons with \(N=5,u=1/3\) and \(N=7,u=1/2\)
give
\[
 L_5(1/3)<\log2<U_5(1/3)<69315/100000,
\]
\[
 10986/10000<L_7(1/2)<\log3<U_7(1/2)
 <1098613/1000000.
\]
For \(\gamma=\lim_{n\to\infty}(H_n-\log n)\), telescope the
differences \(1/k-\log(1+1/k)\). Since
\[
0\le\frac1k-\log(1+1/k)\le\frac1{2k^2},\qquad
\sum_{k>N}\frac1{k^2}\le\int_N^\infty\frac{dt}{t^2}=\frac1N,
\]
the **full infinite** Euler remainder obeys
\[
\gamma\le H_N-\log(N+1)+\frac1{2N}.
\]
At \(N=127\), \(\log128=7\log2\), hence exact fraction arithmetic gives
\[
 \gamma<H_{127}-7L_5(1/3)+\frac1{254}
 < \frac{57725}{100000}.
\]
This bound uses no numeric estimate of \(\gamma\) as an axiom.

For \(\pi\), put \(A_j(u)=\sum_{k=0}^j(-1)^k
u^{2k+1}/(2k+1)\). Machin's exact identity
\(\pi=16\arctan(1/5)-4\arctan(1/239)\) and alternating remainders give
\[
 \frac{157}{50}
 <16A_3(1/5)-4A_2(1/239)<\pi
 <16A_2(1/5)-4A_1(1/239)<\frac{1571}{500}.
\]
The identity itself follows from the tangent double-angle formula:
\(\tan(2\arctan(1/5))=5/12\),
\(\tan(4\arctan(1/5))=120/119\), and
\(\tan(4\arctan(1/5)-\arctan(1/239))=1\),
with the angle in \((0,\pi/2)\).
Taking \(u=71/1500\), using \(\pi/3<1+u\) and
\(\log(1+u)\le u-u^2/2+u^3/3\) gives the rational comparison
\[
 \log\pi<1098613/1000000+u-u^2/2+u^3/3
 <1144862/1000000.
\]
For the existing actual quarter-digamma normalization,
\[
1+\operatorname{gammaConstant}(3,1)
=1+\log3-\log\pi-\gamma+\pi/2-3\log2.
\]
Therefore the **outward** rational inequalities above imply
\[
1+\operatorname{gammaConstant}(3,1)>
1+\frac{10986}{10000}-\frac{1144862}{1000000}
-\frac{57725}{100000}+\frac{157}{100}
-3\frac{69315}{100000}
=-\frac{66481}{500000}>-\frac{133}{1000}.
\]
This replaces the 1,024-term harmonic certificate for the *same*
sharp gamma bracket, not the source gamma constant or Weil form.

The preceding appendix already gives the exact four-term-plus-shifted
original \(P_1\) tail \(P_1(x)>1157/200\) for all \(x\ge256\)
and the full signed inventory bound
\(\sum_{n=2}^7|w_\chi(n)|<58/25\).
Thus, **conditional on qualifying the actual native q=3 source table**,
\[
 M_\chi(x)>-133/1000+1157/200-2(58/25)
 =253/250>1,\quad \forall x\ge256.
\]
No compact continuum sine-deficit norm, finite-to-infinite cell enclosure,
original radius-one stage sign or RH/GRH theorem follows from this alone.

**Independent scratch arithmetic:** Python \`fractions.Fraction\` on
the displayed rational truncations and comparisons: **PASS** in the
authoring environment (script SHA-256
\`9c447649f41298423f7b636e9bfbd224575ff8d7d742b7857a36750cf4432cf7\`).
The script is not yet part of the repository; the inequalities above
remain reconstructible without it. The standard atanh, logarithmic
remainder, arctangent, Euler limit, and original gamma-source identities
need their own exact Lean formalization and imported-dependency replay.
**LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_UNASSESSED;
NATIVE_SIGNED_LEDGER_HISTORICAL_FAIL**. The original downstream
Hilbert–Schmidt continuum inequality and every global RH/GRH return
remain **OPEN**.
