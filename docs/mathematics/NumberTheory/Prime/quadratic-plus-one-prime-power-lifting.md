# Prime-power roots of \(x^2+1\)

Issue: `grwtsk/math#426`  
Parent: `grwtsk/math#262`  
Program: `grwtsk/math#257`  
Stacked source: draft PR #424 at
`f979725b01859450c1a345cd547c2eceedc80bf1`.

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / ANALYTIC_SUPPLIERS_OPEN**.

This note records the finite arithmetic used to lift roots of

\[
x^2+1\equiv 0 \pmod {p^k}
\]

through prime powers. It extends the local-root and thin-Gaussian packet in
PR #424. It does not provide a sieve estimate, a prime-detecting bilinear
estimate, a bound for a correction term, or a proof that \(n^2+1\) is prime
for infinitely many integers \(n\).

## 1. Canonical root sets

For every positive modulus \(d\), the inherited source uses

\[
R(d)=\{a\in\mathbb N:0\le a<d,\ d\mid a^2+1\},
\qquad
r(d)=|R(d)|.
\]

The range condition is part of the mathematical object. An arbitrary integer
congruent to a member of \(R(d)\) is not itself a second canonical residue.
For example, \(32\equiv 7\pmod {25}\), but only \(7\) lies in the selected
interval \([0,25)\).

PR #424 already identifies this natural representative set with the subtype

\[
\{x:\mathbb Z/d\mathbb Z:x^2=-1\}
\]

when \(d>0\), proves coprime CRT multiplicativity, and establishes the prime
local factors. The present increment concerns noncoprime powers of one prime,
which cannot be obtained from that CRT theorem.

## 2. One-step candidate

Fix a prime \(p\), an exponent \(k\ge 1\), and a canonical root
\(a\in R(p^k)\). Every integer in the same class modulo \(p^k\), and below
\(p^{k+1}\), has the form

\[
b=a+t p^k,\qquad 0\le t<p.
\]

The source names this value `quadraticLiftCandidate p k a t`. Direct
expansion gives

\[
\begin{aligned}
b^2+1
 &=a^2+1+2atp^k+t^2p^{2k}.
\end{aligned}
\]

Because \(p^k\mid a^2+1\), set

\[
q=\frac{a^2+1}{p^k}.
\]

Then

\[
b^2+1
 =p^k\left(q+2at+t^2p^k\right).
\]

Since \(k\ge1\), the last summand is divisible by \(p\). Cancellation of the
positive factor \(p^k\) therefore gives the exact correction criterion

\[
p^{k+1}\mid b^2+1
\quad\Longleftrightarrow\quad
p\mid q+2at.
\]

This is the finite Hensel equation used by the source. No limiting or
\(p\)-adic completeness argument is required for this one-step statement.

## 3. Why the odd-prime root is simple

Suppose \(p\mid a\). Then \(p\mid a^2\). Since \(p^k\mid a^2+1\) and
\(k\ge1\), also \(p\mid a^2+1\). Subtraction would give \(p\mid1\), which is
impossible for a prime. Thus

\[
p\nmid a.
\]

When \(p\ne2\), one also has \(p\nmid2\). Hence

\[
\gcd(2a,p)=1.
\]

Multiplication by \(2a\) is therefore invertible modulo \(p\). For the fixed
right-hand side \(-q\), there exists exactly one residue \(t\pmod p\), and
exactly one canonical digit \(0\le t<p\), satisfying

\[
2at\equiv-q\pmod p.
\]

The Lean source constructs this digit with the existing finite modular-inverse
API and proves uniqueness by cancelling the coprime coefficient in a modular
equality. It does not hide the derivative condition in a generic record.

## 4. Reduction and reconstruction

A root \(b\in R(p^{k+1})\) reduces to

\[
a=b\bmod p^k.
\]

The reduced value remains a root modulo \(p^k\). Because
\(0\le b<p^{k+1}=p^k p\), Euclidean division gives

\[
t=\left\lfloor\frac b{p^k}\right\rfloor<p
\]

and the exact reconstruction

\[
b=a+t p^k.
\]

The higher-level root condition implies that this \(t\) satisfies the same
linear correction congruence. By uniqueness, it is the selected lift digit
of \(a\). Consequently, reduction and the selected lift are inverse maps on
the canonical root sets:

\[
R(p^k)\simeq R(p^{k+1})
\]

for odd prime \(p\) and \(k\ge1\).

Taking finite cardinalities yields

\[
r(p^{k+1})=r(p^k).
\]

This is a local arithmetic equivalence. It is not a statement about the
number of prime values of \(n^2+1\).

## 5. Iterated odd-prime counts

Iteration reduces every positive exponent to exponent one:

\[
r(p^k)=r(p),\qquad k\ge1,
\]

for odd prime \(p\). Combining this with the inherited prime-level theorem
gives

\[
r(p^k)=
\begin{cases}
2,&p\equiv1\pmod4,\\
0,&p\equiv3\pmod4,
\end{cases}
\qquad k\ge1.
\]

The count remains exactly two at every power of a prime congruent to one
modulo four. It does not grow with the exponent.

A positive local count means only that some residue classes avoid divisibility
by that one prime power. It is not a lower-bound sieve and does not distinguish
prime polynomial values from composites that survive the selected local
conditions.

## 6. Exceptional two-adic branch

Modulo two, the single root is represented by one:

\[
r(2)=1.
\]

But every odd square is congruent to one modulo eight, so already modulo four
one has

\[
x^2+1\not\equiv0\pmod4.
\]

The finite source records this directly as

\[
r(4)=0.
\]

Since every \(2^k\) with \(k\ge2\) is divisible by four, any hypothetical
root modulo \(2^k\) would reduce to a root modulo four. Therefore

\[
r(2^k)=0,\qquad k\ge2.
\]

This is the required hostile case against noncoprime multiplicativity:

\[
r(4)=0\ne r(2)^2=1.
\]

The odd-prime simple-root theorem must not be applied at \(p=2\).

## 7. Concrete lift controls

Modulo five, the roots are two and three.

For \(a=2\),

\[
q=\frac{2^2+1}{5}=1,
\qquad
1+4t\equiv0\pmod5.
\]

The unique digit is \(t=1\), producing

\[
2+1\cdot5=7,
\qquad
25\mid7^2+1.
\]

For \(a=3\),

\[
q=\frac{3^2+1}{5}=2,
\qquad
2+6t\equiv0\pmod5.
\]

The unique digit is \(t=3\), producing

\[
3+3\cdot5=18,
\qquad
25\mid18^2+1.
\]

Thus the canonical roots modulo twenty-five are exactly

\[
R(25)=\{7,18\}.
\]

The controls also reject a wrong digit, preserve the canonical range, and
check that the count remains two modulo \(125\).

## 8. Local survival is not prime detection

The index \(n=8\) gives

\[
8^2+1=65=5\cdot13.
\]

It is a composite polynomial value despite being compatible with many other
local congruence conditions. Prime-power root data is indispensable for exact
sieve bookkeeping, but it does not by itself produce a lower bound for genuine
prime values.

Likewise, one lifted residue such as seven cannot be reused for every lower
cutoff in the unbounded-witness statement. The exact target still requires

\[
\forall B\;\exists n>B:\operatorname{Prime}(n^2+1).
\]

## 9. Resulting local-density interface

For bookkeeping, the source defines the exact rational local density

\[
\delta(p,k)=\frac{r(p^k)}{p^k}.
\]

For odd primes this specializes to

\[
\delta(p,k)=
\begin{cases}
2/p^k,&p\equiv1\pmod4,\\
0,&p\equiv3\pmod4.
\end{cases}
\]

These are finite identities. A positive Euler product or a heuristic product
of local densities is not a proved lower bound for prime values.

## 10. Remaining mathematical suppliers

After this increment, the unresolved tasks remain separate:

1. a polynomial-sieve Type-I estimate at a growing range of moduli;
2. a Type-II or Gaussian bilinear estimate that preserves the thin condition
   \(ad+bc=1\);
3. a complete correction from the selected weighted source to genuine prime
   values;
4. a strict positive margin valid for every sufficiently large cutoff;
5. complete finite verification below the asymptotic cutoff;
6. exact-source elaboration and trust acceptance for all current source
   packets.

No one of these is supplied by the prime-power lift.

## 11. Verification boundary

The modules and replay target are static source artifacts. Independent finite
diagnostics check the lift equation, uniqueness of canonical digits, count
stability, two-adic extinction, Euclidean reconstruction, and hostile controls.
Those diagnostics do not elaborate Lean and do not constitute a kernel or
transitive-axiom audit.

Until an exact-source replay is accepted, the status remains:

```text
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / ANALYTIC_SUPPLIERS_OPEN
```
