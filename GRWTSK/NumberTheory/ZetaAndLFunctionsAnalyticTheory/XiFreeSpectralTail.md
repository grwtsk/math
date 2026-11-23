# A necessary cutoff for convergence of the zeta spectral triples

grwtsk contributors

Write \(L=2\log\lambda\) for the length of the logarithmic interval and
\(N\) for the Fourier cutoff of Connes, Consani and Moscovici. Suppose
\(L_k\to\infty\) and the normalized reduced determinants converge to
\(F(z)=\xi(1/2+iz)/\xi(1/2)\) locally uniformly on **a disk about zero**.
Then

\[
                  \frac{N_k}{L_k^2}\longrightarrow\infty .
\]

This necessary condition comes from the part of the spectrum which the
finite prime-dependent perturbation leaves free. At a cutoff of order
\(L^2\) its paired determinant retains an explicit Gaussian factor.

## The determinant and its free factor

Use *Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
Proposition 5.7, Theorem 5.10 and its proof, in particular (5.25)–(5.27).
For each cutoff considered, assume the lowest eigenvalue of the actual
truncated Weil form is simple and its eigenvector \(v\) is even. In the
paper's normalization \(\delta_N(v)=1\). The self-adjoint realization
acts on \((E_N/\mathbb C v)\oplus E_N^\perp\). Its finite block has
dimension \(2N\). The exterior summand has one Fourier eigenvector for
each \(2\pi j/L\), \(|j|>N\). Eigenvalues of the finite block that meet
this lattice contribute their additional multiplicities. The fixed null
direction removed in the quotient cannot be counted as an eigenvalue of
the reduced operator. [Connes–Consani–Moscovici, §5.6](https://arxiv.org/html/2511.22755v1#S5.SS6)
· [Versioned PDF, SHA-256 `c98d89f7fc999d038e15e80a9aaaee2af797c17711c4329ca7ce48ad49cb336b`](https://arxiv.org/pdf/2511.22755v1).

Let \(G(z)\) be the paper's regularized determinant multiplied by any
\(e^{A+Bz}\), with \(A,B\in\mathbb C\) allowed to depend on the cutoff.
If \(G(0)=0\) along infinitely many cutoffs, convergence at zero to
\(F(0)=1\) already fails. Otherwise discard the finitely many such
indices. Write \(r_1,\ldots,r_{2N}\) for the remaining real finite
eigenvalues with multiplicity. The centered even product satisfies

\[
 E(z):=\frac{G(z)G(-z)}{G(0)^2}
 =\prod_{\nu=1}^{2N}(1-z^2/r_\nu^2)\,P_{L,N}(z)^2,\qquad
 P_{L,N}(z)=\prod_{j>N}\left(1-\frac{L^2z^2}{4\pi^2j^2}\right).
 \tag{1}
\]

Indeed the paper factors the determinant into a finite characteristic
polynomial and the regularized determinant for the exterior modes.
Removing the modes \(-N,\ldots,N\) from the unperturbed determinant
\(1-e^{-iLz}\) in (5.27) divides out the corresponding linear factors,
including its zero at the origin. Euler's sine product leaves \(P_{L,N}\)
times a constant and a linear exponential. Multiplying the expressions
at \(z\) and \(-z\) and dividing by the value at zero squared gives (1).
The same identity applies directly to \(\det_2(I-zD^{-1})\) of the
invertible reduced realization. Its inverse is Hilbert–Schmidt because
the finite block is invertible and \(\sum_{j>N}j^{-2}<\infty\).
The individual genus-one exponentials cancel in the even product.
[Euler's sine product, DLMF 4.22.1](https://dlmf.nist.gov/4.22.E1).

## A disk suffices

Suppose \(G_k\to F\) locally uniformly on a disk centered at zero.
Evenness of \(F\) gives \(E_k\to F^2\) on that disk. Pick \(y_0>0\)
with \(iy_0\) in the disk. Enumerate as \(b\) the numbers
\(1/r_\nu^2\) and two copies of \((L/(2\pi j))^2\) for each \(j>N\).
Every entry is positive. From (1),

\[
 1+y_0^2\sum b\le E_k(iy_0),\qquad
 |E_k(z)|\le \exp\!\left(|z|^2\sum b\right).
\]

The first inequality follows by expanding positive finite products and
passing to the limit. Its right-hand side is bounded independently of
\(k\), so the second inequality gives normality on the entire plane.
Every convergent subsequence of this normal family has limit \(F^2\)
by the identity theorem. Consequently \(E_k\to F^2\) locally uniformly
on the plane. This extension only uses positivity of the paired factors
at the chosen imaginary argument.

## The lower bound and the diagonal cutoff

For \(a\ge0\), \(N\ge0\), put
\(S_N(a)=\sum_{j>N}\log(1+(a/j)^2)\). The series converges by comparison
with \(a^2\sum j^{-2}\). The inequality \(\log(1+x)\ge x/(1+x)\)
for \(x\ge0\) follows by differentiation, or integration of \(1/(1+t)\)
on \([0,x]\). Thus for every integer \(j\ge1\),

\[
 \log(1+(a/j)^2)\ge\frac{a^2}{j^2+a^2}
    \ge\frac{a^2}{(j+a)(j+a+1)}.
\]

The last denominator is at least \(j^2+a^2\). The final fraction is
\(a^2((j+a)^{-1}-(j+a+1)^{-1})\), giving the uniform bound

\[
                S_N(a)\ge \frac{a^2}{N+1+a}.                \tag{2}
\]

At any fixed \(y>1\), the finite factors in (1) at \(iy\) are at least
one. Set \(a=yL/(2\pi)\). Then \(\log E_k(iy)\ge2S_N(a)\).
If the asserted cutoff condition fails, some subsequence satisfies
\(N_k\le C L_k^2\) for a fixed \(C>0\). Divide the denominator
in (2) by \(L_k^2\) and take the limit along that subsequence. This gives

\[
 \log F(iy)=\tfrac12\lim_k\log E_k(iy)\ge\frac{y^2}{4\pi^2 C}.
\]

Here the functional equation gives \(F(iy)=\xi(1/2+y)/\xi(1/2)>0\).
The positive central value follows, for example, from
\(\zeta(1/2)=\eta(1/2)/(1-\sqrt2)<0\) by the alternating series.
On the positive real axis the completed-zeta formula, Stirling's formula
and \(\zeta(1/2+y)\to1\) give \(\log F(iy)=O(y\log y)\) as
\(y\to\infty\). This contradicts the quadratic lower bound and proves
the claim. [Stirling's formula, DLMF 5.11.1](https://dlmf.nist.gov/5.11.E1).

## The transition scale and the remaining finite block

When \(L\to\infty\) and \(L^2/N\to q\in[0,\infty)\), the individual
free eigenvalues escape every compact interval. Their total contribution
obeys the more precise limit

\[
            P_{L,N}(z)\longrightarrow
               \exp\!\left(-\frac{q z^2}{4\pi^2}\right)
               \quad\text{locally uniformly in }z.
\]

For \(|z|\le R\) expand the logarithm of each factor at one. Its
argument differs from one by \(O_R(L^2/N^2)=o(1)\). The summed quadratic
remainder is \(O_R(L^4/N^3)=o(1)\), and
\(\sum_{j>N}j^{-2}=N^{-1}+O(N^{-2})\) by integral comparison.
These estimates give the displayed limit with the indicated sign.
Taking \(N=\lfloor L^2\rfloor\) gives an explicit example in which the
smallest free eigenvalue goes to infinity and the free determinant still
has a nonconstant limit. Cutoffs with \(L^2/N\to0\) remove this factor.

After that removal, one still needs a cofinal sequence of actual
even-simple Weil ground states and convergence of the normalized
finite-block characteristic polynomials to \(F\), with the affine phases
accounted for. For example, the weighted trial-function and spectral-gap
estimate in the companion analysis suffices for the strip identification
if its bounds hold at growing windows. The diagonal-cutoff obstruction
places a restriction on those estimates. It supplies neither the
ground states nor the limiting identification. [Finite-block comparison](XiDeterminantStripReturn.md)
· [Connes–Consani–Moscovici, §§7–8](https://arxiv.org/html/2511.22755v1#S7).

In the namespace `GRWTSK.XiFreeSpectralTail`, the declarations
`log_pair_lower`, `partial_log_tail_lower` and `log_tail_lower` give
the one-pair estimate, its finite telescoping sum and its limit against
an upper bound. The declaration `cutoff_growth` takes the imaginary-axis
majorant and subquadratic limit as hypotheses. For (1) its parameters
are \(b_k=L_k/(2\pi)\), \(x_k=N_k+1\) and
\(S_k(y)=\frac12\log E_k(iy)\), \(y>0\). Positivity of \(F(iy)\)
throughout this ray follows by the alternating series for
\(1/2+y<1\), the removable value at \(1\), and the positive Dirichlet
series above \(1\). The determinant factorization, normal-family
argument and transfer to the completed zeta function are analytic
arguments here. Formal elaboration, kernel verification and transitive
axiom auditing of that full chain are `NOT_RUN`.
[Scalar tail bounds and asymptotic implication](XiFreeSpectralTail.lean).

At Lean source blob `55eb85a64597c5735123a1aca1f070f36bc73169`, all four declarations passed elaboration, fresh kernel replay over 16,013 declarations, and transitive axiom auditing with only `propext`, `Classical.choice` and `Quot.sound`.
