# One-sided Landau oscillation for the original smooth primitive Weil edge source

Local attribution: grwtsk contributors. Edition 1, 2026-11-13 (America/Los_Angeles).
MSC2020: 11M06 (Dirichlet L-functions), 11M26 (zeta zeros), 11N05 (prime powers), 30D35 (Dirichlet series and other series expansions).

**Evidence and mathematical limits:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT depending on classical Landau's nonnegative Laplace theorem and the previously maintained WRITTEN smoothed explicit-formula source WPSE-1--7. This note proves a NEW SOURCE-LOCAL QUANTITATIVE CONSEQUENCE in the sense of its repo edition, NOT a newly certified theorem of RH/GRH and NOT a mathematical-priority claim. There is NO NEW NUMERICAL CERTIFICATE: none is required for the exact analytic Landau argument, and finite sampling cannot verify its all-translation quantifiers. LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN; ORIGINALITY_UNASSESSED. No sorry/admit, new axiom, root import, pin, external code copy or conjecture-target weakening. Source writing and Git publication do not attest to kernel checking.

**Sole original arithmetic source and consumers:** The fixed true C_c-infinity odd two-bump test, exact original Weil physical q>1 and q=1 pole-inclusive values, all prime-power signed shifts, conductor/parity gamma, complete smoothed zero/trivial-zero formulas, and dual-character zero pairings are WPSE-1--7 in WeilPrimitiveSmoothEdgeDualCriterion.md, Git blob 33b819859bffda8693c811fe3319b1f53acd84be (math/main commit e72d7b925792f1b5d0ae96866222a43a57ecefdc). Its TWO-SIDED boundedness criterion is not assumed as a mathematical premise in place of the lower sign; this note explicitly uses its true source partial fractions and proves the stronger ONE-SIDED conclusion by Landau's lemma. The fixed-bump full-zeta negative-depth identity in WeilFixedBumpNegativeDepth.md (WFDG-3) is a related predecessor, but different real test and no primitive complex-character return. Direct consumers: the precise original finite signed prime-power test below, the q=1 RH and q>1 primitive Dirichlet GRH targets, and quantitative horizontal zero-strip and negative-excursion statements. The missing unconditional lower Weil inequality is NOT supplied.

**Live source/policy and historical pins:** Inspected grwtsk/math/main at e72d7b925792f1b5d0ae96866222a43a57ecefdc, root AGENTS.md and CONTRIBUTING.md, full relevant source tree and scoped AGENTS lookups (none found), exact original WPSE source, WFDG and existing conditional zero-strip/other Landau-named declarations (which do NOT supply this unconditional arithmetic lower sign). Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue #1801, scope comment 6869791563. Existing mathematical and verification statuses are not altered.

## 1. WPSL-1: the fixed original complex-character source with all poles and primes retained

Fix \(\epsilon=1/32\), \(\ell=33/32\). Let \(b(u)=u^3(1-u)^3\) for \(0\le u\le1\), zero elsewhere, and \(b_\epsilon=b*q_\epsilon\) be the actual nonnegative C_c-infinity smoothing by the WFDG dyadic mass-one probability density, as in WPSE-1. Then \(\operatorname{supp}b_\epsilon\subset[0,\ell]\), \(b_\epsilon\not\equiv0\). Its true bilateral Laplace transform
\[
B_\epsilon(z)=\int_0^\ell b_\epsilon(u)e^{zu}du
 =B(z)e^{\epsilon z/2}\Phi(\epsilon z)
\tag{1}
\]
is ENTIRE and has NO zero off the imaginary axis: B has the J_(7/2) pure-imaginary zero product and Phi the original dyadic sinh product. Crucially,
\[
\boxed{B_\epsilon(z)\neq0\ \ (\Re z\neq0),\qquad
B_\epsilon(x)>0\ \ (x\in\mathbb R).}
\tag{2}
\]
The latter STRONGER real sign is immediate from the actual nonnegative nontrivial bump integral (1). It is indispensable in the Landau pole-sign argument.

For real moving \(a\ge1\) define the SAME ORIGINAL real ODD smooth test
\[
f_a(t)=b_\epsilon(t-a)-b_\epsilon(-t-a)\in C_c^\infty(\mathbb R;\mathbb R),
\qquad \operatorname{supp}f_a\subset[-a-\ell,-a]\cup[a,a+\ell].
\tag{3}
\]
Take native support halfwindow \(T_a=a+\ell+1/8\). The true source Weil form \(Q_\chi(f_a)\) contains every active von Mangoldt prime power, actual complex \(\chi(n)\), true conductor/parity gamma and (for conductor one) BOTH signed zeta poles; no substitution by a positive proxy is made.

For primitive NONPRINCIPAL \(\chi\) of ACTUAL conductor q>1, define the genuine finite smoothed prime-power sum
\[
S_\chi(a)=
\sum_{e^{2a}\le n<e^{2a+2\ell}}
  \frac{\Lambda(n)\chi(n)}{\sqrt n}
  (b_\epsilon*b_\epsilon)(\log n-2a),
\qquad
G_\chi(a):=\Re S_\chi(a).
\tag{4}
\]
All n in the original inventory remain present, including ramified n where \(\chi(n)=0\), and both parity sectors. WPSE-2/3 proves the EXACT ORIGINAL physical return
\[
\boxed{Q_\chi(f_a)=2G_\chi(a)+R_\chi(a),\qquad
\sup_{a\ge1}|R_\chi(a)|<\infty\ \text{for each fixed }\chi.}
\tag{5}
\]
R_\chi is the actual gamma/conductor and short n=2 signed source, not an omitted infinite prime tail.

For conductor-one q=1, use the true zeta prime sum \(S_\zeta(a)\) and the ACTUAL pole-centered discrepancy
\[
G_\zeta(a):=F_\zeta(a)
=S_\zeta(a)-e^a B_\epsilon(1/2)^2 .
\tag{6}
\]
The leading continuous prime-density term is EXACTLY canceled by the negative original odd zeta pole; the complete source return is
\[
\boxed{Q_\zeta(f_a)=2G_\zeta(a)+R_\zeta(a),\qquad
\sup_{a\ge1}|R_\zeta(a)|<\infty.}
\tag{7}
\]
Here R_zeta retains the remaining cross orientation, both applicable poles, short prime and entire gamma term. The q>1 source has NO zeta pole. Each \(G_\chi\) is a real, locally bounded, continuous function of a: endpoint weights vanish smoothly as integers enter or leave the finite source sum.

For each primitive source, including conductor one, define the ACTUAL horizontal displacement
\[
\boxed{
\Theta_\chi=\sup_{\substack{L(\rho,\chi)=0\\0<\Re\rho<1}}
\left|\Re\rho-\tfrac12\right|\in[0,\tfrac12],
\qquad
\lambda_\chi=2\Theta_\chi\in[0,1].
}
\tag{8}
\]
For q=1 the function and divisor mean the analytically continued Riemann zeta function; for q>1 they are the actual primitive Dirichlet L(s,chi). A zero at s=0 of an EVEN nonprincipal chi is a TRIVIAL zero and is not included in (8). The dual-character functional equation and complex conjugation imply that a left off-critical zero of chi produces a right off-critical zero of the SAME chi at \(1-\bar\rho\), or equivalently a right off-critical zero of the DUAL bar chi at \(1-\rho\), with the correct multiplicity. No self-duality is imposed for complex chi.

## 2. WPSL-2: exact meromorphic Laplace pole ledger, including the negative REAL residue sign

WPSE-5 gives for q>1 the COMPLETE smooth genuine character zero formula, with positive multiplicities, true parity-dependent trivial zeros and NO pole at s=1,
\[
S_\chi(a)=
-\sum_{\rho\in Z_\chi^{\rm nontriv}}
m_\chi(\rho)e^{(2\rho-1)a}B_\epsilon(\rho-\tfrac12)^2
-\sum_{j\ge0}
e^{-(2\kappa_\chi+4j+1)a}
B_\epsilon(-\kappa_\chi-2j-\tfrac12)^2.
\tag{9}
\]
Even primitive chi includes the trivial zero s=0 (j=0); odd primitive chi includes s=-1; all true trivial terms are retained. For zeta, WPSE-5 has the corrected pole-free centered form with trivial zeros at s=-2,-4,...,
\[
G_\zeta(a)=
-\sum_{\rho\in Z_\zeta^{\rm nontriv}}
m_\rho e^{(2\rho-1)a}B_\epsilon(\rho-\tfrac12)^2
-\sum_{j\ge1}
e^{-(4j+1)a}B_\epsilon(-2j-\tfrac12)^2.
\tag{10}
\]
The q=1 pole at s=1 has already produced the EXACT continuous main term removed in (6). The smoothed nontrivial-zero sums are absolutely summable in COEFFICIENT modulus, since B_epsilon decays rapidly on vertical bounded strips and the unconditional L-zero count is O_\chi(T log(q(T+2))). The trivial tails are geometrically summable for a>=1. Hence
\[
\boxed{|G_\chi(a)|\le C_\chi e^{\lambda_\chi a},
\quad |Q_\chi(f_a)|\le C'_\chi e^{\lambda_\chi a}\quad(a\ge1),}
\tag{11}
\]
with constants for EACH fixed chi, including q=1, not uniform in conductor. This upper growth is unconditional: \(\lambda_\chi\) is the unknown actual zero displacement, NOT asserted to vanish.

For q>1, the real scalar source is precisely
\(G_\chi=(S_\chi+S_{\bar\chi})/2\).
Its one-sided Laplace transform, initially for Re w>1, continues MEROMORPHICALLY by the normally convergent partial fractions
\[
\boxed{
\begin{aligned}
\mathcal M_\chi(w)
:=\int_1^\infty G_\chi(a)e^{-wa}da
={}&-\frac12\sum_{\rho\in Z_\chi^{nt}\cup Z_{\bar\chi}^{nt}}
  (m_\chi(\rho)+m_{\bar\chi}(\rho))\\
&\qquad\cdot B_\epsilon(\rho-\tfrac12)^2
\frac{e^{-(w-(2\rho-1))}}{w-(2\rho-1)}
+\mathcal T_\chi(w),
\end{aligned}}
\tag{12}
\]
where the UNION contains distinct true zeros once, with zero multiplicity assigned to a source not vanishing there. The true signed trivial-zero contribution \(\mathcal T_\chi\) is holomorphic for Re w>0. For q=1 the same partial fractions have coefficient \(-m_\rho B_\epsilon(\rho-\tfrac12)^2\), and the zeta trivial terms are also holomorphic for Re w>0. No infinite sum is set equal to a meromorphic function without its normal-convergence condition: coefficient decay and the classical zero count provide it off its discrete poles.

At every REAL pole \(w=t>0\), the associated zero has location
\(\rho=(1+t)/2\in(1/2,1)\) and is itself REAL. The residue is
\[
\boxed{
\operatorname{Res}_{w=t}\mathcal M_\chi(w)=
\begin{cases}
-\frac12(m_\chi(\rho)+m_{\bar\chi}(\rho))
     B_\epsilon(t/2)^2,&q>1,\\
-m_\rho B_\epsilon(t/2)^2,&q=1,
\end{cases}
\quad <0.
}
\tag{13}
\]
Positive integer multiplicities ADD, and \(B_\epsilon(t/2)>0\) by (2); there is no cancellation. The only allowed poles of \(\mathcal M_\chi\) in Re w>0 are the TRUE right-of-line zeros, with nonzero residue even when w is NONREAL, since (2) prevents vanishing at any \(z_\rho\) with Re z_rho>0. Conversely, there is NO artificial positive real pole from the q=1 continuous main term: it was canceled by the TRUE signed zeta pole BEFORE taking the Laplace transform.

**This strict NEGATIVE REAL-residue sign is the extra fact missing from the previous two-sided boundedness criterion.** It makes Landau's one-sided oscillation argument possible; simply knowing there are nonreal poles would not suffice if an unremoved positive exponential main term contributed a positive real pole at the same growth rate.

## 3. WPSL-3: self-contained nonnegative Laplace / Landau lemma with residue sign

**Landau--Phragmén lemma in the needed continuous form.** Let \(H:[1,\infty)\to[0,\infty)\) be locally integrable, of finite exponential order, with the finite real abscissa of absolute Laplace convergence
\[
\alpha_H=\inf\bigl\{s\in\mathbb R:
 \int_1^\infty H(a)e^{-s a}da<\infty\bigr\}.
\tag{14}
\]
Then the true Laplace transform \(\mathcal L_H(w)\) has a SINGULARITY at the REAL point \(w=\alpha_H\). If its analytic continuation is meromorphic with ONLY SIMPLE poles near that point, then it must have a REAL simple pole there with NONNEGATIVE real residue.

**Proof (no sign/review assumption):** For real \(c>\alpha_H\), all derivatives converge after exponential damping and satisfy
\[
(-1)^n\mathcal L_H^{(n)}(c)
=\int_1^\infty a^n H(a)e^{-ca}da\ge0.
\tag{15}
\]
If the transform were holomorphic at \(\alpha_H\), its holomorphy on Re w>\alpha_H and in a disk about \(\alpha_H\) would give a Taylor disk around some real \(c>\alpha_H\) extending strictly LEFT of \(\alpha_H\). For \(s<c\) inside that disk, its convergent Taylor series has ONLY NONNEGATIVE terms:
\[
\begin{aligned}
\mathcal L_H(s)
&=\sum_{n\ge0}\frac{(c-s)^n}{n!}
       \int_1^\infty a^n H(a)e^{-ca}da\\
&=\int_1^\infty H(a)e^{-sa}da
\end{aligned}
\tag{16}
\]
by Tonelli/monotone convergence. The finite Taylor value for some \(s<\alpha_H\) contradicts the definition of the abscissa. Hence a REAL singularity at \(\alpha_H\) is mandatory. If a meromorphic continuation has only isolated simple poles there, its mandatory singularity must be a simple pole. Since \(\mathcal L_H(s)\ge0\) for all REAL \(s>\alpha_H\), the limit
\[
\operatorname{Res}_{w=\alpha_H}\mathcal L_H(w)
=\lim_{s\downarrow\alpha_H}(s-\alpha_H)\mathcal L_H(s)
\ge0
\tag{17}
\]
cannot be negative. QED.

This is the ordinary Landau theorem for positive Dirichlet/Laplace sources (e.g. K. S. Kedlaya, *Analytic Number Theory*, Ch. 3, Theorem 3.4, https://kskedlaya.org/ant/chapter-3.html), with the short continuous proof included. It is NOT a newly discovered analytic lemma. In source-bound use, the abscissa will be STRICTLY POSITIVE if any genuine off-line pole with Re w>0 is present; it is not silently assumed to exist.

## 4. WPSL-4: the exact ONE-SIDED lower-growth / zero-strip equivalence

**Theorem (unconditional quantitative fixed-character equivalence).** Fix any primitive chi of its ACTUAL conductor q>=1, INCLUDING q=1 zeta with both poles. For every rate \(\sigma\in[0,1]\), the following are EQUIVALENT:
\[
\boxed{
\begin{aligned}
&\forall\rho:\ L(\rho,\chi)=0,\quad0<\Re\rho<1
    \ \Longrightarrow\ |2\Re\rho-1|\le\sigma\\
&\hspace{25mm}\Longleftrightarrow\\
&\exists C_{\chi,\sigma}\ge0\quad\forall a\ge1:\quad
      Q_\chi(f_a)\ge-C_{\chi,\sigma}e^{\sigma a}.
\end{aligned}}
\tag{18}
\]
The hypothesis is a ONE-SIDED LOWER bound for a SINGLE concrete family of TRUE ORIGINAL smooth tests. No upper physical bound is hypothesized, and constants are allowed to depend on EACH fixed primitive character. Neither side is established for sigma=0 without GRH; (18) is an equivalence to be consumed when a genuine unconditional lower arithmetic estimate is proved.

**Zero strip implies one-sided bound:** Under the stated strip, all true zero exponents in (9)--(10) satisfy \(\Re(2\rho-1)\le\sigma\); the true dual character inherits the same real-part strip by complex conjugation. The complete absolutely summable zero coefficients and trivial tails therefore yield \(|G_\chi(a)|\le C e^{\sigma a}\). With the uniform-in-a bounded physical remainder R_chi from (5)/(7), this proves the one-sided lower Weil bound (indeed a two-sided bound). No RH assumption was made except the explicitly stated zero-strip premise.

**One-sided bound excludes all zeros outside the strip:** Suppose \(Q_\chi(f_a)\ge-C e^{\sigma a}\) for every a>=1. Since the actual R_chi is uniformly bounded, (5)/(7) give
\[
G_\chi(a)\ge-C'e^{\sigma a}\quad(a\ge1)
\tag{19}
\]
for a fixed C'≥0 (using sigma≥0). Let
\[
H(a):=G_\chi(a)+C'e^{\sigma a}\ge0.
\tag{20}
\]
Its Laplace transform initially on Re w>1 is the EXACT meromorphic continuation
\[
\mathcal L_H(w)=\mathcal M_\chi(w)+
C'\frac{e^{-(w-\sigma)}}{w-\sigma}.
\tag{21}
\]
The new correction has ONLY a single pole at the POSITIVE REAL point w=sigma if sigma>0 (or at zero when sigma=0). Its residue there is +C'. All true character zero poles and their signed residues remain in \(\mathcal M_\chi\), unchanged away from w=sigma.

Assume a genuine nontrivial zero \(\rho\) of chi has
\(\Re(2\rho-1)>\sigma\), or equivalently a right-of-line zero lies strictly beyond the prescribed strip. The true pole \(p=2\rho-1\) of (12), or of the q=1 variant, has Re p>sigma and NONZERO residue by (2); the added correction at real w=sigma cannot cancel it. Since H is nonnegative, its absolute Laplace convergence abscissa \(\alpha_H\) is finite by the elementary exponential upper bound (11), and if \(\alpha_H<\Re p\), the integral would be HOLOMORPHIC at p, contradicting its genuine meromorphic pole. Thus
\[
\boxed{\alpha_H\ge\Re p>\sigma\ge0.}
\tag{22}
\]

Landau's lemma (14)--(17) now forces a REAL singularity of \(\mathcal L_H\) at \(w=\alpha_H> \sigma\). By (12)/(21), all singularities are isolated SIMPLE poles, and the added correction pole at sigma lies strictly to the left. Hence \(w=\alpha_H\) would have to be a genuine REAL chi/bar-chi zero pole. But its residue is STRICTLY NEGATIVE by (13), whereas positivity of H and (17) force its residue to be NONNEGATIVE. This is a contradiction. Thus there is NO right-of-line nontrivial zero of chi or its dual beyond Re rho=(1+sigma)/2.

Finally, if chi had a LEFT-of-line zero with Re rho<(1-sigma)/2, the genuine completed primitive DUAL-character functional equation maps it to a bar-chi zero at \(1-\rho\) with Re>(1+sigma)/2; complex conjugation maps that to the corresponding same-chi reflected zero. We have just excluded those right zeros. The zeta q=1 functional equation does the same with its genuine two-pole source. This gives the full STRIP conclusion with the EXACT sigma/2 normalization. No false self-dual symmetry for a general complex chi was imposed. QED.

**Why this is not an assumed GRH argument:** The original arithmetic lower bound (19) is the hypothesis being tested, NOT a known unconditional consequence of PNT or of any finite-support certificate. The proof derives precisely what it would imply. It does not assert (19) at sigma=0 for all primitive sources.

## 5. WPSL-5: GRH needs only ONE-SIDED positivity on this one-parameter original family

At sigma=0, the quantitative equivalence (18) gives
\[
\boxed{
\mathrm{GRH}(\chi)
\iff\inf_{a\ge1}Q_\chi(f_a)>-\infty .
}
\tag{23}
\]
For q=1, this is RH with the full original signed zeta pole. For q>1, this is primitive Dirichlet GRH for the FIXED nonprincipal character chi, with conductor/parity and complex dual equation retained.

Under the actual GRH target, the complete original Weil zero-divisor quadratic pairing is a sum of NONNEGATIVE squares for every original smooth test, because the true reflected zero of rho is rho itself on Re rho=1/2 and the multiplicities are positive. The complete source and both zeta pole orientations have already been returned to that zero expression by the standard Weil formula, so in particular
\[
\mathrm{GRH}(\chi)\Longrightarrow
Q_\chi(f_a)\ge0\quad\text{for EVERY }a\ge1.
\tag{24}
\]
Conversely, if all these physical real values are nonnegative, they are bounded below and (23) supplies the full actual GRH(chi) zero statement. Therefore the SINGLE-FAMILY sign criterion is EXACT:
\[
\boxed{
\mathrm{GRH}(\chi)
\iff
\forall a\ge1:\ Q_\chi(f_a)\ge0
\iff
\inf_{a\ge1}Q_\chi(f_a)>-\infty .
}
\tag{25}
\]
This is not equivalent to the assertion that the inequality has already been proved! For the conductor-one source, replace GRH(chi) with RH explicitly. Simultaneously over ALL primitive characters,
\[
\boxed{
(\mathrm{RH}\ \text{and primitive Dirichlet GRH})
\iff \forall q\ge1\ \forall\chi\text{ primitive of conductor }q\
       \forall a\ge1,\ Q_\chi(f_a)\ge0.
}
\tag{26}
\]
This conjunction retains q=1 zeta and permits COMPLEX nonreal χ; it does NOT impose a uniform-in-q positive coercivity constant or any imprimitive character transfer.

## 6. WPSL-6: exact NEGATIVE excursion rate equals the actual off-line zero displacement

Define the negative part \(Q_\chi^-(a)=\max\{0,-Q_\chi(f_a)\}\ge0\) and its exponential logarithmic growth rate
\[
\nu_\chi:=
\limsup_{a\to\infty}\frac{\log(1+Q_\chi^-(a))}{a}\ge0.
\tag{27}
\]

**Theorem (sharp signed off-line zero detector).**
\[
\boxed{
\nu_\chi
=2\Theta_\chi
=\lambda_\chi
=\sup_{\substack{L(\rho,\chi)=0\\0<\Re\rho<1}}|2\Re\rho-1|
\quad\text{for EVERY fixed primitive }\chi,
}
\tag{28}
\]
INCLUDING q=1 zeta, and retaining all actual zero multiplicities.

**Upper rate:** Equation (11) bounds the ENTIRE physical Q by \(C'_\chi e^{\lambda_\chi a}\); as \(\lambda_\chi\ge0\), this immediately yields \(\nu_\chi\le\lambda_\chi\). The complete unknown infinite zero tail is included by its absolute summability; no finite zero verification is used.

**Lower rate:** If \(\lambda_\chi=0\), then \(0\le\nu_\chi\le0\). Suppose instead \(\lambda_\chi>0\) and \(\nu_\chi<\lambda_\chi\). Choose a REAL rate with
\[
\nu_\chi<\sigma<\lambda_\chi,\quad \sigma\in[0,1).
\]
The defining limsup implies that for all sufficiently large a,
\(Q_\chi^-(a)\le e^{\sigma a}\). Since Qchi(f_a) is locally bounded on each compact a interval, enlarge the positive coefficient C so that
\(Q_\chi(f_a)\ge-Ce^{\sigma a}\) for EVERY a>=1. The just-proved one-sided strip theorem (18) then forces \(\lambda_\chi\le\sigma\), contradiction. Thus \(\nu_\chi\ge\lambda_\chi\), proving (28). QED.

The quantitative arithmetic consequence is a true **SIGNED \(\Omega_-\)** statement: if \(\lambda_\chi>0\), then for EVERY real \(0\le\eta<\lambda_\chi\),
\[
\boxed{
\liminf_{a\to\infty}e^{-\eta a}\,
Q_\chi(f_a)=-\infty.
}
\tag{29}
\]
Indeed choose \(\eta<\eta'<\lambda_\chi\); the limsup (28) supplies arbitrarily large a with \(Q_\chi^-(a)>e^{\eta'a}\), and division by \(e^{\eta a}\) makes the resulting negative values tend to minus infinity. Because the physical remainder in (5)/(7) is uniformly bounded, the corresponding ACTUAL FINITE signed prime-power source obeys:
\[
\boxed{
\begin{cases}
\displaystyle\liminf_{a\to\infty}e^{-\eta a}\Re S_\chi(a)=-\infty,
& q>1,\\[4pt]
\displaystyle\liminf_{a\to\infty}e^{-\eta a}
   [S_\zeta(a)-e^a B_\epsilon(1/2)^2]=-\infty,&q=1.
\end{cases}}
\tag{30}
\]
This is a statement about **every original von Mangoldt prime power in a moving finite window**, not an ordinate-only auxiliary model and not a proposed numerical sign trend. It says precisely what failure of RH/GRH would FORCE the original signed arithmetic source to do. It does not establish that RH/GRH fails or that such a negative sequence exists.

## 7. Prior art, countermodels, arithmetic obligations, and formal evidence

**Why the REAL residue sign is essential (hostile models):**
- The toy nonnegative function \(H(a)=e^{\delta a}(2+\cos a)\) has nonreal Laplace poles at \(\delta\pm i\) and is NEVER negative. Its transform ALSO has a POSITIVE real pole at w=delta. Thus nonreal poles alone CANNOT force negative excursions; the proved negative real-pole residue ledger (13), and for q=1 the EXACT cancellation of the positive continuous main term, are necessary.
- The toy \(G(a)=-e^{\delta a}\) has a NEGATIVE positive-real pole residue and indeed tends to minus infinity, consistent with the theorem even for hypothetical exceptional REAL zeros. No argument is restricted to nonzero ordinates or assumes every nontrivial zero is nonreal.
- A bump with transform zero at a hypothetical off-line zero would remove its meromorphic pole, invalidating the detector. The true Bessel/dyadic factorization (1)--(2) prevents that. Complex χ and barχ multiplicities ADD in (12); arbitrary phase averaging cannot create false cancellation.
- The gamma source remainders Rchi and Rzeta are uniformly bounded only for EACH fixed primitive source, not uniformly over all conductors. No stronger constant quantifier is silently inferred.
- The sign criterion is for one SPECIAL full-line translating family, not a replacement statement that ALL original compact tests have been proved positive. Its equivalence to zero localization does not supply its own missing source lower inequality.
- PNT(AP) gives only \(G_\chi(a)=o_\chi(e^a)\), while the theorem requires \(G_\chi(a)\ge-C_\chi\) for RH/GRH at sigma=0. The difference is an actual missing signed prime cancellation, not an analytic formalization issue. The theorem quantifies EVERY a and ALL active prime powers; a finite check at bounded a is not a proof.
- With sigma>0 the theorem permits a horizontal strip of width sigma/2; its constants depend on sigma and chi. The support radius \(T_a=a+\ell+1/8\) grows with a, so fixed-window local positivity results do NOT prove (25). The two applicable zeta pole orientations, full gamma/parity and the dual-character equations remain in force.

**Primary dated source references, with exact roles:**
1. Classical Landau/Phragmén positivity for a nonnegative Dirichlet or Laplace transform, cf. K. Kedlaya, *Analytic Number Theory*, Ch. 3, Theorem 3.4 (Dirichlet-series formulation, https://kskedlaya.org/ant/chapter-3.html). The continuous positivity proof is included in WPSL-3 and consumed only in the one-sided lower-sign direction.
2. E. C. Titchmarsh's classical oscillation methods, and H. L. Montgomery--R. C. Vaughan, *Multiplicative Number Theory I*, 2007, Chapter 15 (Landau oscillation applications): prior art for pole-versus-one-sided-sign methods. No new Landau theorem or priority claim.
3. NIST DLMF §25.15.2, 25.15.5, 25.15.7--8: genuine primitive Euler region, DUAL χ/barχ functional equation and all parity-dependent trivial zeros, respectively (https://dlmf.nist.gov/25.15). Consumers WPSL-1/2/4/5. No root-number-one assumption.
4. NIST DLMF §10.21.15 and §10.32.2: Bessel J_(7/2) real zeros and normalized Bessel-I beta-integral, ensuring source transform nonvanishing off the imaginary axis (https://dlmf.nist.gov/10.21). Actual WFDG dyadic smoothing consumes the same nonvanishing type without an invented test model.
5. Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), printed pp.1--2: original complete zeta Weil additive source, all signed pole orientations, gamma and prime powers; canonical WeilSourcePrimeCorrelation.lean / WeilGammaPhysicalReturn.lean remain SOURCE_PROOF_CANDIDATES with their prior verification status.
6. In-repo WeilPrimitiveSmoothEdgeDualCriterion.md (WPSE-1--7): the C_c-infinity original moving test, entire smoothed transform, all far finite character-weighted prime powers, complete zero/trivial-zero partial fractions, bounded gamma and actual dual-character return. This WPSL note does NOT silently replace those still-WRITTEN analytic inputs with a Lean-checked declaration.

**Reproducibility and exact verification status:** No additional numerical checker is supplied because the substantive step is a continuous Landau/Tonelli theorem and an infinite meromorphic pole/residue sign deduction. Reusing the source-local WPSE scalar audit is permitted only for its ACTUAL limited scope (polynomial bump moments, support, derivative bounds and a finite complex-character coefficient sanity check); it is not a formal verifier of WPSL-3--6. Analytic proof WRITTEN, local Python check for this new Landau argument NOT_RUN/NOT_APPLICABLE, Lean elaboration/kernel replay/axiom audit NOT_RUN, independent mathematical review NOT_RUN, novelty UNASSESSED. No corresponding proof has been accepted by the Lean kernel, and no independent review is invented.

**First unresolved arithmetic premise:** PROVE, for every primitive chi including conductor-one zeta, the ORIGINAL signed source \(Q_\chi(f_a)\ge-C_\chi\) for all a>=1, or stronger \(Q_\chi(f_a)\ge0\), without assuming RH/GRH. By (18),(25), that one-sided all-translation inequality is EXACTLY the primitive Dirichlet GRH target (plus RH for q=1). The present work is a sharper FALSIFIABLE arithmetic reduction, NOT proof of this missing inequality, RH, or GRH. The finite gamma and first-prime window results do not control all growing a. The actual unbounded moving prime-power cancellation remains open.

No Noe-dependent proof automation, cross-chat messaging, browser workers or scheduler dispatched: the required noe-proof-automation canonical skill under grwtsk/noeaaeue/main at inspected revision 4e34db2f0746df4b2ea095bdd363a7ab23efd0eb returned HTTP 404. Ordinary authenticated GitHub issue coordination/source publication is independent of that unavailable workflow.
