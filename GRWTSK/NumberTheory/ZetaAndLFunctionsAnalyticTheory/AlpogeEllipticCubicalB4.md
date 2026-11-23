# Cubical elliptic-sigma B4: scalar-frame gate and integral coordinate invariance


**Mathematical acceptance correction, November 22, 2026.** The cited Ando–Hopkins–Strickland theorem of the cube proves existence of a canonical **section of a cubical line bundle**; it does not, without an explicit integral local-frame comparison, establish equality of that section with the *particular scalar* \(\exp(\delta^3\log(\sigma_E/t_E))\) used in this note's §§4–5. The prior assertion of *completed all-degree B4 for the explicit elliptic-sigma model* is therefore **reclassified as CONDITIONAL ON THE SCALAR MATCH**. Finite exact sigma coefficients, Frobenius-sign analysis and the independent gauge-invariance theorem below retain their stated scopes. This correction does NOT assert an error in the external Lean proof or its RH conclusion.



**Attribution:** grwtsk contributors. **Mathematical scope:** an independent mathematical derivation, using established Honda–Hazewinkel, Lubin–Tate, Frobenius and theorem-of-the-cube results, of **both B4 integrality clauses for the particular elliptic-sigma test family** of the November 21, 2026 explanatory draft, at primes 3, 7 and 11, in a two-site orbit. **Not proved:** B4 for the general automorphic theta kernels; \`Loc.AdmB\` or any global theta-lift witness; the main inequality (M), zero-freeness, original Xi all-rank Newton-Hankel positivity, or the positive self-adjoint Hilbert–Pólya determinant. This note is a mathematical **proof candidate awaiting independent review**, not Lean-verified. No Alpöge RH theorem, equivalent positivity, zero list, or spectral theorem is a premise.

**Local parent pinned:** grwtsk/math main \`8cfb6a3c87ab6c5f69d7759fd2986fbdd0948e71\`; Lean 4.34.1, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. **Direct consumers:** [math #1850](https://github.com/grwtsk/math/issues/1850), [math #124](https://github.com/grwtsk/math/issues/124), [math #1849](https://github.com/grwtsk/math/issues/1849). **Existing source:** [AlpogeThetaDworkB4.md](AlpogeThetaDworkB4.md) (necessary/sufficient Dwork tests, finite model to degree 84), [AlpogeHeightTwoTorusGain.md](AlpogeHeightTwoTorusGain.md) (B4-to-weight transfer without discrete valuations), [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md) (true signed prime and error terms), [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) (exact coefficient-only but nonselfadjoint determinant), [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) (RH-strength positive selfadjoint return). **Executed exact checker:** [verify_alpoge_elliptic_cube.py](../../../scripts/verify_alpoge_elliptic_cube.py).

**Primary external original source (direction, not an RH premise):** Levent Alpöge, *A remark*, November 20, 2026, https://alpo.ge/remark.pdf; pinned public Lean mirror \`leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005\`, \`src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean\` blob \`b8f51123f9c2a096c73e8302aac88e1797de16fc\`, exact definitions \`B1\`, \`B2\`, \`B3\`, \`cobX\`, \`cobY\`, \`B4\` (lines 37–74), \`Loc.B0\` and \`Loc.AdmB\` (lines 192–203). The **d=2 example**, the twists \(c=-i,-1-i,-i\) at \(p=3,7,11\), the analytical \(m(z)=\log(\sigma_c(z)/t_E(z))\), the torus projection and the explicit gap in the human-readable account are in Rubinstein et al., *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, working draft November 21, 2026, https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf, §III.5 pp. 88–89. **Important source restriction:** \`Loc.Inp\` requires \(p\ge5\), so the \(p=3\) case is an illustrative test example, not an admitted original \`Loc.Inp\` case; \(p=7,11\) meet this one numerical threshold but not the remaining global source hypotheses.

**Independent classical theorem sources actually examined:**
- Michiel Hazewinkel, *Formal Groups and Applications* (1978), §§7–8 and Chapter II §13, https://math.bu.edu/people/jsweinst/AWS/Files/HazewinkelFormalGroups.pdf: functional equation lemma, Lubin–Tate equations (8.3.1)–(8.3.4), strict isomorphism theorem (8.1.5)(iv), and higher-dimensional Honda law.
- Michiel Hazewinkel, *On formal groups. The functional equation lemma and some of its applications*, Astérisque 63 (1979), §2 and §5, https://www.numdam.org/article/AST_1979__63__73_0.pdf.
- Matthew Ando, Michael J. Hopkins, Neil P. Strickland, *Elliptic spectra, the Witten genus and the theorem of the cube*, Invent. Math. 146 (2001), pp. 597–599 (especially §1 and equation (1.1)), https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/musix2.pdf. The theorem is formulated over general base rings and identifies the canonical rigidified cubical section with the classical Weierstrass sigma expression over \(\mathbb C\).

## 1. The actual original B4 model and the claim

Fix \(p\in\{3,7,11\}\), let \(A=\mathbb Z_p[i]\) be the ring of integers of the unramified quadratic extension \(K=\mathbb Q_p(i)\), with residue field \(\mathbb F_{p^2}\), and set
\[
c_p=
\begin{cases}
-i,&p=3,\\-1-i,&p=7,\\-i,&p=11.
\end{cases}
\]
Let \(E_p:y^2=x^3-c_px\) and use its integral formal parameter \(t=-x/y\) at the origin. Its discriminant is \(64c_p^3\), a unit in \(A\), so it has good reduction. Let \(\sigma_{c_p}(z)\) be the usual analytic sigma function of this specific curve, normalized by \(\sigma_{c_p}(z)/z\to1\), and
\[
m_p(z)=\log\frac{\sigma_{c_p}(z)}{t(z)}
\in zK[[z]],\qquad
\widetilde\beta(z,w)=m_p(z+w)-m_p(z)-m_p(w).
\tag{1}
\]
This is the paper's **genuine elliptic-sigma test series**, not a substituted general theta kernel.

Let \(q=p^2\), \(\Gamma=\mu_{q-1}(A)\), \(\zeta\in\Gamma\), and define the source two-site torus projection
\[
\beta(z,w)=\frac1{q-1}\sum_{\zeta\in\Gamma}
\widetilde\beta(\zeta z,\zeta^{-p}w).
\tag{2}
\]
This selects precisely the terms with \(a-pb\equiv0\pmod{q-1}\), as in the original §III.5 example. Let
\[
L(T)=\sum_{r\ge0}p^{-r}T^{q^r},\qquad
\Delta_1\beta(x_1,x_2,y)=\beta(x_1+x_2,y)-\beta(x_1,y)-\beta(x_2,y)
\tag{3}
\]
and define \(\Delta_2\) by splitting the second variable instead. The original \(d=2\) B4, with all coefficient field requirements retained, is
\[
\boxed{
\exp\bigl(\Delta_1\beta(L(T_1),L(T_2),L(T_3))\bigr),\
\exp\bigl(\Delta_2\beta(L(T_1),L(T_2),L(T_3))\bigr)
\ \in1+(T_1,T_2,T_3)A[[T_1,T_2,T_3]].
}
\tag{4}
\]

**Theorem (specific all-degree elliptic model B4).** The two source expressions (4) are integral at **every total degree** for each \(p=3,7,11\), assuming only the stated standard formal-group, elliptic-curve and cubical-structure theorems. The proof contains no numerical extrapolation and uses no result about zeta zeros. The proof is **not** an all-degree B4 theorem for the full automorphic theta-kernel family entering global inequality (M).

## 2. The exact source height-two formal group is integral (all degrees)

The Honda logarithm satisfies
\[
L(T)-p^{-1}L(T^q)=T.
\tag{5}
\]
Apply Hazewinkel's functional equation lemma over the DVR \(A\) with residue field of size \(q\), Frobenius lift \(\sigma=\mathrm{id}\) (since \(a^q\equiv a\pmod p\) in the residue field), and coefficient \(s_1=1/p\). The lemma constructs
\[
F_H(T,U)=L^{-1}(L(T)+L(U))
\in A[[T,U]]
\tag{6}
\]
as an **integral** commutative formal group law, including all degrees. Its multiplication-by-\(p\) series is integral, has linear term \(pT\), and
\[
[p]_{F_H}(T)\equiv T^q\pmod p.
\tag{7}
\]
These statements are the precise Lubin–Tate construction in Hazewinkel (1978), §§8.1–8.3. For the *original general even-orbit site logarithm* \(L_s(T)=\sum_rp^{-r}T_{s-2r}^{p^{2r}}\), the higher-dimensional functional-equation lemma similarly proves integrality of \(L^{-1}(L(X)+L(Y))\), using the coordinate-permutation matrix for \(s\mapsto s-2\). That general fact is separate from B4's theta-kernel integrality.

## 3. The elliptic formal group is strictly isomorphic over A to Honda

For each of the three **exact finite fields** \(\mathbb F_{p^2}=\mathbb F_p[i]\), direct rational-integer enumeration of \(E_p:y^2=x^3-c_px\) gives
\[
\begin{array}{c|ccc}
p&3&7&11\\ \hline
\#E_p(\mathbb F_{p^2})&4&36&100\\
a_{p^2}=p^2+1-\#E_p(\mathbb F_{p^2})&6&14&22
\end{array}
\tag{8}
\]
so \(a_{p^2}=2p\). The Frobenius endomorphism \(\operatorname{Fr}_{p^2}\) therefore has characteristic polynomial \((X-p)^2\). The rational endomorphism algebra of an elliptic curve over a finite field contains no nonzero nilpotents, so the Cayley–Hamilton relation forces
\[
\operatorname{Fr}_{p^2}=[p]
\quad\text{on the reduced curve.}
\tag{9}
\]
The parameter \(t=-x/y\) is defined over \(\mathbb F_{p^2}\), so in the formal coordinate
\[
[p]_{F_E}(t)\equiv t^{p^2}\pmod p,\qquad
[p]_{F_E}(t)\equiv pt\pmod{t^2}.
\tag{10}
\]
The integral formal group \(F_E\) of \(E_p/A\) is consequently a Lubin–Tate formal group for **the same uniformizer \(p\)** as \(F_H\). Indeed, \(e=[p]_{F_E}\) belongs to Hazewinkel's exact class \(\mathcal E_p\); the uniqueness lemma identifies \(F_E=F_e\). Lubin–Tate's strict isomorphism theorem (Hazewinkel 1978, (8.1.5)(iv)) gives a unique isomorphism \(h(T)\in T A[[T]]\) with \(h'(0)=1\) and
\[
h(F_H(T,U))=F_E(h(T),h(U)).
\tag{11}
\]
Both logarithms are normalized to first derivative one. Over the characteristic-zero fraction field, their identity therefore determines the **actual analytic coordinate map**:
\[
\boxed{h(T)=t_E(L(T))\in TA[[T]].}
\tag{12}
\]
There is no appeal to numerical coefficients to prove (12); the full series is integral by Lubin–Tate classification.

The executed standard-library checker [verify_alpoge_elliptic_cube.py](../../../scripts/verify_alpoge_elliptic_cube.py) reproduces (8) by independent finite-field enumeration and the exact \(p\)-adic coefficients of (12) to degrees 120,120,140 respectively, including \([T^9]h(T)=1/5\) at \(p=3\). These finite checks are source-consistent observations, not the reason for the all-degree statement.

## 4. The theorem of the cube gives the **unprojected** integral B4 unit

Let \(\mathcal O_E(-[0])\) be the rigidified line bundle at the identity over the **good-reduction integral elliptic scheme \(E_p/A\)**. The classical theorem of the cube supplies a canonical rigidified nowhere-vanishing trivialization of its cubical line bundle \(\Theta^3\mathcal O_E(-[0])\) over \(A\). Trivialize near the origin by the integral uniformizer \(t_E\). Its formal Taylor coordinates then belong to
\[
C_E(t_1,t_2,t_3)\in
1+(t_1,t_2,t_3)A[[t_1,t_2,t_3]].
\tag{13}
\]
The formula of Ando–Hopkins–Strickland (2001), §1, identifies this unique cubical section over \(\mathbb C\) with the Weierstrass sigma *line-bundle* ratio. After removing the zeros of its local theta sections using the same \(t_E\) rigidification, its formal unit is (up to reciprocal, which is also integral)
\[
C_E(t_1,t_2,t_3)=
\frac{
 u(z_1+z_2+z_3)u(z_1)u(z_2)u(z_3)}
 {u(z_1+z_2)u(z_1+z_3)u(z_2+z_3)},
\quad u(z)=\frac{\sigma_{c_p}(z)}{t_E(z)},
\tag{14}
\]
where \(z_j=\log_E(t_j)\). Equivalently \(C_E=\exp(\delta^3m_p)\) in the elliptic logarithmic coordinates. Adding any linear or quadratic normalization to \(\log\sigma\) does not change \(\delta^3m_p\).

Pull the integral cubical section back through the **integral** strict isomorphism (12), giving
\[
\boxed{
U(T_1,T_2,T_3):=
\exp\bigl(
\delta^3m_p(L(T_1),L(T_2),L(T_3))
\bigr)
=C_E(h(T_1),h(T_2),h(T_3))
\in1+\mathfrak m A[[T_1,T_2,T_3]].
}
\tag{15}
\]
This is the first genuine **all-degree integrality** input of the present model argument. It uses the actual sigma function and its actual elliptic curve, not an arbitrary fitted positive kernel. It does not claim that the general theta lifts have an elliptic cubical interpretation.

## 5. Tame torus projection preserves the integral exponential

**Lemma (norm-root integrality).** Let \(A\) be a complete DVR of residue characteristic \(p\), \(\Gamma\) a finite group of coefficient-preserving formal-variable substitutions with \(|\Gamma|=m\) prime to \(p\), and \(U\in1+\mathfrak m A[[T]]\). Then
\[
\boxed{
\exp\left(\frac1m\sum_{\gamma\in\Gamma}\gamma(\log U)\right)
=
\left(\prod_{\gamma\in\Gamma}\gamma U\right)^{1/m}
\in1+\mathfrak m A[[T]].}
\tag{16}
\]
**Proof.** The norm \(V=\prod_\gamma\gamma U\) has coefficients in \(A\) and constant term one. Since \(1/m\in\mathbb Z_p\), every binomial coefficient \(\binom{1/m}{n}\) belongs to \(\mathbb Z_p\): approximate \(1/m\) by nonnegative integers in \(\mathbb Z_p\), use continuity of the binomial polynomial and the fact that its integer values are integers. Therefore \(V^{1/m}=\sum_{n\ge0}\binom{1/m}{n}(V-1)^n\) is integral. The displayed equality holds in the characteristic-zero formal series ring by log and exp. QED.

Apply the lemma to \(U\) in (15) and \(\Gamma=\mu_{p^2-1}\), which has order prime to \(p\). Its action on the original two-site logarithmic coordinates is \((z,w)\mapsto(\zeta z,\zeta^{-p}w)\). Since \(\zeta^{p^2}=\zeta\),
\[
L(\zeta T)=\zeta L(T),\qquad
L(\zeta^{-p}T)=\zeta^{-p}L(T).
\tag{17}
\]
Thus the torus averaging (2) commutes with both original \(\Delta_1,\Delta_2\) additive coboundaries and with substitution of \(L\). For the **unprojected** \(\tilde\beta=\delta m_p\), both \(\Delta_1\tilde\beta\) and \(\Delta_2\tilde\beta\) are the same symmetric third finite difference \(\delta^3m_p\). Equation (16), for the corresponding three-variable torus actions, therefore proves **both** required projected exponentials (4) integral.

**Conclusion of the theorem:** The source B4 integrality is proved mathematically at **every degree for this explicit elliptic-sigma test family at \(p=3,7,11\)**, by the classical Honda–Lubin–Tate and theorem-of-the-cube theorems plus the elementary tame norm lemma. This replaces the earlier finite-degree-only status for these three example curves. It does **not** establish the original automorphic \`Loc.AdmB\` for arbitrary kernels: \`B0\`, general \`B1\`–\`B3\` compatibility, all placewise theta-kernel sources, lattice gluing and (M) remain distinct.

## 6. Independent hostile checks and exact verification

All computations in the [published checker](../../../scripts/verify_alpoge_elliptic_cube.py) are exact integer, rational and Gaussian-rational arithmetic, with no floating-point rounding:
- the three point counts (8) and Frobenius traces;
- \(h=t_E\circ L\) integral for \(p=3\) through degree 120; \(p=7\) through degree 120; \(p=11\) through degree 140;
- the **unprojected** normalized sigma cubical unit \(C_E(h(T_1),h(T_2),h(T_3))\) integral through degree 24, **609 nonzero terms per prime**;
- tame binomial coefficients \(\binom{1/(p^2-1)}{n}\) integral for \(1\le n\le35\) for each prime.

These independently check the **two additional transitions** (integral \(h\) and integral cubical sigma unit) required for the model theorem, rather than merely rerunning the previously published projected B4 jets. The earlier [verify_alpoge_sigma_dwork.py](../../../scripts/verify_alpoge_sigma_dwork.py) separately checks the actual original two projected coboundaries through degree 24, a correct Dwork coefficient test, and the degree-84 necessary Frobenius-ray cancellation; neither finite checker alone proves any infinite formal-series property.

**Hostile scope checks:** Torus invariance by itself is NOT sufficient for B4; the existing \(\beta=X^3Y/9\) counterexample violates B4 at degree four. The cubical source theorem cannot be substituted into global (M) unless an independently verified integral cubical model actually reproduces **each** automorphic theta kernel, with all local factors, conductor, weights and lattice divisibility exactly as in \`Loc.B0\`/\`Loc.AdmB\`. The formal elliptic sigma family is a test model, not an arbitrary instance of a genuine global theta lift.

## 7. Original RH and positive self-adjoint Hilbert–Pólya: exact remaining theorem

The arithmetic endpoint remains the full original
\[
(\mathrm{CoreAtH}+\mathrm{EAtH})\Longrightarrow\mathrm{core\_gm}
\Longrightarrow \text{one-sided source windows}\Longrightarrow RH,
\]
but the **independent suppliers** to \(\mathrm{CoreAtH}\), \(\mathrm{EAtH}\) are not completed. One needs B4 and the source \`B0\` factorization for every **actual** higher-rank theta kernel, all ramified/unramified local factors, Frobenius minor/lattice divisibility, true periods and covolumes, trace and rank bounds, Galois denominators, character \(L'/L\) terms, and **the averaged inequality (M) with its full error budget and uniform quantifiers**. No final external Lean theorem or equivalent RH-strength assertion can supply these for an *independent* proof.

The maintained [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) gives an **unconditional exact source-defined trace-class Fredholm determinant**, but the operator is structurally NONselfadjoint. [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) gives a complete **conditional** coefficient-defined positive self-adjoint operator with all original spectral multiplicities, under the full true-Xi Newton-Hankel PSD, an RH-equivalent premise. This elliptic cubical model result does not prove that premise or create a positive Xi operator.

**Evidence:** all-degree mathematics uses named classical theorems, not computational extrapolation or the external RH endpoint. Local exact model arithmetic tests PASSED; independent human mathematical review NOT_RUN; Lean elaboration, fresh kernel replay, transitive axiom audit **NOT_RUN**; this new mathematical model result has **no new Lean kernel formalization**. The former global theta-source/M/RH/Hilbert–Pólya open status is preserved. No Noe execution, automation, cross-chat messaging, scheduler changes or root build modifications were undertaken.


## 8. Exact Frobenius-sign obstruction to transferring arbitrary CM theta models

**Independent course correction (2026-11-22).** The strict integral coordinate correspondence in (12) relies essentially on the **specific CM twist** and its positive \(p^2\)-Frobenius sign. Supersingularity and height two ALONE do not imply that a formal group is integrally isomorphic over the original coefficient ring to the fixed source \(L(T)=\sum p^{-r}T^{p^{2r}}\). The distinction is mathematical, not numerical, and is mandatory for transferring source B4 to arbitrary elliptic models.

**Theorem (unconditional negative-sign obstruction).** Let \(p\equiv3\pmod4\) be an odd prime, \(A\) the ring of integers of the unramified quadratic extension \(\mathbb Q_{p^2}/\mathbb Q_p\) (residue field \(\mathbb F_{q}\), \(q=p^2\)), and \(E:y^2=x^3-x\) over \(A\). Let \(F_E\) be its integral formal-group law in the parameter \(t=-x/y\), and \(F_H\) the *exact* normalized source Honda law with logarithm
\[
L_H(T)=\sum_{r\ge0}\frac{T^{q^r}}{p^r}.
\]
There is **no integral formal-group isomorphism**
\[
h:F_H\xrightarrow{\;\sim\;}F_E
\quad\text{over }A,
\]
not even if the derivative \(h'(0)\) is allowed to be a non-one unit.

**Proof.** Write \(\chi\) for the quadratic character of \(\mathbb F_p\), with \(\chi(0)=0\). Since \(f(x)=x^3-x\) is odd and \(\chi(-1)=-1\), the terms at \(x\) and \(-x\) cancel in the quadratic-character sum:
\[
\sum_{x\in\mathbb F_p}\chi(x^3-x)=0,\qquad
\#E(\mathbb F_p)=p+1.
\]
The Frobenius trace is therefore \(a_p=0\). The standard elliptic Frobenius equation in \(\operatorname{End}(E_{\mathbb F_p})\) says \(\pi_p^2-a_p\pi_p+[p]=0\), so
\[
\operatorname{Fr}_{p^2}=\pi_p^2=[-p].
\]
The Frobenius raises the integral parameter \(t\) to its \(p^2\)th power modulo \(p\), whereas the formal inverse has leading term \([-1]_{F_E}(t)=-t+O(t^2)\). Thus
\[
[p]_{F_E}(t)\equiv-t^q+O(t^{2q})\pmod p.
\tag{19}
\]
By the Honda–Hazewinkel construction for the source \(L_H\), on the other hand,
\[
[p]_{F_H}(T)\equiv T^q+O(T^{q+1})\pmod p.
\tag{20}
\]
If an integral formal-group isomorphism \(h(T)=uT+O(T^2)\) existed over \(A\), then \(u\in A^\times\) and
\[
h([p]_{F_H}(T))=[p]_{F_E}(h(T)).
\]
Reduce modulo \(p\) and compare **the first nonzero degree \(q\)**. Equations (19)–(20) give
\[
\bar u=-\bar u^q,\qquad \bar u^{q-1}=-1,
\tag{21}
\]
where \(\bar u\in\mathbb F_q^\times\). But every nonzero \(\bar u\in\mathbb F_q\) satisfies \(\bar u^{q-1}=1\), contradicting \(p\) odd. QED.

**Consequences.** A strict map \(h'(0)=1\) is impossible even after unramified scalar extension: in that case (21) reads \(1=-1\). A **nonstrict** unit \(u\) with \(u^{q-1}=-1\) becomes available after extending the residue field from \(\mathbb F_q\) to \(\mathbb F_{q^2}\), but that only removes the **leading-coefficient** obstruction. It neither constructs a full integral isomorphism nor preserves the original source's normalization, character twists, periods, \(\mathrm{B0}\) factors, or (M) error budgets automatically. Such a change of coefficient ring would require its own source-level transport proof.

**Independent exact finite CM-twist controls.** The byte-pinned checker [verify_alpoge_frobenius_sign.py](../../../scripts/verify_alpoge_frobenius_sign.py), using the already-published arithmetic helpers [verify_alpoge_elliptic_cube.py](../../../scripts/verify_alpoge_elliptic_cube.py) (blob \`38ac38edc4ed3dd86b49f9a6ac3e7a97f6814c10\`), enumerates \(\mathbb F_{p^2}\) points and calculates the first source Honda/elliptic coordinate coefficient \([T^{p^2}]t_E(L_H(T))\), with all arithmetic in \(\mathbb Q(i)\) and no floating point:

| \(p\) | Untwisted \(c=1\): \(\#E(\mathbb F_{p^2})\) | Untwisted trace | \(v_p([T^{p^2}]h_{\mathrm{untwisted}})\) | Source-aligned \(c\) | Source-aligned trace | \(v_p([T^{p^2}]h_{\mathrm{aligned}})\) |
|---:|---:|---:|---:|---|---:|---:|
| 3 | 16 | -6 | -1 | \(-i\) | +6 | 0 |
| 7 | 64 | -14 | -1 | \(-1-i\) | +14 | 0 |
| 11 | 144 | -22 | -1 | \(-i\) | +22 | 0 |

For \(p=3\), the first coefficients are **exactly**
\[
[T^9]\,t_{E_{c=1}}(L_H(T))=\frac7{15},\qquad
[T^9]\,t_{E_{c=-i}}(L_H(T))=\frac15,
\tag{22}
\]
so the valuation difference is visible already at the first Frobenius degree. For \(p=7,11\), the complete rational coefficients at degrees \(49,121\) are checked in the script, and their respective valuations are \(-1\) and \(0\). The checker also verifies that no nonzero scalar in \(\mathbb F_{p^2}\) satisfies (21), for all three primes.

**Source and evidentiary limitation.** This all-primes negative-sign obstruction is a genuine mathematical theorem deduced independently from elementary point counting, the elliptic Frobenius equation and formal-group \(p\)-series. The finite script corroborates specific twists, not the all-primes proof. The **positive-sign all-degree model B4 argument in §§1–7** remains a mathematical proof candidate awaiting independent review, not a Lean-checked or globally accepted theta-integrality theorem. It applies to its **chosen aligned CM twists**, not arbitrary supersingular curves. For the actual automorphic theta kernels in Alpöge's (M), even a sign-aligned rank-one elliptic model must still be matched exactly through \`Loc.B0\`/\`Loc.AdmB\`, the hyperbolic basis change, lattice divisibility, local factor/period and global mean-slope arguments. Neither the model proof nor (19)–(22) establishes those correspondences or RH.

**External mathematical source comparison:** the original theorem of the cube is a statement about **sections of cubical line bundles**, not automatically equality of scalar series in independently chosen formal coordinates: Ando–Hopkins–Strickland, *Elliptic spectra, the Witten genus and the theorem of the cube* (2001), Theorem 2.55 and Proposition 2.57, pp. 620–621, https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/musix2.pdf. A scalar normalization match is required in any source-level B4 transport. The separate 21 November 2026 conventional reconstruction, J. Adriazola, [PROOF_DEPENDENCY_MAP.md](https://github.com/jimjamzola/RH-Alpoge-Reconstruction/blob/main/PROOF_DEPENDENCY_MAP.md), pinned blob \`8ec40a42f9fe8999af2e91d2b94b4fd08000dd4b\`, describes the original kernel law as the rank-one theta-transfer / \`BetaIsG\` input, followed by local gain and \`LinkDIV\`. It is **direction**, not an imported RH theorem or a substitute for a source proof.

**Verification status:** new exact rational point-count / Honda coefficient script PASS; its Git source is byte-identical to the executed file. No new Lean theorem is claimed; no Lean elaboration, kernel replay, axiom audit or independent human mathematical review was performed. No imported RH or general theta-positivity premise.

## 9. Exact source B4 gauge invariance and the remaining scalar section

**Primary sources.** Alpöge's actual \`cobX\`, \`cobY\`, \`B1\`–\`B4\`, \`Loc.B0\`, \`Loc.AdmB\` are in \`src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean\` at \`leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005\`, Git blob \`b8f51123f9c2a096c73e8302aac88e1797de16fc\`. The independent analytic input is Ando–Hopkins–Strickland (2001), Equation (1.1) on printed p. 598 and Theorem 2.55 on p. 620, https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/musix2.pdf. These identify a **cubical line-bundle section**, not a scalar series without a chosen local frame.

**Theorem (all-degree, RH-independent, with the original two-site source action).** Let \(p\) be odd, \(A\) the integer ring of a \(p\)-adic unramified quadratic extension containing \(\mu_{p^2-1}\), and \(F_H\) the *integral* Honda formal group with the actual height-two logarithm
\[
L(T)=\sum_{r\ge0}p^{-r}T^{p^{2r}}.
\]
Assume a good-reduction elliptic group with integral parameter \(t_E\) and a **specified integral strict** coordinate \(h(T)=t_E(L(T))\in TA[[T]]\) intertwining \(F_H,F_E\). This is a hypothesis, not a generic consequence of supersingularity: §8 gives a Frobenius-sign obstruction for invalid twists. Let \(\theta(z)\) be a normalized sigma section, \(u(z)=\theta(z)/t_E(z)\) with \(u(0)=1\), \(m(z)=\log u(z)\), \(\beta(z,w)=m(z+w)-m(z)-m(w)\). Let \(\mathcal P\) be the **original** source projector
\[
\mathcal P\beta(z,w)
=\frac1{p^2-1}\sum_{\zeta^{p^2-1}=1}
  \beta(\zeta z,\zeta^{-p}w).
\tag{G1}
\]
The two source B4 series are \(B_X=\exp((\Delta_X\mathcal P\beta)\circ L)\) and \(B_Y=\exp((\Delta_Y\mathcal P\beta)\circ L)\).

**(a) Arbitrary Gaussian normalization.** Multiplication of \(\theta\) by \(\exp(az^2+bz)\), with \(a,b\in K\) **not required integral**, leaves *both B4 series exactly unchanged*. Indeed, the third additive finite difference \(\delta^3(az^2+bz)\) vanishes identically. More strongly the change in \(\beta\) is \(2azw\), whose projector vanishes because the torus character \(\zeta^{1-p}\) is nontrivial (since \(p^2-1\nmid p-1\)). Thus already \(\mathcal P\beta\) is unchanged. This removes the Gaussian/quasiperiod normalization ambiguity without assuming its coefficient \(p\)-integral.

**(b) Integral elliptic coordinate gauge.** Let \(\varphi(t)\in1+tA[[t]]\), \(t'_E(z)=t_E(z)\varphi(t_E(z))\), and let \(\beta'\) be derived using the *same theta* but the new normalized coordinate. Then **for both X and Y separately**, the B4 series for \(t'_E\) and \(t_E\) differ by multiplication by a series in \(1+\mathfrak m A[[T_1,T_2,T_3]]\), \(\mathfrak m=(T_1,T_2,T_3)\). Hence the corresponding B4 coefficient-integrality statements are **equivalent**, at all degrees.

*Proof.* Write \(m'(z)=m(z)-\log\varphi(t_E(z))\). For every nonempty \(S\subseteq\{1,2,3\}\), put
\[
T_S=L^{-1}\!\left(\sum_{i\in S}L(T_i)\right),
\qquad u_S=\varphi(h(T_S))\in1+\mathfrak m A[[T]].
\]
The source Honda law and \(h\) are integral, so every one of these seven units is integral. The **full unprojected coordinate correction** is exactly
\[
\boxed{
U_\varphi=\frac{u_{123}\,u_1u_2u_3}{u_{12}u_{13}u_{23}}
=\exp\bigl(\delta^3\log\varphi(t_E(z))\bigm|_{z_j=L(T_j)}\bigr)
\in1+\mathfrak m A[[T]].
}
\tag{G2}
\]
For the first original \`cobX\`, the torus acts on \((T_1,T_2,T_3)\) by \((\zeta,\zeta,\zeta^{-p})\); for \`cobY\`, by \((\zeta,\zeta^{-p},\zeta^{-p})\). The source \(L\) is equivariant under these Teichmüller weights because \(L(\zeta T)=\zeta L(T)\) when \(\zeta^{p^2-1}=1\). Let \(\mathcal P_X,\mathcal P_Y\) denote these averages on the logarithm of \(U_\varphi\). For \(i=X,Y\),
\[
\boxed{
V_i=\exp(\mathcal P_i\log U_\varphi)
=\left(\prod_{\zeta\in\mu_{p^2-1}}\zeta_i U_\varphi
\right)^{1/(p^2-1)}
\in1+\mathfrak m A[[T]].
}
\tag{G3}
\]
The norm is a unit with integral coefficients; its unique \(1/(p^2-1)\)-power has integral coefficients by the \(p\)-adic binomial theorem, since \(1/(p^2-1)\in\mathbb Z_p\). Its inverse is integral as well. Thus \(B'_i=B_iV_i^{-1}\) and both directions of B4 integrality follow. No outside RH theorem is used. QED.

**Compatibility with B0 is algebraic, not its existence proof.** If the *genuine kernel* were independently factored as \(\Theta=U\exp(-\Upsilon)\) with \(U\) an integral unit, then an integral exponential gauge \(\Upsilon'=\Upsilon+\eta\), \(\exp\eta\in A[[T]]^\times\), changes the residual to \(U'=U\exp\eta\), still integral. This does NOT construct \(\Theta\), the \`Loc.B0\` hyperbolic-frame identity, its prescribed \(ep\), the lattice/covolume factors or source (M).

**Exact finite source-model controls.** The executable [verify_alpoge_cubical_gauge.py](../../../scripts/verify_alpoge_cubical_gauge.py) uses the **actual CM elliptic** \(t_E(z)\) recurrence, the **genuine Honda \(L(T)\)** (including \(T^9/3\) when \(p=3\)), and the source torus projector. Under the nontrivial integral strict gauge \(\varphi(t)=1+2t+3t^2\), exact Gaussian rational arithmetic shows both unprojected \(U_\varphi\) and the projected norm-root are \(p\)-integral through total degree 11 for \(p=3,c=-i\) (166 and 12 terms); degree 12 for \(p=7,c=-1-i\) (221 and 7 terms); and degree 14 for \(p=11,c=-i\) (365 and 11 terms).

**Hostile hypothesis check:** with the **nonintegral** gauge \(\varphi(t)=1+t/p\), source B4-style projected integrality fails: for \(p=3\), the coefficient of \(T_1^2T_2T_3\) is \(-1/27\), with valuation \(-3\); for the source-range \(p=7,c=-1-i\), the coefficient of \(T_1^6T_2T_3\) is \(38411/4117715+16i/1715\), with \(v_7=-7\). Thus the integral-gauge premise cannot be discarded.

**Exact still-open scalar identification.** The theorem of the cube yields a canonical \(s_{E/A}\) **in the line bundle** \(\Theta^3\mathcal I(0)\). For its use in B4, one must identify, with all local frames and signs,
\[
\boxed{
\operatorname{scalar}_{t_E}(s_{E/A})
=\exp(\pm\delta^3\log(\sigma_E/t_E)),
}
\tag{G4}
\]
or exhibit a *proven integral unit* relating these expressions, under the same addition laws, rigidification, and theta-section normalization. Theorem 2.55 **alone** does not supply the exact scalar equality (G4). This is the specific missing source proof in §§4–5; the present gauge theorem shows that an integral change of \(t_E\) cannot create or erase B4 failure once (G4) has been established in one legitimate frame. A nonintegral gauge CAN create a failure, as the hostile check demonstrates.

Even after (G4) is proved for the three elliptic models, \`Loc.B0\` for the actual higher-rank automorphic theta kernels, Frobenius minor divisibility, all local factors/periods/lattice covolumes, trace/Galois bounds, character corrections and **the complete averaged first inequality (M)** remain independent proof obligations. The exact coefficient-defined true-\(\Xi\) Fredholm companion remains **nonselfadjoint**, and the distinct positive selfadjoint moment return requires independent all-rank Newton Hankel positivity (RH-equivalent). This section proves no independent RH or completed Hilbert–Pólya result.

**Evidence:** (G1)–(G3) are formal all-degree proofs under displayed hypotheses; the CM tests were executed in exact rational arithmetic, and the tested script is source-pinned; the scalar comparison (G4) is **NOT_PROVED**. The new infinite theorem has no Lean elaboration/kernel replay or axiom audit (**NOT_RUN**); independent mathematical review is **NOT_RUN**. This is a deliberate correction of the former unconditional model-B4 acceptance wording.
