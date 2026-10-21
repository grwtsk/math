# Concrete finite rational arcs for the Goldbach coefficient

Status: **SOURCE ONLY / NOT RUN / NOT KERNEL AUDITED**

This packet specializes the abstract measurable partition from the preceding
Goldbach truncation packet to a concrete finite family of reduced rational
centers. It does not supply an approximation theorem on those arcs.

## 1. Reduced rational indices

For a denominator cutoff \(Q\), define

\[
\mathcal I_Q
=
\{(a,q): 0\le a<q\le Q,\ \gcd(a,q)=1\}.
\]

The source realizes this as a filtered finite product. The exact membership
theorem retains all five conditions:

\[
a\le Q,\qquad q\le Q,\qquad q>0,\qquad a<q,\qquad (a,q)=1.
\]

At \(Q=0\), the family is empty. At \(Q=1\), it consists only of \(0/1\).
At \(Q=2\), it additionally contains \(1/2\).

## 2. Fixed radius and period lifts

For target \(N\), the radius attached to denominator \(q\) is

\[
r_{Q,N}(q)
=
\frac{Q}{q(N+1)}.
\]

The shift \(N+1\) makes the expression total on natural inputs. This is a
declared finite geometry, not an asserted optimal circle-method scale.

For a reduced center \(c=a/q\), the raw periodized arc is the union of the
three closed intervals centered at

\[
c,\qquad c+1,\qquad c-1
\]

with common radius \(r_{Q,N}(q)\). The adjacent lifts retain the endpoint
identification of the additive circle before the result is clipped to the
integration domain \((0,1]\).

The source proves measurability of every raw arc and of their finite union. It
does **not** assume the raw arcs are disjoint. A concrete control exhibits
overlap.

## 3. Exact clipped partition

Let

\[
\mathfrak M_{Q,N}
=
(0,1]\cap
\bigcup_{(a,q)\in\mathcal I_Q}
\mathfrak A_{Q,N}(a,q)
\]

and

\[
\mathfrak m_{Q,N}
=
(0,1]\setminus
\bigcup_{(a,q)\in\mathcal I_Q}
\mathfrak A_{Q,N}(a,q).
\]

The packet proves only the exact set identities:

\[
\mathfrak M_{Q,N}\cup\mathfrak m_{Q,N}=(0,1],
\qquad
\mathfrak M_{Q,N}\cap\mathfrak m_{Q,N}=\varnothing.
\]

Clipping is essential: raw periodized intervals can extend outside the unit
domain, and the endpoint zero remains excluded by the inherited interval
convention.

## 4. Signed coefficient decomposition

Using the exact prime-log Goldbach integrand \(F_N\), define

\[
I_{\mathfrak M}(Q,N)
=
\int_{\mathfrak M_{Q,N}} F_N(\alpha)\,d\alpha,
\]

\[
I_{\mathfrak m}(Q,N)
=
\int_{\mathfrak m_{Q,N}} F_N(\alpha)\,d\alpha.
\]

The inherited continuous coefficient identity gives the exact recombination

\[
I_{\mathfrak M}(Q,N)+I_{\mathfrak m}(Q,N)
=
\operatorname{goldbachLogMass}(N).
\]

This is bookkeeping. It is not a lower bound.

## 5. Conditional terminal consumers

The first specialized consumer requires

\[
M\le \Re I_{\mathfrak M}(Q,N),
\qquad
\lVert I_{\mathfrak m}(Q,N)\rVert\le E,
\qquad
E<M.
\]

Only from all three premises does it conclude positivity of the existing exact
Goldbach count.

The second consumer keeps the rational-arc cutoff and local-factor cutoff as
independent parameters. A finite local main scale may be used only with a
separate local approximation error and a complete signed minor error, each
charged once under a strict margin.

## 6. Deliberate nonclaims

This packet does not prove:

- disjointness of the raw rational arcs;
- a Farey dissection or optimal width theorem;
- a major-arc approximation for the prime-log exponential sum;
- a minor-arc norm estimate;
- convergence or a tail bound for an infinite singular series;
- a uniform positive margin for every sufficiently large even target;
- finite exception coverage;
- strong Goldbach.

The next analytic obligation is to approximate the exact prime-log exponential
sum on this declared family and bound the complete signed complement.
