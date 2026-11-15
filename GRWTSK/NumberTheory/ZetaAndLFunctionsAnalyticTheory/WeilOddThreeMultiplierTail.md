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