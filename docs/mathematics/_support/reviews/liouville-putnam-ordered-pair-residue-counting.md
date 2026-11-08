# Liouville residue as complete signed pair counting

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Scope and status.** Exact finite counting identities, one unconditional negative causal Möbius subsector estimate, and a classical zero-to-Liouville-count obstruction. **Problem P and RH are still open.** This document is an analytic research note, not a new checked Lean proof. The existing source candidates remain COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN and TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## 1. Putnam-style double counting without Fourier

Let λ(n)=(-1)^Ω(n), and for N≥1 let E_N and O_N count integers 1≤n≤N with even and odd Ω(n). Write L(N)=E_N−O_N. Count ordered *distinct* pairs with equal signs and subtract the ordered pairs with opposite signs:

\[
\boxed{
C_\lambda(N):=\sum_{\substack{1\le m,n\le N\\m\ne n}}\lambda(m)\lambda(n)
=E_N(E_N-1)+O_N(O_N-1)-2E_NO_N=L(N)^2-N.}
\tag{1}
\]

This retains every orientation and sign. For any modulus q≥1, including nonunit residues, write B_a(N)=sum of λ(n) over n≤N and n≡a (mod q). Then

\[
C_\lambda(N)=\sum_{a,b\bmod q}B_a(N)B_b(N)-N. \tag{2}
\]

The complete cross-class sum must be formed BEFORE taking an absolute value or a square-class majorant. A one-sided bound C_λ(N)≪_ε N^(1+ε) for **every** ε>0 is equivalent to the classical RH-strength bound |L(N)|≪_η N^(1/2+η) for every η>0. The counting identity itself does not supply this bound.

Prior source identities: complete cyclic packet in grwtsk/math #1529; Liouville Fejér-window packet in #1530.

## 2. Exact return to the ORIGINAL weighted Möbius pickup

The original response is r_n(u)=2(n^(-1/2)−e^(-u/2)) when log n≤u and zero otherwise, with K_T(m,n)=integral_0^T r_m(u)r_n(u)du≥0. Set N_T=floor(e^T). The existing original source is

\[
X_\mu(T)=\sum_{\substack{1\le m,n\le N_T\\m\ne n}}
\mu(m)\mu(n)K_T(m,n),\qquad
H_\mu(T)=D_\mu(T)+X_\mu(T),\quad0\le D_\mu(T)\le2T^2.
\tag{3}
\]

Every μ(n)=λ(n)1_squarefree(n). For x=e^u define nonnegative weights w_n(u)=r_n(u), and E_w(u), O_w(u) as the weighted counts of squarefree integers of even and odd Ω(n), with n≤x. Let D_w(u)=sum_{n≤x}μ(n)^2w_n(u)^2. Exact signed double counting gives

\[
\sum_{\substack{m,n\le x\\m\ne n}}\mu(m)\mu(n)w_m(u)w_n(u)
=(E_w(u)-O_w(u))^2-D_w(u),                             \tag{4}
\]
and X_μ(T) is the integral of (4) from 0 to T. In the established arithmetic classes (n mod 2, floor(n/2) mod d²), first sum E_(r,a)−O_(r,a) over *both* parities and every residue; then square. This keeps 00,01,10,11, nonunits and squareful zeros, and is exactly the four-sector source identity in #1527/#1528, not a new substitute observable.

Square-divisor counting retains the source transport:

\[
\lambda(n)=\sum_{d^2\mid n}\mu(n/d^2),\qquad
\mu(n)=\sum_{d^2\mid n}\mu(d)\lambda(n/d^2),              \tag{5}
\]
\[
L(N)=\sum_{d\le\sqrt N} M(\lfloor N/d^2\rfloor),\qquad
M(N)=\sum_{d\le\sqrt N}\mu(d)L(\lfloor N/d^2\rfloor).
\tag{6}
\]
Since r_(d²m)(u)=d^(-1)r_m(u−2log d) at the correct birth,
\[
F_\mu(u)=\sum_{d\le e^{u/2}}\frac{\mu(d)}d F_\lambda(u-2\log d).
\tag{7}
\]
Thus the Liouville parity coefficient has a literal real-arithmetic and signed-causal connection, not merely a Fourier-frequency analogy. This is not a pointwise domination of one energy by another.

## 3. A genuine nonpositive opposite-parity subsector

For *odd* m, arithmetic multiplicativity gives μ(2m)=−μ(m), including squareful zero coefficients. Its complete ordered doubling subsector is

\[
\boxed{
X_2(T)=2\sum_{\substack{m\ {\rm odd}\\2m\le N_T}}
\mu(m)\mu(2m)K_T(m,2m)
=-2\sum_{\substack{m\ {\rm odd}\\2m\le N_T}}
\mu(m)^2K_T(m,2m)\le0.}
\tag{8}
\]

The terms occupy opposite parity channels 01 and 10, both orientations included. This is a **source-specific unconditional negative contribution** rather than a generic positive-defect energy statement.

It has a quantitative lower magnitude. For x=e^u and m odd with m≤x/8, the actual causal responses obey r_m(u)≥m^(-1/2) and r_(2m)(u)≥(2m)^(-1/2). The instantaneous density of X_2 is therefore at most
\[
-\sqrt2\sum_{\substack{m\le e^u/8\\m\ {\rm odd}}}\frac{\mu(m)^2}{m}.
\tag{9}
\]

Count odd squarefree integers by μ(m)^2=sum_{d²|m}μ(d). The number of odd integers up to y is y/2+O(1); summing over *odd* square divisors and using the absolutely convergent Euler product yields
\[
\sum_{\substack{m\le x\\m\ {\rm odd}}}\mu(m)^2
=\frac4{\pi^2}x+O(\sqrt x),\qquad
\sum_{\substack{m\le x\\m\ {\rm odd}}}\frac{\mu(m)^2}{m}
=\frac4{\pi^2}\log x+O(1).
\tag{10}
\]
Here (1/2)∏_(p≠2)(1−p^(−2))=4/π²; the second formula follows by summation by parts. Integrating (9) proves
\[
\boxed{X_2(T)\le-\frac{2\sqrt2}{\pi^2}T^2+O(T)\quad (T\to\infty).}
\tag{11}
\]

This is an actual new *source-facing* signed **subsector** estimate within this programme; the counting inputs themselves are classical. It does NOT bound the complementary full signed pair packet. In particular its polynomial-scale credit alone cannot close P.

More generally the original ordered pairs with n=mq, q≥2, have exact divisibility mass
\[
X_{\rm div}(T)=2\sum_{2\le q\le N_T}\mu(q)
 \sum_{\substack{m\le N_T/q\\(m,q)=1}}\mu(m)^2K_T(m,mq).
\tag{12}
\]
The rest X_incomparable is the signed mass of incomparable pairs. In (12), prime q contributes nonpositively, and squarefree q with even Ω(q) contributes nonnegatively. No sign is discarded and no total bound is inferred.

## 4. Analytic Liouville residue directly obstructs complete counts

For Re(s)>1, Euler products give
\[
D_\lambda(s)=\sum_{n\ge1}\lambda(n)n^{-s}=\frac{\zeta(2s)}{\zeta(s)}.
\tag{13}
\]
Suppose ζ(ρ)=0, with β=Re(ρ)>1/2. Since Re(2ρ)>1, ζ(2ρ)≠0, so D_λ has a genuine pole at ρ. If the zero is simple, its residue is ζ(2ρ)/ζ'(ρ); multiple zeros produce a higher-order principal part.

For any 1/2<θ<β, an estimate |L(N)|=O(N^θ) would, by the exact Abel formula
\[
D_\lambda(s)=s\int_1^\infty L(x)x^{-s-1}\,dx,
\]
make D_λ holomorphic throughout Re(s)>θ. This contradicts the pole. Consequently, for every A>0 arbitrarily large N satisfy |L(N)|>A N^θ, and (1) gives
\[
\boxed{\limsup_{N\to\infty} C_\lambda(N)/N^{2\theta}=+\infty.}
\tag{14}
\]
This is a direct **zeta-residue → Liouville parity count → complete signed correlation** implication, not only a comparison of frequencies and not an unproved pointwise explicit formula. Conversely the every-positive-rate one-sided complete pair bound precludes zeros to the right of 1/2; standard symmetry gives the canonical RH.

## 5. Exact remaining P obligation and hostile boundary

The existing endpoint source E(T) has |E(T)−X_μ(T)|≤1/4 at all T; the dyadic T=j log 2 have controlled coverage, and the previously published energy/Laplace return is conditional on the missing every-rate upper bound. With X_rest:=X_μ−X_2, that missing bound is equivalently
\[
X_{\rm rest}(T)\le
2\sum_{\substack{m\ {\rm odd}\\2m\le N_T}}\mu(m)^2K_T(m,2m)
+C_\delta e^{\delta T}\quad\text{for all dyadic T, every }\delta>0.
\tag{15}
\]
This is a **source-equivalent UNSUPPLIED arithmetic estimate**, not a theorem inferred from (8), (11), local positivity, finite parity counts or a fixed-shift Chowla result. Every other same- and opposite-parity pair, squareful zero, real source weight and cutoff stays in X_rest. P and RH remain unproved.

## Verification, prior-art and tools

The nearest repo constructions are #1406 (endpoint comparison), #1527/#1528 (four-sector signed residue), #1529 (complete cyclic correlation), #1530 (Fejér packet) and #1531 (double Abel); RH route register #334. Classical double counting, Liouville Dirichlet series and squarefree density are not claimed novel. Independent Python finite reference tested 634 identities/fixtures for N=1,...,96; residue checks at selected N and d=1,2,3,4,7. Script SHA-256: 00c9c26d0077494f8cf32abbf16675968c1b4879886005a2155a7e175efd623f. These are FINITE_REFERENCE_EVIDENCE, not rigorous transcendental numerical enclosure or proof of (11)/(14). No Lean/lake/fresh-kernel/axiom verification, root import change, CI workflow, Noe runner or scheduler was performed. No external referee review or new theorem novelty assessment is claimed.
