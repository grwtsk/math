# Rough Liouville causal Buchstab identity and a proportional-cutoff obstruction

**Disposition:** source-bound signed least-prime-factor identity and an
unconditional lower bound for the actual Liouville rough waveform at one
proportional cutoff; no new upper cancellation estimate and no claim of
Riemann Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`e95e06ef59ce42b58e1b4a43a4b54325e68a9aa1`, tree
`1368b236438bea531ae7a21ec3dda169a634754d`.

**Upstream source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleFinitePrimeSieveOperator.lean`,
blob `46a61238b137d9265c2f81c6e6b5a964ca4910e7`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleRoughCausalBuchstab.lean`.

**Verification status:** analytical derivation and static source construction
only. Compilation, expected-type checking, fresh-kernel replay, and transitive
axiom audit are all `NOT_RUN`.

## 1. Fixed source

Retain the actual real Liouville coefficient and original response

\[
r_n(u)=2\max\left(n^{-1/2}-e^{-u/2},0\right).
\]

For an integer cutoff \(Y\ge1\), define the actual rough waveform

\[
F_Y(u)
=
\sum_{\substack{n\le e^u\\p\mid n\Rightarrow p>Y}}
\lambda(n)r_n(u)
\]

and its energy

\[
E_Y(T)=\int_0^T|F_Y(u)|^2\,du.
\]

This is exactly the previously published `siftedWaveform` for the initial
prime band containing every prime at most \(Y\).  It is not a probabilistic
rough-number model.

For a prime \(p\), also define the closed descendant

\[
F_{\ge p}(u)
=
\sum_{\substack{n\le e^u\\q\mid n\Rightarrow q\ge p}}
\lambda(n)r_n(u).
\]

The weak inequality in the descendant is essential: after extracting one
least prime \(p\), the remaining factor may still contain any positive power
of \(p\).

## 2. Exact signed causal Buchstab identity

Let \(Y\le Z\).  Every integer counted by \(F_Y-F_Z\) has a unique least
prime factor \(p\in(Y,Z]\).  Write \(n=pm\).  Then every prime divisor of
\(m\) is at least \(p\), while complete multiplicativity and the original
causal response give

\[
\lambda(pm)=-\lambda(m),
\qquad
r_{pm}(u)=p^{-1/2}r_m(u-\log p).
\]

The birth restriction is exact on both sides.  Therefore finite
least-prime-factor partitioning gives

\[
\boxed{
F_Y(u)
=
F_Z(u)
-
\sum_{Y<p\le Z}
p^{-1/2}F_{\ge p}(u-\log p).
}
\tag{2.1}
\]

No repeated-prime term, unsifted remainder, or exceptional integer is omitted.

Taking \(Z\ge e^u\), the only source index with no prime divisor at most \(Z\)
is \(1\).  Thus

\[
\boxed{
F_Y(u)
=
r_1(u)
-
\sum_{Y<p\le e^u}
p^{-1/2}F_{\ge p}(u-\log p).
}
\tag{2.2}
\]

This is the signed causal analogue of Buchstab least-prime-factor
decomposition.  It is a source identity, not a cancellation estimate.

## 3. Integrated covariance identity

Define the complete signed covariance

\[
\mathcal C_Y(T)
=
\sum_{Y<p\le e^T}
p^{-1/2}
\int_0^T
F_Y(u)F_{\ge p}(u-\log p)\,du.
\tag{3.1}
\]

Terms before the birth \(u=\log p\) vanish automatically.  Multiplying
(2.2) by \(F_Y(u)\) and integrating gives

\[
\boxed{
E_Y(T)
=
\int_0^T F_Y(u)r_1(u)\,du
-
\mathcal C_Y(T).
}
\tag{3.2}
\]

Let

\[
E_1(T)=\int_0^T r_1(u)^2\,du.
\]

Since

\[
r_1(u)=2(1-e^{-u/2})
\qquad(u\ge0),
\]

one has the exact formula

\[
E_1(T)
=
4T-12+16e^{-T/2}-4e^{-T}
\le4T.
\tag{3.3}
\]

Put

\[
R_Y(T)=\max\{-\mathcal C_Y(T),0\}.
\]

Cauchy--Schwarz followed by \(2ab\le a^2+b^2\) gives

\[
\begin{aligned}
E_Y(T)
&\le
\sqrt{E_Y(T)E_1(T)}+R_Y(T)\\
&\le
\frac12E_Y(T)+\frac12E_1(T)+R_Y(T).
\end{aligned}
\]

Hence

\[
\boxed{
E_Y(T)\le E_1(T)+2R_Y(T)\le4T+2R_Y(T).
}
\tag{3.4}
\]

This is an exact one-sided signed-covariance transfer.  The prime sum is
formed before the negative part is taken.

Combined with the existing paid finite-prime sieve comparison,

\[
H_\lambda(T)
\le
\kappa(Y)E_Y(T),
\qquad
\kappa(Y)
=
\prod_{p\le Y}(1-p^{-1/2})^{-2},
\]

it follows that a sufficient arithmetic supplier is

\[
\kappa(Y(T))
\left(
4T+2R_{Y(T)}(T)
\right)
\le
C_\varepsilon e^{\varepsilon T}
\tag{3.5}
\]

for every positive \(\varepsilon\), with a permitted horizon-dependent
cutoff \(Y(T)\).

Equation (3.5) does not assert independent prime signs, take absolute values
inside (3.1), or replace the complete covariance by a maximum over primes.

## 4. Explicit proportional cutoff

The first test is

\[
Y_T=\left\lfloor e^{2T/5}\right\rfloor.
\tag{4.1}
\]

The result below shows that this cutoff fails for an arithmetic reason before
the already-recorded inverse-conditioning cost is paid.

For real \(x\ge1\), define the actual rough Liouville prefix

\[
L_T(x)
=
\sum_{\substack{n\le x\\p\mid n\Rightarrow p>Y_T}}
\lambda(n).
\tag{4.2}
\]

Consider

\[
e^{9T/10}\le x\le e^T
\]

and put

\[
\alpha=\frac{\log Y_T}{\log x}.
\]

Ignoring the harmless floor in (4.1), uniformly in this interval,

\[
\frac25\le\alpha\le\frac49.
\tag{4.3}
\]

For large \(T\), the floor perturbation is absorbed into the error terms below.

Since \(Y_T^3>e^T\ge x\), every rough integer \(n\le x\) has at most two
prime factors counted with multiplicity.  Consequently

\[
L_T(x)
=
1-\bigl(\pi(x)-\pi(Y_T)\bigr)+Q(x,Y_T),
\tag{4.4}
\]

where the semiprime count is exactly

\[
Q(x,y)
=
\sum_{y<p\le\sqrt x}
\bigl(\pi(x/p)-\pi(p)+1\bigr).
\tag{4.5}
\]

Prime squares are included by the \(+1\) term.

## 5. Uniform prime--semiprime asymptotic

The prime number theorem in the form

\[
\pi(z)=\frac z{\log z}
+O\left(\frac z{\log^2 z}\right)
\tag{5.1}
\]

is uniform on every range used below.  In (4.5),

\[
\sum_{y<p\le\sqrt x}\pi(p)
\ll\frac{x}{\log^2x},
\]

and the same bound absorbs the prime-square correction.  Also,

\[
\pi(x/p)
=
\frac{x/p}{\log(x/p)}
+
O\left(
\frac{x/p}{\log^2(x/p)}
\right).
\]

Because \(p\le\sqrt x\), the sum of these errors is
\(O(x/\log^2x)\), uniformly for \(\alpha\in[2/5,4/9]\).  Partial summation
with the prime number theorem gives

\[
\begin{aligned}
Q(x,y)
&=
x\sum_{y<p\le\sqrt x}
\frac1{p\log(x/p)}
+
O\left(\frac{x}{\log^2x}\right)\\
&=
\frac{x}{\log x}
\int_\alpha^{1/2}
\frac{dv}{v(1-v)}
+
O\left(\frac{x}{\log^2x}\right)\\
&=
\frac{x}{\log x}
\log\left(\frac{1-\alpha}{\alpha}\right)
+
O\left(\frac{x}{\log^2x}\right).
\end{aligned}
\tag{5.2}
\]

The term \(\pi(Y_T)\) is exponentially smaller than \(x/\log x\) on
the terminal interval.  Therefore (4.4) becomes

\[
L_T(x)
=
\frac{x}{\log x}
\left[
-1+\log\left(\frac{1-\alpha}{\alpha}\right)
+O\left(\frac1{\log x}\right)
\right].
\tag{5.3}
\]

The function in brackets is largest at \(\alpha=2/5\).  Define

\[
\eta_0
=
1-\log\frac32
>0,
\qquad
c_0=\frac{\eta_0}{2}.
\tag{5.4}
\]

For all sufficiently large \(T\), uniformly for
\(e^{9T/10}\le x\le e^T\),

\[
\boxed{
L_T(x)\le-c_0\frac{x}{\log x}.
}
\tag{5.5}
\]

This is an unconditional one-sided estimate for the actual Liouville signs on
the selected rough support.  It is a negative main term, not cancellation.

## 6. Transport through the original causal response

The exact causal Abel identity is

\[
F_{Y_T}(u)
=
\int_1^{e^u}L_T(t)t^{-3/2}\,dt.
\tag{6.1}
\]

Let

\[
x_0=e^{9T/10}.
\]

For the early portion, the trivial bound \(|L_T(t)|\le t\) gives

\[
\left|
\int_1^{x_0}L_T(t)t^{-3/2}\,dt
\right|
\le2e^{9T/20}.
\tag{6.2}
\]

For \(T-1\le u\le T\), once \(T\ge10\), equation (5.5) gives

\[
\begin{aligned}
\int_{x_0}^{e^u}L_T(t)t^{-3/2}\,dt
&\le
-c_0\int_{x_0}^{e^u}\frac{dt}{\sqrt t\log t}\\
&\le
-\frac{2c_0}{T}
\left(e^{u/2}-e^{9T/20}\right).
\end{aligned}
\tag{6.3}
\]

Combining (6.2) and (6.3),

\[
F_{Y_T}(u)
\le
-\frac{2c_0}{T}e^{u/2}
+
\left(2+\frac{2c_0}{T}\right)e^{9T/20}.
\tag{6.4}
\]

Since \(u\ge T-1\), the second term is exponentially smaller.  Thus there is
an absolute \(T_0\) such that

\[
\boxed{
F_{Y_T}(u)
\le
-\frac{c_0}{T}e^{u/2}
\qquad
(T\ge T_0,\ T-1\le u\le T).
}
\tag{6.5}
\]

No assertion about individual source cells is used.

Squaring and integrating over the final unit interval yields

\[
\begin{aligned}
E_{Y_T}(T)
&\ge
\frac{c_0^2}{T^2}
\int_{T-1}^T e^u\,du\\
&=
c_0^2(1-e^{-1})\frac{e^T}{T^2}.
\end{aligned}
\]

Therefore

\[
\boxed{
E_{Y_T}(T)
\ge
\frac{(1-\log(3/2))^2}{4}
(1-e^{-1})
\frac{e^T}{T^2}
\qquad(T\ge T_0).
}
\tag{6.6}
\]

The displayed constant is approximately \(0.055859\).

## 7. Consequence

The proportional initial-prime cutoff \(Y_T=e^{2T/5}\) retains positive
exponential energy for the actual Liouville rough source.  It fails before
multiplication by

\[
\kappa(Y_T)
=
\prod_{p\le Y_T}(1-p^{-1/2})^{-2}.
\]

Thus the fixed-degree rough-number strategy is obstructed twice:

1. the exact inverse conditioning is superexponential at a proportional
   prime cutoff;
2. the sifted source itself has energy \(\gg e^T/T^2\).

The obstruction is arithmetic and source-specific.  It is stronger than a
support-counting statement because it uses the actual Liouville signs and
identifies their prime-versus-semiprime imbalance.

It does not imply that every rough cutoff fails.  A viable cutoff must lie in
the genuinely growing-degree regime

\[
\log Y(T)=o(T),
\]

and, for the existing paid norm transfer, should satisfy the stronger
subexponential-conditioning requirement recorded in the predecessor review.

## 8. Remaining noncircular junction

For a polynomial or slightly subquadratic cutoff, for example

\[
Y(T)=T^A,\qquad 0<A<2,
\]

the existing elementary conditioning estimate is subexponential:

\[
\log\kappa(Y(T))
\ll T^{A/2}.
\]

However,

\[
\frac{\log(e^T)}{\log Y(T)}
=
\frac{T}{A\log T}\longrightarrow\infty,
\]

so no bounded prime-factor decomposition applies.

The exact remaining arithmetic quantity is the complete covariance (3.1).
The next bounded research step is to derive a quantitative estimate for its
negative part at a subexponentially conditioned cutoff, preserving:

- the whole prime sum before inequalities;
- the closed descendant \(F_{\ge p}\);
- repeated powers of the extracted prime;
- every rough survivor;
- the zero-birth collars;
- the exact inverse-conditioning factor.

Termwise bounds on

\[
\left|
\int F_Y(u)F_{\ge p}(u-\log p)\,du
\right|
\]

would erase the only new signed channel and return to the norm barrier.

## 9. Literature and novelty boundary

Buchstab and de Bruijn developed the classical least-prime-factor theory and
rough-number asymptotics.  Steve Fan's 2024 work gives modern explicit uniform
estimates for the unsigned rough-number count
\(\Phi(x,y)\), DOI `10.1016/j.jnt.2024.01.008`,
arXiv `2306.03347`.

Kevin Ford and James Maynard, *On the theory of prime producing sieves*
(2024), arXiv `2407.14368`, explicitly use modified Liouville functions
supported on rough numbers to expose sharp Type I/Type II and parity
limitations.  Their framework confirms that rough Liouville models belong to
established sieve-parity theory; it does not state the present causal-energy
lower bound.

Tao and Teräväinen's 2022 Siegel-zero work uses a smooth/rough factorization
of Liouville in a conditional correlation setting.  It does not supply the
unconditional physical-time covariance estimate required here.

Accordingly, no broad novelty claim is made for least-prime-factor
decomposition, the prime number theorem, the semiprime integral, or the parity
phenomenon.  The programme-specific contribution is:

1. the exact least-prime-factor decomposition with the unchanged GRWTSK
   causal response;
2. the complete signed covariance transfer (3.4);
3. the explicit unconditional lower bound (6.6) for the actual horizon-selected
   rough Liouville waveform.

## 10. Formalization and verification status

New source declarations include:

- `roughAbove`;
- `roughAtLeast`;
- `roughPrefixAbove`;
- `roughWaveformAbove`;
- `roughEnergyAbove`;
- `roughWaveformAtLeast`;
- `primeCutoffInterval`;
- `CausalBuchstabWaveformIdentity`;
- `TerminalCausalBuchstabIdentity`;
- `buchstabCovariance`;
- `unitResponseEnergy`;
- `CausalBuchstabEnergyIdentity`;
- `BuchstabNegativeCovarianceTransfer`;
- `RoughWaveformEqualsInitialSieve`;
- `PaidBuchstabCovarianceSupplier`;
- `PaidBuchstabSupplierImpliesUniformEnergy`;
- `proportionalCutoff`;
- `proportionalBand`;
- `proportionalRoughEnergy`;
- `ProportionalRoughEnergyLowerBound`.

The identity, covariance transfer, prime-number-theorem asymptotic and energy
lower bound are source proof candidates.  They are not axioms or accepted Lean
theorems.

Verification remains:

- source inspection: `DONE`;
- analytical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`.

No runtime script, mutable receipt, controller, queue, or browser state is
stored in the mathematics repository.
