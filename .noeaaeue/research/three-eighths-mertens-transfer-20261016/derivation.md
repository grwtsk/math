# Three-eighths completed-line transfer from the refined quasi-Riemann boundary

## Status and source boundary

This package is a source-bound mathematical reduction. It combines:

1. the repository theorem
   `verticalLineMass_le_of_real_mertens_power_bound` from
   `GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean`;
2. the external Lean theorem `RH.Transport.zeta_nonvanishing` at
   `LW56e2/quasi-riemann-improved@b83dbbd914c5751acf9bc3389cde58970437278f`;
3. the classical/Pintz zero-free-to-Mertens power transfer for a rightmost-zero
   boundary strictly below one.

The external Lean project uses Lean 4.34.1 and a different Mathlib revision.
It was inspected, not imported or replayed under the `grwtsk/math` pin. The
Pintz argument is cited mathematics, not a theorem admitted in this repository.
Accordingly, the local Lean files are inactive candidates and every theorem
depending on those external inputs remains conditional in the local proof graph.

No proof of RH, no native theorem admission, and no explicit numerical value
for the existential Mertens constant is claimed.

## 1. Exact boundary arithmetic

Set

\[
B=\frac{4374785349}{5000000000}=0.8749570698.
\]

The external Lean theorem asserts nonvanishing of the totalized Mathlib
Riemann zeta function in the strict half-plane

\[
\Re s>B.
\]

The exact improvement below \(7/8\) is

\[
\delta=\frac78-B=\frac{214651}{5000000000}>0.
\]

Choose the midpoint exponent

\[
\eta=\frac\delta2=\frac{214651}{10000000000},
\qquad
\beta=B+\eta
=\frac{8749785349}{10000000000}<\frac78.
\]

The corresponding coherence/energy exponent is

\[
\alpha=2B-1
=\frac{1874785349}{2500000000}
=0.7499141396
<\frac34,
\]

with exact gain

\[
\frac34-\alpha
=\frac{214651}{2500000000}.
\]

## 2. Zero-free boundary to a Mertens power family

Let

\[
\vartheta=\sup\{\Re\rho:\zeta(\rho)=0,\ \rho\text{ nontrivial}\}.
\]

The external nonvanishing theorem gives \(\vartheta\le B\). Pintz's contour
argument in the case \(\vartheta<1\) gives, for every fixed
\(\varepsilon>0\), an existential constant \(C_\varepsilon\) such that

\[
|M(x)|\le C_\varepsilon x^{\vartheta+\varepsilon}
\le C_\varepsilon x^{B+\varepsilon}
\qquad(x\ge1).
\]

This package records that analytic passage as the open local interface

\[
\mathsf{MertensPowerFamilyAt}(B):
\quad
\forall\varepsilon>0\ \exists C_\varepsilon\ge0\
\forall x\ge1,\quad |M(x)|\le C_\varepsilon x^{B+\varepsilon}.
\]

The interface does not assert an explicit constant and does not infer an
Euler product inside the critical strip.

## 3. General completed-line transfer

The repository proves that if

\[
|M(x)|\le Cx^\beta,\qquad
\beta<\sigma+\frac12,\qquad \sigma>0,
\]

then, for every \(T\ge0\),

\[
\operatorname{verticalLineMass}(\sigma,T)
\le
\frac{C^2}{2\sigma^2(\sigma+\frac12-\beta)}.
\]

Fix any

\[
\sigma>B-\frac12
\]

and choose

\[
\varepsilon_\sigma
=\frac{\sigma+\frac12-B}{2},
\qquad
\beta_\sigma=B+\varepsilon_\sigma.
\]

Then

\[
\sigma+\frac12-\beta_\sigma
=\varepsilon_\sigma,
\]

and the repository theorem gives an existential \(C_\sigma\ge0\), independent
of \(T\), with

\[
\boxed{
\operatorname{verticalLineMass}(\sigma,T)
\le
\frac{C_\sigma^2}{\sigma^2(\sigma+\frac12-B)}
\quad(T\ge0).
}
\]

Thus the refined boundary controls every damping

\[
\sigma>B-\frac12
=\frac{1874785349}{5000000000}
=0.3749570698.
\]

## 4. Exact three-eighths specialization

At

\[
\sigma=\frac38,
\]

the margin is exactly

\[
\frac38-\left(B-\frac12\right)
=\delta
=\frac{214651}{5000000000}.
\]

Using \(\varepsilon=\delta/2\), the source exponent is the midpoint
\(\beta\) above, and the completed-line estimate becomes

\[
\boxed{
\operatorname{verticalLineMass}\left(\frac38,T\right)
\le
\frac{320000000000}{1931859}\,C_\eta^2
\quad(T\ge0).
}
\]

The multiplier is exact:

\[
\frac1{(3/8)^2\delta}
=
\frac{320000000000}{1931859}
\approx 165643.558872567810.
\]

The earlier \(7/8\) boundary alone has zero margin at \(\sigma=3/8\), so the
strict source theorem cannot be applied there. The refined boundary is
exactly what makes this endpoint available.

## 5. What remains before the one-third line

The line \(\sigma=1/3\) requires a Mertens exponent strictly below

\[
\frac13+\frac12=\frac56.
\]

The current external boundary is still to the right of \(5/6\) by

\[
B-\frac56
=
\frac{624356047}{15000000000}
\approx 0.041623736467.
\]

Therefore this advance reaches \(\sigma=3/8\), but it does not reach
\(\sigma=1/3\), the full reciprocal family, or RH.

## 6. Proof graph and formalization boundary

The proof graph is:

\[
\begin{aligned}
&\text{external Lean nonvanishing to the right of }B\\
&\quad+\text{Pintz zero-free-to-Mertens transfer}\\
&\Longrightarrow
\mathsf{MertensPowerFamilyAt}(B)\\
&\Longrightarrow
\text{uniform completed mass for every }\sigma>B-\tfrac12\\
&\Longrightarrow
\text{uniform completed mass at }\sigma=\tfrac38.
\end{aligned}
\]

Only the final power-bound-to-mass implication is already present at the local
repository pin. The exact rational arithmetic and implication plumbing are
candidate Lean source in this package. The external theorem transport and the
Pintz contour argument have not been admitted locally.

## 7. Hostile controls

The package rejects:

- replacing the strict boundary `B < Re(s)` by a claim on `B = Re(s)`;
- taking \(\varepsilon=0\);
- applying the local transfer at \(\sigma=3/8\) with exponent \(7/8\);
- claiming an explicit Mertens constant from an existential theorem;
- treating a theorem checked at Lean 4.34.1 as replayed at the local 4.33.0 pin;
- promoting the three-eighths line to the one-third line;
- inferring RH from one completed vertical line;
- changing the signed Möbius source or dropping floors, endpoints, or completion
  factors in the local source theorem.

## Status

`OPEN_FRONTIER`: the exact new result is the three-eighths source-mass
reduction. The smallest local formalization obligation is the
zero-free-to-Mertens power-family bridge at the refined rational boundary.
