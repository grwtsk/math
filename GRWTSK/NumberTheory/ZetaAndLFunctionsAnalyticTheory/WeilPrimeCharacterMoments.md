# Exact primitive-character moments of the original ordinary-prime Weil source

Local attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020: 11M06, 11N05, 11N13, 42A82.

**Standing:** WRITTEN_ANALYTICAL_ARGUMENT / LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN / NOVELTY_UNASSESSED. Unconditional character-average arithmetic theorems are proved below. They do NOT prove a fixed-character all-height inequality, RH, finiteness of exceptional zeta zeros, or primitive Dirichlet GRH. Exact group-character moment orthogonality is classical, not claimed as novel.

**Original arithmetic consumer:** The fixed nonnegative, real-even mass-one smooth bump phi of WeilFixedBumpNegativeDepth.md (WFDG-1); h=phi*phi, supported in [-1,1]. Its prime-only actual primitive L-source is PPCG-1/2 in PrimitivePrimeSourceConductorBounds.md. The all-prime-power return is provided in WeilPrimeSquareTail.md (WPSQ-1--6). These results concern exact arithmetic source coefficients, NOT the full Hermitian Weil positivity form. The original full Weil formula retains every prime power, both zeta poles, the gamma/parity terms, complex character phases, and the conductor. Nothing is silently transferred from the character average to a fixed-character zero claim.

**Inspected canonical source:** grwtsk/math/main at 90145d00a1c70f2158bbb762d79ccacb703abe68; root policy and publication instructions; Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No imports, new axioms, pins or Lean declarations altered. Coordination: issue #1801, scope comment 6841294189.

## 1. Exact source and parity orthogonality

Fix t>2. Put \(X_t=e^{t+1}\) and for every rational prime p set
\[
a_p(t)=\frac{\log p}{\sqrt p}h(\log p-t),\qquad
S_\chi(t)=\sum_p a_p(t)\chi(p).
\tag{1}
\]
These are FINITE sums; a_p=0 outside [e^(t-1),e^(t+1)]. Fix a rational PRIME conductor q>2 X_t^2. Every nonprincipal character modulo q is primitive. Let
\[
\mathcal X_\epsilon(q)=\{\chi\bmod q:\chi(-1)=\epsilon\},\quad
\epsilon\in\{+1,-1\},\quad
|\mathcal X_\epsilon(q)|=\tfrac{q-1}{2}.
\tag{2}
\]
The parity classes are separate: \(\epsilon=+1\) includes the sole principal character, while \(\epsilon=-1\) consists entirely of primitive characters. For any positive integers a,b<q coprime to q, standard Dirichlet character orthogonality gives
\[
\frac{2}{q-1}\sum_{\chi\in\mathcal X_\epsilon(q)}
\chi(a)\overline{\chi(b)}
=
\mathbf1_{a\equiv b\pmod q}
+\epsilon\,\mathbf1_{a\equiv-b\pmod q}.
\tag{3}
\]
This is derived by applying the parity projector \((1+\epsilon\chi(-1))/2\) to the full character orthogonality relation. It is precisely the q-aspect mechanism in DLMF §27.8, equation 27.8.6. It needs no GRH or unproved distribution of primes in progressions.

If positive integers a,b are products of at most m contributing primes and q>2 X_t^m, then a,b<=X_t^m<q/2, so neither modular wraparound nor the negative congruence can occur: \(a\equiv b\pmod q\) iff a=b and \(a\not\equiv-b\pmod q\). Unique factorization then forces identical prime multisets.

## WPCM-1: exact second and fourth moments in BOTH parity sectors

Set
\[
A_h(t)=\sum_p|a_p(t)|^2
=\sum_p\frac{(\log p)^2}{p}|h(\log p-t)|^2,
\quad
B_h(t)=\sum_p|a_p(t)|^4
=\sum_p\frac{(\log p)^4}{p^2}|h(\log p-t)|^4.
\tag{4}
\]
**Theorem (unconditional, exact finite arithmetic).** For every t>2 and every prime q>2e^{2(t+1)}, and independently for each epsilon=+1,-1,
\[
\boxed{
\frac{2}{q-1}\sum_{\chi\in\mathcal X_\epsilon(q)}|S_\chi(t)|^2=A_h(t),\qquad
\frac{2}{q-1}\sum_{\chi\in\mathcal X_\epsilon(q)}|S_\chi(t)|^4
=2A_h(t)^2-B_h(t).
}
\tag{5}
\]

**Proof.** Expand the squared magnitude in prime indices p,r and use (3). Both p and r are <X_t<q/2, so the positive congruence forces p=r, and the negative congruence is impossible. This leaves precisely A_h(t).

For the fourth moment, expand over primes p_1,p_2,r_1,r_2. Their products are <=X_t²<q/2. Equation (3) reduces the character average to the EXACT equality p_1p_2=r_1r_2 of ordinary integers. Unique factorization means the unordered pairs of primes are identical. If p_1 != p_2, the matching pair has two orderings; if they are equal it has one. Thus the diagonal sum equals \(2(\sum_p|a_p|²)^2-\sum_p|a_p|^4\). This proves (5) for each parity, with no assumption on the location of L-function zeros. QED.

An independent non-certified toy check at q=101, primes 2,3,5,7 and sample signed coefficients agreed with both finite identities to ordinary floating-point rounding. This sanity check is not part of the proof and is not a certified interval calculation.

## WPCM-2: actual PNT variance, exact error and fourth-moment limit

Let \(\theta(x)=\sum_{p\le x}\log p\) and
\[
\eta(y)=\sup_{x\ge y}\frac{|\theta(x)-x|}{x}.
\]
The unconditional PNT gives \(\eta(y)\to0\). The theta form of the classical Korobov--Vinogradov error gives \(\eta(e^{t-1})\ll\exp(-c t^{3/5}/(\log t)^{1/5})\), for a sufficiently small c>0 and large t.

**Theorem (unconditional).**
\[
\boxed{
A_h(t)=t\|h\|_2^2+O_h(t\eta(e^{t-1}))
=t\|h\|_2^2+o(t).
}
\tag{6}
\]
Furthermore
\[
\boxed{
B_h(t)\le \left((t+1)^2e^{-(t-1)}\|h\|_\infty^2\right) A_h(t)
=O_h(t^3e^{-t}),\quad
B_h(t)/A_h(t)^2\to0.
}
\tag{7}
\]

**Proof.** Let f(v)=|h(v)|², smooth and supported in [-1,1]. Since h is real and even, f is even. Express A as the Stieltjes integral
\[
A_h(t)=\int_{e^{t-1}}^{e^{t+1}}
\frac{\log x}{x}f(\log x-t)\,d\theta(x).
\]
Replacing dtheta by dx yields
\[
\int_{-1}^1(t+v)f(v)\,dv
=t\|h\|_2²+\int_{-1}^1vf(v)dv=t\|h\|_2².
\]
The endpoint terms vanish because f is smooth with compact support. With E(x)=theta(x)-x, the derivative of \(w_t(x)=(\log x)x^{-1}f(\log x-t)\) is
\[
w_t'(x)=x^{-2}\left[(1-\log x)f(\log x-t)+(\log x)f'(\log x-t)\right].
\]
Stieltjes integration by parts therefore gives
\[
|A_h(t)-t\|h\|_2²|
\le\eta(e^{t-1})
\left[(t+2)\|f\|_1+(t+1)\|f'\|_1\right],
\]
proving (6). Finally each \(|a_p|²\le (t+1)^2e^{-(t-1)}\|h\|_\infty²\) for p in the window, hence \(B_h\le(\sup_p|a_p|²)A_h\). The asymptotic A_h~t||h||² gives the last claims. QED.

## WPCM-3: a POSITIVE PROPORTION of even and odd primitive sources has sqrt(log q) size

**Theorem (unconditional, no zero hypothesis).** For t sufficiently large and prime q>2e^{2(t+1)}, separately for epsilon=+1 and epsilon=-1, at least one-eighth of all characters in \(\mathcal X_\epsilon(q)\) satisfy
\[
\boxed{|S_\chi(t)|\ge\sqrt{A_h(t)/2}.}
\tag{8}
\]
For each parity, at least one-ninth of the PRIMITIVE characters in that parity satisfy (8) whenever q is sufficiently large.

**Proof.** Under uniform probability on either parity sector set Y_chi=|S_chi(t)|². Formula (5) gives E Y=A_h>0 and E Y²=2A_h²-B_h<=2A_h². Cauchy--Schwarz (equivalently the elementary Paley--Zygmund inequality) gives
\[
\Pr(Y\ge A_h/2)
\ge\frac{(E Y-A_h/2)^2}{E Y^2}\ge\frac18.
\tag{9}
\]
The odd sector contains only primitive characters. The even sector contains exactly one imprimitive character, the principal character modulo prime q. Its removal leaves at least (q-1)/16-1 qualifying even primitive characters out of (q-3)/2, a fraction at least 1/9 for q>=129. QED.

**Conductor-scale sharpening.** For EVERY sufficiently large rational prime q choose
\[
t_q=\frac12\log q-2,
\]
so \(2e^{2(t_q+1)}=2q/e²<q\), satisfying the exact fourth-moment hypothesis. By (6),
\[
\sqrt{A_h(t_q)/2}
=(\tfrac12+o(1))\|h\|_2\sqrt{\log q}.
\]
Thus, for EVERY sufficiently large prime q, at least one-ninth of primitive characters of EACH parity obey
\[
\boxed{
|S_\chi(t_q)|\ge\frac{\|h\|_2}{4}\sqrt{\log q}.
}
\tag{10}
\]
For q>1 primitive, this S_chi is exactly the pole-corrected ordinary-prime discrepancy D_{chi,prime} from PPCG-1/2 (there is no principal s=1 L-pole). This is a direct falsification of any proposed q-independent O(1) or uniform o(sqrt(log q)) bound on the actual primitive prime source, including separately even and odd characters. The earlier GRH-equivalent O(log(q+2)) bound is CONSISTENT with (10); no GRH violation or off-line zero is inferred.

## WPCM-4: exact all-mixed moments and a genuine high-conductor Gaussian limit

For integers m,n>=0 set \(M=\max(m,n)\). Under the stronger condition q>2 X_t^M,
\[
\frac2{q-1}\sum_{\chi\in\mathcal X_\epsilon(q)}
S_\chi(t)^m\overline{S_\chi(t)}^{\,n}
=
\sum_{\substack{p_1,\ldots,p_m;\ r_1,\ldots,r_n\\
p_1\cdots p_m=r_1\cdots r_n}}
a_{p_1}\cdots a_{p_m}\overline{a_{r_1}\cdots a_{r_n}}.
\tag{11}
\]
For m != n the sum is ZERO by uniqueness of prime factorization. For m=n it is nonnegative, bounded above by \(m! A_h(t)^m\), and differs from \(m! A_h(t)^m\) by at most \(O_m(B_h(t) A_h(t)^{m-2})\) when m>=2. In particular,
\[
\boxed{
\frac2{q-1}\sum_{\chi\in\mathcal X_\epsilon(q)}
\left(\frac{S_\chi(t)}{\sqrt{A_h(t)}}\right)^m
\overline{\left(\frac{S_\chi(t)}{\sqrt{A_h(t)}}\right)}^{\,n}
\longrightarrow \mathbf1_{m=n}\,m!
}
\tag{12}
\]
when t->infinity and q=q(t) ranges over primes satisfying q(t)>exp(t²). For m=n=0 the expectation is 1; for m=n=1 exact identity (5) applies.

**Proof of the collision bound.** When m=n, a fixed ordered m-tuple of primes has at most m! matching orderings. Tuples with all distinct entries have exactly m! matching orderings. The total weighted mass of ordered tuples containing a repeated prime is at most \({m\choose2}B_h A_h^{m-2}\) by a union bound over the repeated positions. Thus the moment differs from m! A_h^m by at most \(m!{m\choose2}B_h A_h^{m-2}\). Equation (7) makes the normalized error vanish. For q(t)>exp(t²), the condition q>2X_t^{max(m,n)} holds eventually for every fixed pair m,n. QED.

**Distributional consequence (standard method of moments).** Let chi be uniform among primitive characters of a given parity modulo prime q(t)>exp(t²), and put \(Z_t=S_\chi(t)/\sqrt{A_h(t)}\). The limiting mixed moments (12) are those of a standard circular complex Gaussian Z with density \(\pi^{-1}e^{-|z|²}\), i.e. independent real and imaginary normal components of variance 1/2. The family is tight by the exact second moment, and the Gaussian is moment-determinate; the two-dimensional method of moments proves
\[
\boxed{Z_t\ \Longrightarrow\ \mathcal N_{\mathbb C}(0,1).}
\tag{13}
\]
Excluding the unique even principal character changes the empirical probability measure by at most \(2/(q-1)\) in total variation and does not change the weak limit. The odd sector is entirely primitive. This is an UNCONDITIONAL distributional statement about a short actual prime window in a VERY-large-conductor q-aspect; it is not a distributional claim about Dirichlet L-function zeros or about a fixed primitive character over all windows.

## WPCM-5: return to ALL prime powers without identifying a positive auxiliary form with Weil

Let
\[
S_{\chi,\mathrm{all}}(t)=
\sum_{k\ge1,p}(\log p)\chi(p)^kp^{-k/2}h(k\log p-t).
\tag{14}
\]
This is exactly the prime-power source in the original primitive explicit formula (before the conductor/gamma/pole terms are attached). Since h>=0 and |chi(p)^k|<=1, WPSQ-1 supplies the uniform deterministic estimate
\[
\left|S_{\chi,\mathrm{all}}(t)-S_\chi(t)\right|
\le\sum_{k\ge2,p}(\log p)p^{-k/2}h(k\log p-t)
=\frac12+o(1),
\tag{15}
\]
uniformly over ALL moduli and characters, because the RHS uses only conductor-one arithmetic. In particular the difference is <=1 for t sufficiently large, uniformly in chi,q.

Thus, after division by sqrt(A_h(t))~||h||_2 sqrt(t), the difference tends to zero uniformly. The Gaussian limit (13) also holds with the COMPLETE prime-power source in place of S_chi, and for every sufficiently large prime conductor q the positive-proportion lower bound (10) also holds for that source with a slightly smaller positive coefficient, e.g. ||h||_2/5 times sqrt(log q). This is an exact proved return to all prime powers, but NOT a full Weil positivity or GRH theorem. No conductor, gamma, parity or pole terms of the true completed explicit formula are discarded; the statement concerns only the finite-place arithmetic component.

## Sharpness, prior art, and open source obligation

**Hostile checks and logical limits:**
1. The principal character of prime modulus q is NOT primitive; (5) averages over it only to exploit complete orthogonality, and WPCM-3/4 remove it before making any primitive claim. q=1 zeta is NOT part of this large-conductor family; it remains separately covered in PPCG.
2. The restriction q>2X_t² is essential for EXACT fourth-moment diagonalization in BOTH parity sectors: otherwise product congruences, including a≡-b, can occur without equality. Merely q>X_t would be sufficient for the full-character second moment, but not the asserted fourth and parity formulas.
3. The q-aspect lower bound says there exist many characters depending on q and height. It does not produce an off-line zero for any single L-function, does not contradict conditional O(log q), and does not imply anything about a fixed-character all-height bound as t->infinity.
4. The Gaussian limit requires q(t)>exp(t²), not merely the fourth-moment range. Every fixed mixed moment requires its OWN inequality q>2X_t^{max(m,n)}, and the specified q(t) enforces all of them eventually. A fourth moment by itself is insufficient for a CLT.
5. All fixed windows have finite prime support and all exact moment manipulations are finite identities. The PNT is used ONLY for the size A_h(t) and the all-prime-power remainder; no zero-free strip assumption is inserted.
6. Unconditional full prime-power moment transfer (15) is a triangle inequality using the POSITIVE mass-one source kernel h. This bounded finite-place arithmetic correction is NOT Weil positivity; the original complex signed zero pairing, gamma/parity/conductor and zeta poles still govern RH/GRH.

**Source comparison / no novelty claims:** Character orthogonality is DLMF §27.8, equation 27.8.6 (https://dlmf.nist.gov/27.8). Short Dirichlet polynomial character moment matching and parity restrictions are established methods; see L.-P. Arguin and N. Creighton, *Upper bounds on large deviations of Dirichlet L-functions in the q-aspect*, Journal of Number Theory 273 (2025), 96--158, Lemmas 2.2--2.3, https://doi.org/10.1016/j.jnt.2025.01.009, for related exact moment comparison. The weighted-logarithmic-window PNT step is an elementary Stieltjes integration by parts, with Korobov--Vinogradov theta remainder as recorded in WPSQ-1; this note does not claim new classical moment theory. The exact original source is in WFDG-1 / PPCG-1/2 (Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, page 1, full pole-inclusive formula). No comprehensive novelty search or independent review has been completed.

**First unresolved arithmetic premise:** Derive a uniform ALL-HEIGHT one-sided signed ordinary-prime upper bound for conductor-one zeta (or exact finite-rank variant) and/or for EACH fixed primitive Dirichlet character, without assuming RH/GRH. The q-aspect moments establish magnitude lower bounds and reject stronger false uniformities, but offer NO such all-character positivity. Finite mean-square or positive-density estimates cannot replace universal character/window quantifiers. The large-conductor lower bound does not discharge WFDG-O1 or WPOS-O1.

**Verification:** Source-only written mathematical arguments; no Lean declarations, no sorry/admit, no new research axiom or root import. Lean elaboration, fresh kernel replay, transitive axiom audit and independent proof review NOT_RUN. The local toy fourth-moment check was non-certified and is not used as proof. Novelty UNASSESSED. Any later Lean implementation must reuse canonical Dirichlet character definitions, prove the parity orthogonality and exact arithmetic bridge, and audit that the statements retain q prime and support-length hypotheses.

**Noe execution boundary:** No Noe proof-automation, browser-chat or cross-chat messaging was invoked. The current canonical skill source in grwtsk/noeaaeue was not used; ordinary manual mathematical source publication does not authorize dependent execution.
