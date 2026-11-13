# All-rank local Weil Gram domination for every primitive source, with a scaled cyclic zeta test

By grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11M26, 42A82, 11N05.

**Disposition:** EXACT-SOURCE WRITTEN COROLLARY / SOURCE-RETURN AUDIT. No mathematical novelty is claimed. This does NOT construct a new primitive Weil sign certificate: it reuses the pre-existing completed WRITTEN analytical arguments WFP-v1-1 and WZAP073-v1-1 and their previously EXECUTED finite rational/integer certificates. Lean elaboration, original full-source kernel checking, transitive axiom audit, local re-execution of either inherited certificate, and independent analytical review NOT_RUN. Novelty UNASSESSED. No RH, primitive Dirichlet GRH, finite off-line zero count or full-support negative-index theorem is proved.

**Purpose/consumer:** Restore the important universal FINITE-RANK and primitive-character quantifiers for a bounded physical support interval, without extending a finite-height zeta-zero verification. Provide the exact all-rank Gram consumer for every source-supported family; then exhibit a scaled version of the WFDG dyadic generator which ALSO detects all off-line zeta pairs when ALL its translations are allowed. This distinguishes local all-rank positivity from global cyclic negative-index coverage. It corrects the research-priority impression that increasing the near-collision rank from two to six is a necessary route to local all-rank positivity: existing FULL-TEST local theorems already settle the rank quantifier for their support ranges. It does NOT subsume previous near-collision positivity for the UNSCALED fixed generator of support width one, because that width exceeds every support bound used here.

**Canonical mathematical inputs, exact editions/declarations:**
- WFP-v1-1, GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFirstPrimeRankOne.md, Git blob a86b176f396d7d4974fe826469d73957d2d14813: for EVERY primitive q>1, BOTH gamma parities, every original admissible COMPLEX test supported in an interval of length <=log 2+1/1000, the genuine nonprincipal primitive Weil form is >=||f||_2²/125. Exactly the n=2 prime is potentially active, with chi(2) complex phase retained.
- WZAP073-v1-1, same NonrealZeros... directory / WeilZetaAlignedFirstPrime073.md, Git blob 439880285568adf887aa7c7b756207e867a4bd06: for the original conductor-one TWO-POLE zeta form, ALL original admissible complex tests of support length <=73/100 have Q_zeta(f)>=||f||_2²/6000, including true n=2 prime overlap, signed pole and complete gamma. Its analytic proof is WRITTEN and its two-stage Python/C++ rational/integer certificate reportedly RUN; independent original-source audit and Lean kernel replay NOT_RUN.
- WFDG-1/4, WeilFixedBumpNegativeDepth.md, Git blob f079f17cb5194a55a8b89c07d2096ad168eb2c88: fixed dyadic smooth test phi, entire nonvanishing away from the imaginary axis, and the source-exact translate negative-index return to distinct off-line zeta zero pairs. The scaled-generator cyclic return below repeats that same residue/density proof with sigma z replacing z; it is not evidence of a new global sign.
- External primary local Weil-positivity antecedent: E. Bombieri, "Remarks on Weil's quadratic functional in the theory of prime numbers, I", Rend. Lincei 11 (2000), pp.183–233, abstract and §12, explicitly reproves Yoshida's sufficiently-small-support positivity. No novelty or quantitative priority is claimed.

**Live repository and verification pin:** grwtsk/math/main inspected at 185e410ed1696ab43bd3ba7cc228a089f7b7f1ae; root AGENTS.md and CONTRIBUTING.md inspected; no narrower scoped AGENTS found. Lean leanprover/lean4:v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination math issue #1801, scope comment 6844869462. This is a source-only new Markdown consumer; no Lean imports, declarations, sorry/admit, research axioms, CI or dependency pins modified.

## WPALG-1. All primitive sources and all finite ranks in the actual source domain

Let
\[
L_*=\log 2+\tfrac1{1000},\qquad L_\zeta=\tfrac{73}{100}.
\tag{1}
\]
The classical exact inequality log 2<7/10 gives L_*<701/1000<73/100, so the zeta source has the LONGER existing local positive interval. Fix ANY real interval I with length |I|<=L_*. Fix ANY finite m>=1 and ANY complex-valued compactly supported smooth tests f_1,...,f_m whose JOINT supports lie within I. Let chi be ANY primitive Dirichlet character of its exact conductor q>=1, including q=1 for zeta.

Define the true complex Hermitian Weil form Q_chi using the ORIGINAL completed-source physical expression
\[
\begin{aligned}
Q_\chi(f)={}&
\left[\log(q/\pi)+\psi\big(\tfrac{1+2a_\chi}4\big)\right]\|f\|_2^2\\
&+\int_0^\infty
\frac{e^{-(a_\chi+1/2)u}}{1-e^{-2u}}\,
\|f(\cdot+u)-f\|_2^2du\\
&-2\sum_{\substack{n\ge2\\\log n<|I|}}
\frac{\Lambda(n)}{\sqrt n}\,
\Re\left(\chi(n)\int_{\mathbb R}\overline{f(x)}f(x+\log n)\,dx\right)
+\mathbf1_{q=1}P_\zeta(f),
\end{aligned}
\tag{2}
\]
where a_chi in {0,1} is the ACTUAL parity chi(-1)=(-1)^{a_chi}, chi(n) is zero on nonunits, and the conductor-one two-orientation signed pole is
\[
P_\zeta(f)=M_+(f)\overline{M_-(f)}
+M_-(f)\overline{M_+(f)},
\qquad M_\pm(f)=\int_{\mathbb R}e^{\pm x/2}f(x)\,dx.
\tag{3}
\]
This pole is an INDEFINITE cross pairing, not two positive norm squares. All von Mangoldt prime powers, character phases, conductor and gamma/parity terms are retained in (2). Because |I|<=L_*<log3, only n=2 can be active; n>=3 vanish by ACTUAL support, not by deleting Euler factors. If q is even, chi(2)=0; otherwise the genuine phase chi(2) remains.

Let B_chi(f,g) be the Hermitian polarization of Q_chi, and form the matrices
\[
G^\chi_{ij}=B_\chi(f_i,f_j),
\qquad H_{ij}=\int_{\mathbb R}\overline{f_i(x)}f_j(x)\,dx.
\tag{4}
\]

**Theorem (all rank, all primitive characters, source-exact WRITTEN consequence).**
\[
\boxed{
\forall q\ge1\ \forall\chi\text{ primitive of conductor }q\
\forall m\ge1\ \forall(f_1,\ldots,f_m)\text{ as above}:\quad
G^\chi\succeq\tfrac1{6000}H .
}
\tag{5}
\]
The Loewner inequality is genuine Hermitian-positive-semidefinite order on complex m-by-m matrices, for ALL m, with no dimension-dependent constant. For nonprincipal primitive chi, the stronger bound G^chi>=H/125 holds. For conductor-one zeta ALONE, the bound G^zeta>=H/6000 continues whenever |I|<=73/100.

**Proof.** For arbitrary c in C^m put f=sum_j c_j f_j. It belongs to the ORIGINAL compact-smooth test domain, its support lies in I, and its genuine logarithmic gamma energy is finite: near u=0 the whole-line squared translation difference is O_f(u²), while the gamma kernel is O(1/u); at infinity the shift energy is bounded and the gamma kernel is exponentially decaying. Consequently f belongs to the exact native V_{|I|,a_chi+1/2} after translating its support to (0,|I|) (endpoint values are irrelevant to L²; compact smooth tests vanish to every order at their support endpoints). The whole original Q in (2) is translation invariant because its physical autocorrelation and squared shift energy are translation invariant and the signed pole moment factors transform by reciprocal exponentials; no individual off-line zero evaluation is asserted translation invariant.

If q>1 use precisely WFP-v1-1 at support length <=L_* to obtain
\(Q_\chi(f)\ge\|f\|_2^2/125\).
If q=1 use precisely WZAP073-v1-1 and L_*<L_zeta to get
\(Q_\zeta(f)\ge\|f\|_2^2/6000\).
Polarization gives \(c^*G^\chi c=Q_\chi(f)\) and \(c^*Hc=\|f\|_2^2\). This proves (5), including its full complex/all-rank/all-character quantifiers. There is NO appeal to an unproved spectral equivalence or a zero-free strip. The only mathematical input not redemonstrated here is the explicitly named previous source-local all-test positivity, whose stated evidence status is preserved. QED.

## WPALG-2. A scaled DYADIC generator: all ranks, arbitrary spacings, explicit first-prime return

Let phi be the same real even smooth dyadic convolution bump from WFDG-1, supported in [-1/2,1/2], integral one and with entire bilateral Laplace
\[
\Phi(z)=\prod_{j\ge1}\frac{\sinh(2^{-j-1}z)}{2^{-j-1}z}.
\]
For any physical width \(0<a<L_*\), define its L²-normalized scale
\[
\boxed{\phi_a(x)=a^{-1/2}\phi(x/a),\qquad
\operatorname{supp}\phi_a\subset[-a/2,a/2].}
\tag{6}
\]
Its bilateral transform is
\[
\Phi_a(z)=\int\phi_a(x)e^{zx}dx=\sqrt a\,\Phi(az).
\tag{7}
\]
In particular \(\Phi_a(0)=\sqrt a\ne0\), and if Re z !=0, then \(\Phi_a(z)\ne0\) because every possible zero of a sinh(a_j az)/(a_j az) factor lies on the imaginary axis. Do NOT confuse support scaling a with the gamma parity a_chi in (2).

**Theorem.** For EVERY integer m>=1, EVERY primitive chi including q=1, and EVERY collection of DISTINCT real shifts t_1,...,t_m of diameter D=max t_j-min t_j satisfying
\[
\boxed{D+a\le L_*},
\tag{8}
\]
the ORIGINAL Weil translate Gram on the SCALED bump family satisfies
\[
\boxed{
\left[B_\chi(\phi_a(\cdot-t_i),\phi_a(\cdot-t_j))\right]_{i,j}
\succeq\frac1{6000}
\left[\langle\phi_a(\cdot-t_i),\phi_a(\cdot-t_j)\rangle_{L²}\right]_{i,j}
\succ0 .
}
\tag{9}
\]
For nonprincipal chi the factor 1/6000 can be improved to 1/125. For zeta ALONE the support restriction improves to \(D+a\le73/100\) with 1/6000.

**Proof.** The union of the actual supports lies in the interval \([\min t_j-a/2,\max t_j+a/2]\), of length D+a. Apply WPALG-1 to the m original tests \(\phi_a(\cdot-t_j)\), preserving their full prime/gamma/pole arithmetic. To show strictness of the physical L² Gram for distinct shifts, suppose sum_jc_j phi_a(x-t_j)=0. Taking the entire bilateral Laplace transform and using (7) gives \(\Phi_a(z)\sum_jc_je^{zt_j}=0\). Since Phi_a is NONZERO near z=0, the exponential polynomial vanishes there. Its first m derivatives at zero give the Vandermonde matrix (t_j^r) for r=0,...,m-1, which is invertible at distinct real t_j; hence c=0. This proves H>0 and therefore strict G>0. QED.

**Concrete ALL-RANK first-prime example:** Choose a=1/10. Then every primitive character, all m, and any DISTINCT shifts of diameter \(D\le L_*-1/10\) satisfy (9). This interval length is STRICTLY GREATER than \(\log2-1/10\), and it includes geometric configurations in which the n=2 prime-power correlation is nonzero. For the conductor-one zeta source, the range extends to
\[
\boxed{a=\tfrac1{10},\quad D\le\tfrac{63}{100},\quad
m\text{ arbitrary},\quad G^\zeta\succeq H/6000\succ0.}
\tag{10}
\]
No first-zero ordinates, Platt--Trudgian finite RH verification, or WDT high-zero tail are required for these rank-uniform source-corollary bounds: they follow from the genuine signed arithmetic local source itself. All native prime powers are in the definition; at these small supports n>=3 are ZERO BY SUPPORT and n=2 is kept with its correct phase.

## WPALG-3. A cyclic negative-index detector with positive bounded-diameter restrictions

Fix ANY a>0. The scaled dyadic transform Phi_a(z)=sqrt(a)Phi(az) is nonzero at EVERY hypothetical off-critical-line zero z=rho-1/2. The WFDG-4 cyclic translate negative-index proof applies verbatim with Phi_a in place of Phi: for each distinct nontrivial rho the sample of a real translation t is
\[
F_{\phi_a(\cdot-t)}(\rho)=\Phi_a(z_\rho)e^{z_\rho t}.
\]
In WFDG-4 the absolutely summable spectral coefficient sequences are isolated by the actual one-sided Laplace meromorphic residues; the factor Phi_a(z_rho) is nonzero whenever Re z_rho !=0. Critical-line zeros at which Phi_a vanishes are harmless positive coordinates. Thus the same true source negative-index identity holds:
\[
\boxed{
\operatorname{ind}_-\!\left(Q_\zeta\big|
\operatorname{span}_{\mathbb C}\{\phi_a(\cdot-t):t\in\mathbb R\}\right)
=
\operatorname{ind}_-(Q_\zeta)
=
\#\{\text{distinct off-line zeta zero pairs under }\rho\mapsto1-\bar\rho\}.
}
\tag{11}
\]
The right side may be infinite; no finiteness is asserted. Multiplicities enter Q as positive weights and do NOT replace distinct coordinate pairs in this inertia count. This is a SCALED GENERATOR CONSUMER of WFDG-4's existing proof, not a new zero-localization argument.

Equations (9)--(11) are logically COMPATIBLE even if RH is false: EVERY bounded-diameter subfamily covered by (8) is strictly positive, but a negative direction, if one exists, may require test combinations of translations spanning a LARGER physical interval. The cyclic detection theorem crucially quantifies over ALL real shifts; finite local positivity never supplies that missing global diameter quantifier.

## WPALG-4. Redundancy/falsification audit and the actual unresolved arithmetic premise

1. **Earlier rank escalation is not a necessary local strategy.** W2TP-1, W3NC-1, W4NC-1 and W6NC-1 give source-specific finite-rank positivity for the UNSCALED generator phi of physical support WIDTH ONE, on various small-diameter domains; these remain distinct mathematical statements because WIDTH ONE exceeds 73/100. It would be false to say WZAP073 directly subsumes them without first changing the test by scaling. After scaling to a< L_*, WPALG-2 gives all ranks and much larger shift diameters with no rational zero-frequency separation.
2. **No inherited proof promoted.** WFP-v1-1 and WZAP073-v1-1 are complete WRITTEN mathematical arguments with original-source certificates claimed and recorded as executed in their own sources. Their independent mathematical review, full explicit-formula correspondence in Lean, fresh kernel replay and axiom audits are NOT_RUN. The present source corollary has no new executed verification and is not described as a formally accepted result.
3. **All active arithmetic phases are retained.** The original Q_chi includes gamma/parity/conductor and the exact n=2 prime-power interaction when the support exceeds log2, even if its coefficient is complex; the q=1 TWO-ORIENTATION pole term is a signed cross functional, not an absolute-square surrogate. The nonzero PRIME TWO interaction is exactly the arithmetic ingredient paid in the WFP/WZAP073 suppliers.
4. **No uniform Euclidean translate Gram eigenvalue.** As distinct shifts coalesce, the L² Gram becomes poorly conditioned and its smallest eigenvalue tends to zero. Equation (9) is a generalized coercive comparison G>=cH, NOT G>=cI uniformly over arbitrary node collisions.
5. **No nonlocal or GRH transfer.** No bound is asserted for shift diameter larger than L_*-a (or L_zeta-a for zeta), or for unscaled phi of width 1. Neither (5) nor (9) implies that any fixed primitive character has full all-window Weil positivity. Even though (11) sees every hypothetical off-line zeta pair when ALL translations are admitted, a local radius cannot exclude such pairs. Imprimitive characters and broader automorphic L-families are outside this exact source.
6. **Classical prior art:** Bombieri (2000), "Remarks on Weil's quadratic functional in the theory of prime numbers, I", Rend. Lincei 11, pp.183–233, explicitly reproves Yoshida's sufficiently-short-support Weil positivity. There is no claim this bounded-domain positive-definiteness is new. The exact quantitative WFP/WZAP073 supplier constants belong to their preexisting source editions and their own evidence records.

**Remaining substantive arithmetic premise:** Provide a source-exact all-diameter/all-test sign theorem (or an A-uniform negative-index theorem) for the original conductor-one zeta and primitive Dirichlet character forms, with full nontrivial zeros, actual signed prime-power cancellations, dual-character symmetry and both applicable poles. WPALG-1/2 close the m and q quantifiers at one BOUNDED support width, not the support-width quantifier. WPALG-3 shows the full cyclic negative-index target is unchanged by scaling; it does not prove any of its unknown premises. RH, GRH and finiteness of off-line zeros remain open. Lean formal elaboration, fresh kernel replay, transitive axiom audit, independent mathematical review and a comprehensive novelty search are NOT_RUN / UNASSESSED.

No Noe proof automation, cross-chat messaging, browser-chat workflow or scheduler run: the canonical noe-proof-automation skill at grwtsk/noeaaeue/main revision 600d299a6bc842cb09c823d5271fb4c622714972 returned HTTP 404. Manual source-only mathematical authoring and issue coordination grant no additional execution authority.
