# The complete zero expansion for a weighted prime cell

Use the auxiliary primes and cells in §§II.4–5 of the November 21 exposition. Thus \(q\equiv3\bmod8,\ d\equiv7\bmod16,\ q\mid d+1\), \(N=4n\), \(H=(\mathbb Z/N)^\times/\{\pm1\}\), \(G=\{\pm1\}\times H\), and \(\mu=1/(2n)\). For a table \(w_i>0\), scale \(a=a_t>0\), and shift \(t\), the original prime sum \(P\) uses \(i=(\chi_q(r),t[r])\) and \((1-\chi_d(r))\Lambda(r)(a/r-w_i)_+\). Here \(\chi_q,\chi_d\) are the quadratic characters of discriminants \(-q,-d\). Each weight in the results below is the weight of its original cell. [Prime table and earlier translation estimates](AlpogeMainPrimeArithmetic.md) · [Rubinstein et al., November 21 draft, II.4–5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

## One primitive character including the origin

For a primitive character \(\chi\) of conductor \(f\), write \(\epsilon=0,1\) for its parity. Include the conductor-one character with \(L=\zeta\). Put \(S_\chi(y)=\sum_r\chi(r)\Lambda(r)(y/r-1)_+\). For \(y\ge1\) its residue at one gives
\[
 A_\chi(y)=\begin{cases}
 y(\log y-1-\gamma_E),& f=1,\\
 -y L'(1,\chi)/L(1,\chi),&f>1 .
 \end{cases}
\]
Let \(b_\chi=1\) for even nonprincipal \(\chi\) and zero otherwise. With \(\psi=\Gamma'/\Gamma\), the constant term \(c_\chi\) in \(L'/L\) at zero is
\[
 c_\chi=\begin{cases}
 \log(2\pi),&f=1,\\
 \gamma_E+\log(2\pi/f)-L'(1,\bar\chi)/L(1,\bar\chi),&f>1 .
 \end{cases}
\]
The complete remainder is
\[
 S_\chi(y)-A_\chi(y)=b_\chi(1+\log y)+c_\chi-T_\epsilon(1/y)
 -\sum_{\rho} \frac{y^\rho}{\rho(\rho-1)}.                                    \tag{1}
\]
The sum is over the nontrivial zeros of this particular character, including multiplicity and any real zero. It is absolutely convergent for fixed \(y\). Here \(T_\epsilon(v)=\sum_{k\ge1,\ k\equiv\epsilon\bmod2} v^k/[k(k+1)]\). It equals \((J(v)+(-1)^\epsilon J(-v))/2\), where \(J(v)=1+(v^{-1}-1)\log(1-v)\), continued by limits at zero and one. In particular (1) includes the two different negative-integer tails for a character and its twist by the odd character \(\chi_d\).

To derive the origin term, log-differentiate the completed Dirichlet functional equation. The two digamma terms have factor \(-1/2\) and arguments \((s+\epsilon)/2,(1-s+\epsilon)/2\). Use \(\psi(z)=-1/z-\gamma_E+O(z)\), \(\psi(1/2)=-\gamma_E-2\log2\), \(\psi(1)=-\gamma_E\). For nonprincipal characters \(L(1,\bar\chi)\ne0\). For zeta its pole cancels the digamma pole and its finite logarithmic derivative at one contributes \(-\gamma_E\). These give the stated \(b_\chi,c_\chi\). At zero the Mellin quotient \(-L'/[Ls(s-1)]\) therefore has double and simple coefficients \(b_\chi,b_\chi+c_\chi\). Multiplication by \(y^s\) gives the displayed logarithm. At one the Mellin kernel contributes the separate \(-1\) in \(A_1\).

One can obtain (1) without estimating horizontal contours through zeros. The genus-one Hadamard expansion of the logarithmic derivative of \(L\), with the zeta pole removed if present, is the sum of a constant, the explicit origin/pole terms, and \(m_\nu((s-\nu)^{-1}+\nu^{-1})\) for its other zeros. This follows from the order-one completed product and the reciprocal gamma product; the gamma factor accounts for the negative integers. The grouped terms converge locally normally away from poles, as \(\sum_{\nu\ne0}m_\nu/|\nu|^2<\infty\). Truncate these terms, multiply the negative logarithmic derivative by \(1/[s(s-1)]\), and take ordinary rational partial fractions. There is no polynomial part. At a retained zero \(\nu\ne0,1\) the coefficient is \(-m_\nu/[\nu(\nu-1)]\); the Laurent coefficients at zero and one converge by local normal convergence of the regular parts. With \(y=e^v\), \(v\ge0\), the Laplace transform of \(y^\nu\) is \(1/(s-\nu)\) and that of \(v y^\nu\) is \(1/(s-\nu)^2\). For \(\Re s>1\), the absolute reciprocal-square tail justifies termwise transforms. The original prime ramp has transform \(-L'/[Ls(s-1)]\) by integrating each term from \(\log r\). Uniqueness of the Laplace transform and continuity give equality everywhere on \(v\ge0\), including \(y=1\). [Riemann, original completed product and prime formula](https://www.claymath.org/collections/riemanns-1859-manuscript/) · [Bennett, Martin, O'Bryant and Rechnitzer, conductor-uniform zero counts](https://arxiv.org/abs/2005.02989)

## Return to each original table

Write \(\chi_\eta\) for the primitive character inducing \(r\mapsto\eta(\chi_q(r),[r])\) for \(\eta\in\widehat G\). These \(2n\) characters are distinct by CRT and the independent quadratic coordinate modulo \(q\). Their conductors divide \(4nq\); the coprime twist by the primitive character \(\chi_d\) is primitive of conductor \(df_\eta\). At bases \(2,q\) the missing terms have coefficient zero since \(\chi_d(2)=\chi_d(q)=1\). At \(p=d\) the product character vanishes while the first character remains; each ramified power keeps its \(\log d\) weight and its powered cell label. For \(i=(v,s_0)\) put \(j_i=(v,t^{-1}s_0)\), \(y_i=a/w_i\). Define \(D_\chi(y)\) by the right side of (1) for \(y\ge1\), and by \(-A_\chi(y)\) for \(0<y<1\), since then the original ramp is zero. The complete subtraction from the original (M) is
\[
 P-M=\mu\sum_{\eta,i}\overline{\eta(j_i)}w_i
             [D_{\chi_\eta}(y_i)-D_{\chi_\eta\chi_d}(y_i)].                      \tag{2}
\]
Indeed Fourier orthogonality gives the original \(P\) with \(S\) in place of \(D\). In \(w_i A_\chi(a/w_i)\), the coefficient multiplying the nonprincipal logarithmic derivative is \(a\) independent of \(i\); the nontrivial Fourier modes sum to zero. The remaining terms yield exactly
\(M=a(\log a-1-\gamma_E+L'(1,\chi_d)/L(1,\chi_d)-\mu\sum_i\log w_i)\).
This verifies the exchange's center while preserving all contributions beyond the residue. [Actual arithmetic definitions](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean) · [Exceptional-prime check](AlpogeExceptionalPrimePowers.lean)

In particular for a common weight \(w\), write \(y=a/w\ge1\). After division by \(w\), the complete elementary part of \((P-M)/w\), before the signed pair of nontrivial zero sums in (1), is
\[
 \log d-\gamma_E+L'(1,\chi_d)/L(1,\chi_d)+(y+1)\log(1+1/y)-1 .
\]
The origin orders are both zero. Subtracting the constants gives the first three terms, while the odd minus the even negative-integer tail equals \(-J(-1/y)\). Omitting the ramified conductor constant or reversing the two parity tails would change the answer even for identical weights.

For \(U\ge2\) truncate all nontrivial zero sums in (2) at \(|\Im\rho|\le U\). The absolute error for one table is
\[
              \ll n a\,\frac{\log(4dnq(U+2))}{U} .                              \tag{3}
\]
For each primitive character use \(N(V)=O(V\log(f(V+2)))\), and dyadically sum \(O(N(2V)/V^2)\) starting at \(V=U\). For cells with \(y_i\ge1\), \(w_i y_i^{\Re\rho}\le a\). There are \(2n\) characters, two signs, and the normalized sum of all cell coefficients in absolute value is one for each character. Cells below threshold incur no truncation. The conductor-one count follows from the classical zeta counting formula. Consequently after summation over \(u,t,j\) and division by \(nB\), the error is at most an absolute constant times \(n\sum_{u,t,j}a_t\log(4dnq(U+2))/(UnB)\). This is a conductor-uniform control on the omitted large ordinates. The signed low-zero expression and the original geometric inequality remain to be controlled. [Uniform bounds including small conductors](https://arxiv.org/abs/2005.02989)

For \(y_i\ge1\), the multiplier of a zero before its signed denominator and \(a^\rho\) is the actual finite Fourier coefficient \(\mu\sum_i\overline{\eta(j_i)}w_i^{1-\rho}\). It can conceal a zero even when all weights are positive. For the two-level comparison table, let the marked row-one translates have weight \(b\) and every other cell weight \(v\), where \(b>v>0\), \(|T_2|=n\delta\), \(0<\delta\le1\). Averaging uniformly over \(u\), the principal multiplier is
\[
 (1-\delta/2)v^{1-\rho}+(\delta/2)b^{1-\rho}.
\]
The row-sign character has multiplier \((\delta/2)(b^{1-\rho}-v^{1-\rho})\); every nonconstant column character has multiplier zero. This follows by writing the table as its constant value plus its increment times the translated mask. The principal multiplier vanishes in the open strip exactly when
\[
 (1-\Re\rho)\log(b/v)=\log((2-\delta)/\delta),\qquad
 (\Im\rho)\log(b/v)\in (2\mathbb Z+1)\pi .
\]
Two distinct ratios at the same density cannot both hide one strip zero, by the first equality; at \(\delta=1\) a single ratio already suffices. This is a test for the two-level **comparison** table. The actual variable weights, coincident zeros across characters, and the restricted set of scales supplied by the arithmetic construction preclude inferring zero-freeness from this test alone. The earlier translate-average replacement bound for the actual marked cells is already stronger than the attachment's \(O(\log x/x)\) estimate. [Proved marked-cell estimate](AlpogeMarkedWeightReplacement.lean)

The Lean companion proves the two residue derivative rules for arbitrary holomorphic numerators with prescribed first jet and the finite Fourier calculation for two levels. The full primitive product, zero expansion, and conductor-uniform statement are manuscript arguments. End-to-end kernel verification and external independent review of (1)–(3) are NOT_RUN. [Lean source](AlpogeCellZeroExpansion.lean)

An independent Gaussian-integer enumeration recovered all eight cells for the 178 prime powers of the source checker, including three powers of 23. The earlier four-translate prime table reproduces the mean excess 12.863118 with its documented rounded centering constant. Forty exact rational partial-fraction controls include a conjugate pair, a real root, negative integers, and the independent endpoint cases. [Exact finite checks](../../../scripts/verify_alpoge_cell_zero_expansion.py)

A separate 132-bit Arb check computed the Taylor jets of the primitive L-functions directly at zero and one. For all 14 even and 18 odd primitive nonprincipal characters at conductors 3, 4, 5, 8, 16 and 23 the two enclosures of the finite logarithmic derivative at zero overlapped, including nonreal characters with a conjugated dual.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. AlpogeCellZeroExpansion at e1b4c63790b0105a5f89d0b4e1586f434e869c77.
