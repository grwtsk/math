# PR103 refinement on the existing completed-residual line

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** The completed-residual construction already uses the line
\(\operatorname{Re}s=9/8\), retains the whole noncertified zero divisor, and
reduces one-zero resolution to a finite completed von Mangoldt energy plus a
uniform prime-series tail.  The merged PR103 numerical strip is narrower than
the earlier \([1/8,7/8]\) strip.  This note uses that narrower strip without
moving the completed-residual line.  The resulting rational nearest-bin
constant is \(8007/10000\), which raises the admissible finite energy from
\(3/5\) to \(631/1000\) while leaving the source, the line, the tail envelope,
the cutoff \((Z+1)^{128}\), and the certified-zero subtraction unchanged.

The new Lean module also proves the literal singleton-window identity
\[
  \operatorname{pntWindow}(n-1,1)=\Lambda(n)
\]
for every positive integer \(n\).  This removes the predecessor's named
`UnitPrimeWindowSingletonIdentity` premise from the finite p-adic reassembly.

The PR103-to-zeta strip transport, the completed Hadamard identity, the
von Mangoldt tail integral, the scheduled tail budget, the finite arithmetic
energy estimate, compilation, kernel replay, and axiom audit remain separate.

## 1. Same line, narrower strip

The visible external strip premise is
\[
  \frac{633}{5000}\le\beta\le\frac{4367}{5000}
\]
for every nontrivial zeta zero \(\rho=\beta+i\gamma\).  This interval is
contained in \([1/8,7/8]\), so all positivity statements from the
seven-eighths completed residual remain available.

At the unchanged line \(\sigma=9/8\), set
\[
  a=\frac98-\beta,\qquad d=b(\rho)-\gamma,
\]
where \(b(\rho)\) is the nearest integer frequency.  Then
\[
  \frac{629}{2500}\le a\le\frac{624}{625},
  \qquad d^2\le\frac14.
\]

The scalar kernel is
\[
  K(a,d)=\frac{a}{a^2+d^2}.
\]
On the displayed rectangle,
\[
  \boxed{K(a,d)\ge\frac{8007}{10000}.}
\]

A direct polynomial proof is used.  The endpoint product
\[
  \left(a-\frac{629}{2500}\right)
  \left(\frac{624}{625}-a\right)
\]
is nonnegative.  Together with the upper endpoint bound it implies
\[
  \frac{8007}{10000}\left(a^2+\frac14\right)\le a.
\]
Since \(d^2\le1/4\), the kernel inequality follows.  The actual minimum at the
right endpoint is
\[
  \frac{1560000}{1948129}\approx0.8007683269,
\]
so the rational constant \(8007/10000=0.8007\) has a strict margin.

## 2. Improved zero-side frame

Let \(M_k\) be the total analytic multiplicity assigned to nearest bin \(k\),
and let \(S_k\) be the existing seven-eighths-line sample.  Positivity gives
\[
  S_k\ge\frac{8007}{10000}M_k.
\]
Because \(M_k\) is a nonnegative integer, \(M_k^2\ge M_k\).  Therefore
\[
  64112049\,M_k
  \le100000000\,S_k^2.
\]
Summing the bins yields
\[
  \boxed{
  64112049\,D_Z
  \le100000000\,E_Z^{(9/8)}.
  }
\]

The corresponding exact energy threshold for \(D_Z\le1\) is
\[
  E_Z^{(9/8)}
  <\frac{64112049}{50000000}
  \approx1.28224098.
\]

This is a same-line refinement.  It does not require the rational PR103
sampling line from the predecessor module, so the already-derived
\(N^{-1/8}(8\log N+64)\) tail remains unchanged.

## 3. Improved finite completed-residual criterion

The predecessor perturbation theorem gives
\[
 E_Z^{(9/8)}
 \le 2E_{N,Z}^{\mathrm{fin}}+2(Z+1)\tau_N^2.
\]
At the fixed cutoff \(N=(Z+1)^{128}\), retain the existing target
\[
  (Z+1)\tau_N^2<\frac1{100}.
\]

If
\[
  E_{N,Z}^{\mathrm{fin}}<\frac{631}{1000},
\]
then
\[
  E_Z^{(9/8)}
  <2\left(\frac{631}{1000}+\frac1{100}\right)
  =\frac{641}{500}=1.282.
\]
The strict rational comparison
\[
  \frac{641}{500}
  <
  \frac{64112049}{50000000}
\]
leaves a positive margin.  The improved frame therefore gives
\[
  D_Z<2,
\]
and integrality yields \(D_Z\le1\).

The new finite arithmetic target is consequently
\[
  \boxed{
  \sum_{k=0}^{Z}
  A_{(Z+1)^{128},k}^2
  <\frac{631}{1000}.
  }
\]
This is strictly weaker than the predecessor bound \(3/5\), with no change to
the finite completed residual \(A_{N,k}\).

## 4. Unit-window singleton identity

For \(n\ge1\),
\[
  (n-1)+1=n
\]
and
\[
  \operatorname{Ioc}(n-1,n)=\{n\}
\]
in the natural numbers.  Hence
\[
\begin{aligned}
  \operatorname{pntWindow}(n-1,1)
  &=\sum_{m\in\operatorname{Ioc}(n-1,n)}\Lambda(m)\\
  &=\Lambda(n).
\end{aligned}
\]

The module proves this directly and supplies
`UnitPrimeWindowSingletonIdentity N` for every cutoff `N`.  The finite
centered-packet polynomial can therefore be identified with the existing
p-adic unit-window packet polynomial using only the source split premise.

## 5. What remains

The new finite threshold does not prove the missing arithmetic estimate.
The following remain load-bearing:

1. transport of the merged PR103 Dirichlet-L result to the actual zeta strip;
2. `CompletedPoissonDomination` from the symmetrically ordered Hadamard
   logarithmic derivative with actual analytic multiplicity;
3. the explicit von Mangoldt tail integral and scheduled `1/100` budget in
   Lean;
4. the cofinal finite completed-residual energy bound below `631/1000`;
5. compilation, exact-type checking, fresh-kernel replay, and transitive
   axiom audit.

No cofinal numerical witness or Riemann Hypothesis conclusion is claimed.
