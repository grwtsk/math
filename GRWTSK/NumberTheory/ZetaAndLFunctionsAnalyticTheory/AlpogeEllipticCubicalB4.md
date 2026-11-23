# Elliptic-sigma B4: exact cubical scalar frame, Honda model, and tame descent


**Source-fidelity audit, November 22, 2026.** The canonical cubical section is a section of a **line bundle**, not an ordinary scalar function. Section 10 now identifies its exact scalar in the rigidified integral \(t_E=-x/y\) frame using *both* Ando–Hopkins–Strickland (2001), Equation (1.1) and Definition 2.56, with the reciprocal sign independently checked by exact rational Weierstrass calculations. This closes the earlier scalar-frame proof obligation **for the explicit good-reduction elliptic-sigma models**, subject to the stated classical theorems and source-aligned integral Honda coordinate. It does **not** identify Alpöge’s arbitrary higher-rank \`Loc.B0/B4\` theta kernels, prove (M), prove RH independently, or produce a positive self-adjoint Hilbert–Pólya operator. Mathematical independent review and Lean formalization remain NOT_RUN.



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

**Exact elliptic-model scalar identification (proved in §10).** The theorem of the cube yields the canonical \(s_{E/A}\) in the line bundle \(\Theta^3\mathcal I(0)\). AHS Equation (1.1) and its rigidification, interpreted in the integral local coordinate, give the following precise scalar with *fixed reciprocal sign*:
\[
\boxed{
\operatorname{scalar}_{t_E}(s_{E/A})
=\exp(-\delta^3\log(\sigma_E/t_E)),
}
\tag{G4}
\]
Theorem 2.55 alone does not supply this local scalar formula, but AHS Equation (1.1), the explicit divisor-based section (Definition 2.56), and the integral \(t_E\)-frame comparison in §10 together do. The inverse scalar is an integral formal unit whenever the section is integral. The integral-gauge theorem above shows that this model conclusion is independent of the chosen integral strict coordinate; its hostile control shows nonintegral gauges can fail.

Even with (G4) now established for the three elliptic models, \`Loc.B0\` for the actual higher-rank automorphic theta kernels, Frobenius minor divisibility, all local factors/periods/lattice covolumes, trace/Galois bounds, character corrections and **the complete averaged first inequality (M)** remain independent proof obligations. The exact coefficient-defined true-\(\Xi\) Fredholm companion remains **nonselfadjoint**, and the distinct positive selfadjoint moment return requires independent all-rank Newton Hankel positivity (RH-equivalent). This section proves no independent RH or completed Hilbert–Pólya result.

**Evidence:** (G1)–(G3) are formal all-degree proofs under displayed hypotheses; the CM tests were executed in exact rational arithmetic, and the tested script is source-pinned; the exact elliptic-model scalar comparison (G4) is proved analytically in §10 using the two AHS formulas, and checked to degree 12 by independent exact rational tests. This theorem is NOT Lean-formalized; Lean elaboration/kernel replay/axiom audit are NOT_RUN, and independent mathematical review is NOT_RUN. The global automorphic theta-source and (M) remain open.


## 10. Exact scalar-frame identification using both AHS formulas

**Theorem (closed for the explicitly specified CM elliptic model, independent of RH).** Let \(E/A\) be a good-reduction elliptic curve with an integral Weierstrass model over the \(p\)-adic integer ring \(A\), with normalized parameter \(t_E=-x/y\). Let \(\sigma_E(z)\) be its classical Weierstrass sigma function over the characteristic-zero embedding, with \(\sigma'_E(0)=1\), and \(z\) the formal logarithm, so \(t_E(z)=z+O(z^2)\). Then in the rigidified \(\mathcal I(0)\) cubical line, the canonical section \(s_{E/A}\) of AHS Theorem 2.55 has **exact scalar**
\[
\boxed{
\operatorname{scalar}_{t_E}(s_{E/A})=
\frac{u(z_{12})u(z_{13})u(z_{23})}
     {u(z_{123})u(z_1)u(z_2)u(z_3)}
=\exp(-\delta^3m_E),\qquad
u(z)=\frac{\sigma_E(z)}{t_E(z)},\ \ m_E=\log u.
}
\tag{S.1}
\]
Here \(z_S=\sum_{j\in S}z_j\), and the scalar is expressed in the **same integral cubical frame** built from the \(t_E(z_S)\). This is a direct comparison of classical formulas, *not* a new theorem-of-the-cube proof or an assumption of B4. In particular \(\exp(+\delta^3m_E)\) is the **inverse** scalar of the canonical section, and is integral at all degrees. Its two tame torus projections give the B4 exponentials for the explicit model when the integral Honda change of coordinate \(h=t_E\circ L\) has been established as in §3. The usual Gaussian factor \(\exp(az^2+bz)\) cancels by §9.

**Proof (with the fiber at zero retained).** AHS Equation (1.1), printed p. 598, expresses the canonical section of \(\Theta^3\mathcal I(0)\) over the complex elliptic curve as the *fiber-valued* Weierstrass sigma ratio
\[
s_\sigma(z_1,z_2,z_3)=
\frac{\sigma(z_{12})\sigma(z_{13})\sigma(z_{23})\,\sigma(0)}
{\sigma(z_{123})\sigma(z_1)\sigma(z_2)\sigma(z_3)}.
\tag{S.2}
\]
The symbol \(\sigma(0)\) in (S.2) belongs to the rigidified **fiber of the ideal line** \(\mathcal I(0)_0\), not to the ordinary complex numbers. Numerically \(\sigma(0)=0\), but its normalized first jet \(\sigma'(0)=1\) is a **nonzero generator of that fiber**. Replacing this fiber factor by the number zero would incorrectly annihilate the cubical section.

Now choose the **integral local frame** supplied by \(t_E\) for every pullback \(z_S^*\mathcal I(0)\). In the tensor convention AHS defines on p. 598,
\[
\Theta^3\mathcal I(0)
=\frac{\mathcal I(z_{12})\mathcal I(z_{13})\mathcal I(z_{23})\,\mathcal I(0)}
{\mathcal I(z_{123})\mathcal I(z_1)\mathcal I(z_2)\mathcal I(z_3)}.
\]
Its frame on the completed local ring is the corresponding seven-factor quotient of the **local generators \(t_E(z_S)\)**, together with the normalized first-jet generator \(dt_E\) of \(\mathcal I(0)_0\). Dividing (S.2) by this frame cancels every zero/pole factor individually and replaces it by \(u(z_S)=\sigma(z_S)/t_E(z_S)\). Since \(\sigma'(0)=t_E'(0)=1\), the rigidification factor is exactly one. The resulting scalar is precisely (S.1), with its negative third-coboundary sign fixed.

The comparison uses not only the abstract existence statement AHS Theorem 2.55 but its **explicit complex formula** (1.1), together with **Definition 2.56** (the integral algebraic section represented by a quotient of a \(3\times3\) determinant and three \(2\times2\) determinants) and **Proposition 2.57**, which identifies that algebraic section with \(s_{E/A}\). Because the AHS determinant expression is algebraic over the universal Weierstrass coefficient ring and base-change-compatible, its pullback to the good-reduction model over \(A\) is an integral nowhere-vanishing section of the cubical line. Dividing it by the integral \(t_E\)-frame yields a series in \(1+\mathfrak m A[[t_1,t_2,t_3]]\). Its equality over the chosen complex embedding to the right side of (S.1) is a **formal power-series identity with algebraic coefficients**, and therefore transports to the characteristic-zero \(p\)-adic completion. This proves the all-degree integrality of the **inverse**, \(\exp(\delta^3m_E)\). No RH theorem or zeta zeros are involved. \(\square\)

**Independent scalar-frame sign and normalization verification.** The new standard-library script [verify_alpoge_cubical_scalar.py](../../../scripts/verify_alpoge_cubical_scalar.py) expands the *algebraic AHS Definition 2.56 determinant* in the chart \(y=1\),
\[
[x:y:z]=[-t_E(z):1:-z^3/B(cz^4)],
\quad \wp_c(z)=z^{-2}A(cz^4),\
\wp_c'(z)=-2z^{-3}B(cz^4),
\]
where \(B=A-2uA'\) and \(B^2=A^3-uA\) are derived independently from the actual Weierstrass equation of \(E_c:y^2=x^3-cx\). It divides the determinant section by the **full \(t_E\)-cubical frame** and independently reconstructs \(m_E(z)\) using \((\log\sigma_c)''=-\wp_c\), so no precomputed sigma coefficients are used as an oracle.

Across \(c=1,-1,2\) and triples of rational formal logarithmic slopes \((1,2,4)\), \((1,3,5)\), \((1,2,6)\), **all nine exact-rational checks passed** for the scalar's constant term and its coefficients at degrees \(4,8,12\), with zero coefficients at the intermediate degrees. For example at \(c=1\), slopes \((1,2,4)\),
\[
\operatorname{scalar}_{t_E}(s_{E/A})\bigm|_{z=(h,2h,4h)}
=1+280h^4+240296h^8+\frac{3152149616}{15}h^{12}+O(h^{16}).
\tag{S.3}
\]
The same three coefficients are obtained from \(\exp(-\delta^3m_E)\). The tests confirm the **reciprocal sign and frame normalization**, but are not substitutes for the all-degree algebraic comparison above and are not an audit of the higher-rank theta kernels.

**Exact limit of what is now proved.** The scalar-normalization obstruction (G4) is discharged **for the explicitly defined good-reduction elliptic-sigma model with an integral Honda-to-elliptic coordinate**, using standard AHS and Lubin–Tate results and an independent algebraic scalar check. No analogous **actual-source** equality has been produced between these model cubical sections and the *automorphic theta kernels* in Alpöge's \`Loc.B0\` or the higher-rank period-pairing. The original \`B0/B4\` for those kernels, Frobenius-minor lattice divisibility, local Euler factors, periods/covolumes, trace/rank, Galois denominators, character \(L'/L(1)\) corrections, uniform error estimates and the first inequality (M) remain **independently OPEN**. The exact true-\(\Xi\) coefficient Fredholm companion remains nonselfadjoint with a one-dimensional adjoint kernel; the distinct positive self-adjoint \(\Xi\)-determinant construction still requires independently proved all-rank Newton Hankel positivity, equivalent to RH. This note proves no RH or completed independent Hilbert–Pólya statement.

**Evidence status:** mathematical all-degree argument relies only on independently published classical AHS/Hazewinkel results and stated integral-model hypotheses; finite exact-rational comparison tests PASS, including source algebraic determinant and sigma coefficients through degree 12. No new Lean formalization, fresh kernel replay, transitive axiom audit, or independent mathematical review (**NOT_RUN**).

## 11. Integral parity coordinates on every even orbit

The following argument transports two rank-one integral cocycles to both B4 series of the source's `beMean`. It applies to every even orbit length \(d\ge2\). For the arithmetic application it leaves a specific rank-one input and the identification with the normalized theta lift.

Work over the valuation ring \(R\) of an unramified \(p\)-adic field \(K\), allowing the completed maximal unramified extension. Let \(\sigma\) lift the residue-field \(p\)-power map and fix \(\mathbb Q_p\). Use \(v(p)=1\), \(q=p^2\), and one set of indeterminates \(T_s\) indexed by \(s\in\mathbb Z/d\mathbb Z\). In exponents of \(\sigma\) use representatives \(0,\ldots,d-1\). Write
\[
 \lambda(X)=\sum_{j\ge0}\frac{X^{q^j}}{p^j},\qquad
 L_s(T)=\sum_{j\ge0}\frac{T_{s-2j}^{q^j}}{p^j}.
\]
These are the one-variable Honda logarithm and the source's `letLog`. The doubled logarithm uses two independent copies of the same site shift. The coefficient formulas for `linE`, `linO`, `addC`, `beTil` and `beMean` fix the normalization below. [Alpöge archive, `TrDual.lean`, blob `c20d6741d887da89ae1107d98a30a4e31ede2f65`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/TrDual.lean#L20-L48)

**Parity coordinate lemma.** For \(e\in\{0,1\}\) and \(c\in R\) with \(\sigma^d c=c\), put \(G_{e,c}=\sum_{s\equiv e\bmod 2}\sigma^s(c)L_s\). Then \(U_{e,c}=\lambda^{-1}(G_{e,c})\) has integral coefficients at every degree and constant term zero.

**Proof.** On series put \(\Phi f=\sigma^2(f)(T^q)\), where the endomorphism on the right acts on coefficients and each variable is raised to the \(q\)-th power. Reindexing \(s\) by two in each parity class gives
\[
 (1-\Phi/p)G_{e,c}=\sum_{s\equiv e\bmod 2}\sigma^s(c)T_s .
\]
Periodicity of \(c\) supplies the two wraparound indices. For an integral series \(V\) with zero constant term, expand
\[
 (1-\Phi/p)\lambda(V)
 =V+\sum_{j\ge1}
 \frac{(V^q)^{q^{j-1}}-(\Phi V)^{q^{j-1}}}{p^j}.
\]
The two bases \(V^q,\Phi V\) agree modulo \(p\). By the binomial theorem, raising two congruent elements modulo \(p^a\) to the \(p\)-th power gives congruent elements modulo \(p^{a+1}\) for \(a\ge1\). Each numerator therefore belongs to \(p^{2j-1}R[[T]]\). Only finitely many summands affect each degree. In degree \(n\ge1\) the displayed expression equals the degree-\(n\) part of \(V\) plus a correction determined by its lower-degree parts, because each nonlinear term only uses powers of degree at least \(q\) or substitutions of degree at least \(q\). Inserting the truncation through degree \(n-1\) shows that the correction is integral. Thus one can choose the degree-\(n\) coefficients in \(R\), successively, to obtain the linear series on the right of the first display. The operator \(1-\Phi/p\) is injective on zero-constant series over \(K\) by comparison of lowest nonzero degree. Hence \(\lambda(V)=G_{e,c}\), as required.

**Checks on the hypotheses.** For \(d=2,e=0\) the coordinate is \(\lambda^{-1}(c\lambda(T_0))\). Its coefficients in degrees \(1\) and \(q\) are \(c\) and \((c-c^q)/p\). Taking \(c=1/p\) violates integrality in degree one. Taking \(c\) to be the Teichmüller lift of an element of \(\mathbb F_{p^3}\setminus\mathbb F_p\) gives an integral unit with \(\sigma^2c\ne c\) and valuation \(-1\) in degree \(q\). This checks the role of Frobenius periodicity independently of the reindexing proof.

**Application to both coboundaries.** Let \(F(A,B)=\lambda^{-1}(\lambda(A)+\lambda(B))\). Take the rank-one series \(b_0\in K[[A,B]]\) satisfying the source's `F1`. Its support is divisible by \(AB\), and the exponentials of
\[
 b_0(F(A,A'),B)-b_0(A,B)-b_0(A',B),\qquad
 b_0(A,F(B,B'))-b_0(A,B)-b_0(A,B')
\]
belong to \(1+(A,A',B,B')R[[A,A',B,B']]\). Take a finite family \(\omega_r,\omega_r^*\) satisfying `OwOK`, i.e. all are integral and fixed by \(\sigma^d\). Before torus averaging, the substitution of \(L_s\) into `beTil` gives exactly \(\sum_r b_0(U_{0,\omega_r^*},U_{1,\omega_r})\). Splitting the even logarithmic variables replaces the first parameter by \(F(U_0,U'_0)\), since \(\lambda\) takes this sum to \(G_0+G'_0\). Hence the exponential of the even defect is the product over \(r\) of the first rank-one units pulled back along integral zero-constant series. Splitting the odd variables gives the product of the second units evaluated at \(U_0,U_1,U'_1\). Both products are integral with constant term one. [Rank-one `F1` and `OwOK`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/TrDual.lean#L75-L84)

Take \(N=p^d-1\) and assume \(K\) contains a primitive \(N\)-th root \(\zeta\). The twist by \(u=\zeta^k\) acts on the even coefficients by \(\omega_r^*\mapsto u\omega_r^*\) and on the odd coefficients by \(\omega_r\mapsto u^{-1}\omega_r\), since \(\sigma(u)=u^p\). These coefficients still satisfy `OwOK`. For either defect the exponential of the mean is the unique constant-one \(N\)-th root of the product of its \(N\) twisted units. It is integral by recursive coefficient comparison, since \(N\in R^\times\). Under the unramified embedding \(R\subseteq\mathrm{Wint}(p)\) this proves both `OverWOne` clauses of B4 for this `beMean`, with sheet labels reordered from `Bool × ZMod d` to `ZMod d × Fin 2`. The upstream proof uses `ShiftIP` and `PairRules` on the same two defects. [Upstream comparison, blob `98e9cfdc5a1d104c9cb65e728c9c867897a7ac8c`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/KummerThetaLogarithms/BiextensionHypothesesOfConditions.lean#L147-L202)

**Return to the theta lift.** The source specifies \(b_0=\mathrm{cob}\,F\,(\mathrm{phFF}(p,g_2,g_3,s_2,\varepsilon))\). Its curve theorem requires \(p>2\), integral \(g_2,g_3\), a unit \(\varepsilon\), and coefficientwise integrality of the series `thetaS` in those parameters. The upstream `first_level_curve_holds` proves `F1` from these inputs. An independent arithmetic reconstruction must still supply them for each selected curve and prove that the transported mean gives the `be r` used for that orbit. The kernel comparison requires the same `ep`, signs, orbit coordinates and integral factor \(U\) in `ThetaExpansionAllPlaces` and the full `BeOK` conjunction. This section proves the parity-coordinate lemma and the conditional B4 transport. Its local Lean elaboration, fresh kernel verification, transitive axiom audit and independent mathematical review are `NOT_RUN`. [Curve input](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/StatementE.lean#L51-L66) · [Upstream curve proof](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/KummerThetaLogarithms/LubinTateLogIsArtinHasse.lean#L239-L253) · [Orbit consumer](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/OrbitPlaces.lean#L175-L190)

In particular, `EvenConditionsInert` fixes the same local data `E.ep w`, `E.sg w` and `E.be w` throughout. For every level-free choice of \(u,\mu,w\) satisfying its prime condition and every set of orbit representatives, it requires both `BeOK` and the theta expansion for every \(i<m\) with even \(N_i N_{i+1}\) and every lattice pair \(L,L'\). Choosing a separate kernel for each pair would lose this uniformity. [Exact quantifiers in the orbit consumer](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/OrbitPlaces.lean#L303-L307)

## 12. The integral Honda coordinate for every inert good CM model

**Theorem.** Take the data of Alpöge's `CM3`. Thus \(D\) is squarefree, \(D\equiv3\pmod4\), the complex period lattice is stable under \(\omega=(1+\sqrt{-D})/2\), and \(p\ge5\) is prime with \(p\nmid D\) and \(-D\) a nonsquare mod \(p\). Fix the source field isomorphism \(\iota:\mathbb C\simeq\mathbb C_p\) and **any** pair \(g_2,g_3\) satisfying `IsGoodModel` for this lattice. Put \(K=\widehat{\mathbb Q_p^{\rm nr}}\), \(R=\mathcal O_K\), \(O=\mathbb Z_{p^2}\) (the integers of the unramified quadratic extension), and \(q=p^2\). The source's `MaximalUnramifiedExtension` is exactly \(K\) inside \(\mathbb C_p\), since roots of unity of order prime to \(p\) generate all finite unramified extensions and the source takes their topological closure. In particular \(R\) is a complete DVR with uniformizer \(p\) and residue field \(\overline{\mathbb F}_p\).

For \(\lambda(X)=\sum_{j\ge0}X^{q^j}/p^j\), define
\[
  h_e(X)=\mathrm{uSer}(g_2,g_3)(e\lambda(X)),\qquad
  P_E=\{e\in R^\times:h_e\in R[[X]]\}.
\]
There is \(e_0\in R^\times\) with \(P_E=e_0 O^\times\). In particular this proves coefficientwise integrality and coefficient-field membership at every degree for the *same* unit in the actual `thetaS` of this good model. [Alpöge, original definitions and `CM3`, blob `95fd81f6e1a85c689b64e5c531f2c76064ef917f`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/CMGoodModels/Statement.lean#L9-L55) · [`thetaS` in the B4 curve supplier](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/StatementE.lean#L17-L22)

**The CM action on the given smooth model.** By `IsGoodModel` both coefficients lie in \(R\) and \(g_2^3-27g_3^2\) is a unit. Hence \(E:y^2=x^3-(g_2/4)x-g_3/4\) gives an elliptic scheme over \(R\). The scaling clause identifies its geometric generic fiber with the transported lattice curve. Multiplication by \(\omega\) on the complex torus is algebraic, and transport of this algebraic map and scaling gives an endomorphism of \(E_{\mathbb C_p}\) with tangent multiplier \(a=\iota(\omega)\). The quadratic minimal polynomial has discriminant \(-D\), so the embedded completion of \(\mathbb Q(\omega)\) at \(p\) is the unramified quadratic subfield of \(K\). Its integer ring is \(O\), with \(\mathbb Z[\omega]\) dense under this embedding.

The endomorphism descends to \(K\). Indeed its kernel is contained in \(E[N]\) for \(N=\omega\bar\omega=(D+1)/4\), hence is defined over \(\bar K\). The quotient and the origin-preserving isomorphism from the quotient to \(E\) can also be taken over \(\bar K\). For the latter assertion the scheme of such isomorphisms is finite in characteristic zero, as follows from the scaling equations between short Weierstrass models. Every Galois conjugate has the same tangent multiplier \(a\in K\). In characteristic zero a nonzero endomorphism of an elliptic curve is separable, so its differential is nonzero. Applying this to differences gives equality of all conjugates and descent. The Néron mapping property of the good model extends this endomorphism over \(R\). Restricting to the completion at the origin gives an integral \(\mathbb Z[\omega]\)-action. For \(b\in O\), approximate \(b\) by elements of this order. The coefficients of \(\exp_E(b\log_E(X))\) are polynomials in \(b\) over \(K\) at each fixed degree, with normalized formal logarithm and its inverse. Closedness of \(R\) gives an integral action of \(O\), with tangent action the chosen inclusion \(O\hookrightarrow R\). [Bosch, Lütkebohmert and Raynaud, *Néron Models*, §1.2, Proposition 8](https://doi.org/10.1007/978-3-642-51438-8)

**Relative height and the comparison isomorphism.** In the special fiber write the first nonzero term of \([p]_E\) as \(cX^{p^h}\). Here \(1\le h\le2\) since \([p]\) has zero differential and degree \(p^2\), and its local degree at the origin is its inseparable degree. Commuting this series with \([\omega]\) in the special fiber gives \(c\bar a^{p^h}=\bar a c\). Inertness gives \(\bar a\in\mathbb F_{p^2}\setminus\mathbb F_p\), so \(h=2\). In Drinfeld's convention the first degree is \(q\), giving \(O\)-height one.

The Honda group with logarithm \(\lambda\) is integral by the functional equation in §2. Its \(O\)-action is integral by §11 with orbit length two, since each \(b\in O\) is fixed by the square of Frobenius. The coefficient of \(X^q\) in \(\lambda^{-1}(p\lambda(X))\) is \(1-p^{q-1}\), and the coefficients in degrees \(2,\ldots,q-1\) vanish. It too has \(O\)-height one. Both formal modules have the same structural embedding of \(O\) into \(R\). Their special fibers are therefore isomorphic as formal \(O\)-modules over \(\overline{\mathbb F}_p\) by Drinfeld's Proposition 1.7(1). Fix one such identification. Both lifts to \(R\) now deform the same framed special fiber. By Proposition 4.2 the universal ring at height one is \(\widehat{O^{\rm nr}}=R\), with zero deformation parameters. The unique structural map from this universal base to \(R\) gives an integral \(O\)-linear isomorphism \(h:F_{\rm Honda}\longrightarrow\widehat E\). Its derivative \(e_0=h'(0)\) is a unit. In characteristic zero, composing with the normalized logarithms yields \(\log_E h=e_0\lambda\). [V. G. Drinfeld, *Elliptic modules* (1974), §§1D and 4, Propositions 1.7 and 4.2](https://doi.org/10.1070/SM1974v023n04ABEH001731)

The integral parameter of this specific model is \(t=-x/y\). In normalized elliptic logarithmic coordinate \(z\), its inverse logarithm is \(-2\wp(z)/\wp'(z)\), with linear coefficient one. Writing \(\wp(z)=z^{-2}\mathrm{wpNum}(z)\) gives \(\wp'(z)=-2z^{-3}\mathrm{wpDen}(z)\) by differentiation. The recurrence defining the even Laurent coefficients in `cW` follows from \(\wp''=6\wp^2-g_2/2\) with initial coefficients \(g_2/20,g_3/28\). Thus \(t(z)=z\,\mathrm{wpNum}(z)/\mathrm{wpDen}(z)=\mathrm{uSer}(g_2,g_3)(z)\) at every degree. These are identities of formal series over the coefficient field. This identifies \(h=h_{e_0}\) with the exact parameter and scaling used in `thetaS`.

**Which choices of the unit work.** Every \(b\in O^\times\) gives \(h_{e_0 b}=h_{e_0}\circ[b]_{\rm Honda}\). Conversely, for any \(e\in P_E\), \(h_{e_0}^{-1}\circ h_e\) is an integral automorphism with logarithmic multiplier \(e/e_0\), and therefore commutes with \(O\). The special-fiber endomorphism algebra of this height-one formal \(O\)-module is its structural \(O\) by Drinfeld's Proposition 1.7(2). Thus the reduction of the automorphism equals the reduction of \([b]\) for a unit \(b\in O^\times\). Injectivity of reduction on homomorphisms of finite-height deformations (Proposition 4.1) gives equality over \(R\), hence \(e/e_0=b\). This proves the coset formula. A direct check detects a forbidden choice. For a Teichmüller unit \(v\) whose residue belongs to \(\mathbb F_{p^3}\setminus\mathbb F_p\), the coefficient of \(X^q\) in \(\lambda^{-1}(v\lambda(X))\) is \((v-v^q)/p\) of valuation \(-1\). Therefore \(e_0v\notin P_E\), although \(e_0v\) is an unramified unit. [Drinfeld, Propositions 1.7(2) and 4.1](https://doi.org/10.1070/SM1974v023n04ABEH001731)

**Dependence on the actual Weierstrass model.** For a unit \(v\in R^\times\) the pair \((g'_2,g'_3)=(v^4g_2,v^6g_3)\) again satisfies `IsGoodModel` for the same lattice and embedding. Its discriminant is multiplied by \(v^{12}\), and its scale factor in `IsGoodModel` is multiplied by \(v\). The Weierstrass scaling identity \(\wp_{g'}(z)=v^2\wp_g(vz)\) gives \(\mathrm{uSer}_{g'}(z)=v^{-1}\mathrm{uSer}_g(vz)\). Consequently \(P_{E'}=v^{-1}P_E\). For the Teichmüller unit just exhibited these cosets are disjoint. Thus two admissible models of the very same CM lattice can require different normalized units. A simultaneous claim must specify how the models or their units are transported.

**Return to (M).** This derivation proves the `CM3` conclusion from its displayed arithmetic hypotheses using classical formal-module deformation theory. The original Lean supplier goes through the integral CM endomorphism, a level bound, the Honda logarithm comparison and a semilinear Lang equation. No declaration from that proof is a premise of the derivation here. For multiple curves over the same local base requiring a single normalization, the coset formula reduces compatibility to equality of their \(P_E\) in the prescribed coordinates. Actual applications must still identify the supplied good models, the common local normalization whenever required, and the orbit expansion with its `E.ep`, `E.sg` and `E.be` for the lattice pairs in §11. The complete first inequality (M) remains open in the reconstruction. [Original CM3 supplier, blob `0ad21abf8ef12067c7a70d067120e7f474aae845`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/ReciprocityTheory/ReductiveGroups/UnramifiedIntegrals/FgClose.lean#L25-L94)

The all-degree result and coset calculation in this section are analytic proofs. Local Lean elaboration, fresh kernel replay, transitive axiom audit and external independent mathematical review for these results are `NOT_RUN`.

## 13. The place scalar of the normalized theta kernel

Fix a place in the inert or signal class used by §11. Denote its rational residue characteristic by \(p\), its fixed embedding of the algebraic numbers by \(\lambda\), and an extension to a field isomorphism \(\mathbb C\simeq\mathbb C_p\) by \(\iota\). Retain \(K,R,O,P_E\) from §12. The elliptic period lattice is \(\Lambda=\delta\phi_0(\mathfrak c)\), where \(\delta^{12}=\Delta(\phi_0(\mathfrak c))\). Its discriminant equals one by weight \(-12\). The place can divide the norm of \(\mathfrak c\). Inertness makes \((p)\) prime in the quadratic order, so write \(\mathfrak c=(p^k)\mathfrak c'\) with \(p\nmid\operatorname{Norm}(\mathfrak c')\). Set \(\delta'=p^k\delta\). Then \(\delta'\phi_0(\mathfrak c')=\Lambda\) as subgroups of \(\mathbb C\), and the weight formula gives \((\delta')^{12}=\Delta(\phi_0(\mathfrak c'))\). This is an equality of the period lattices even when \(k>0\). [Curve-ideal reduction, lines 93–117](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/InertCoprimeLemmas/CurveIdealPrimeReduction.lean#L93-L117)

**An explicit good model for `CM2`.** Take any period pair in `CM2`, with squarefree \(D\equiv3\bmod 4\), maximal-order action by \(O_k\) for \(k=\mathbb Q(\sqrt{-D})\), \(p\ge5\) and \(p\nmid D\). Scaling one nonzero period to one identifies the lattice with a fractional \(O_k\)-ideal up to homothety: its rational span is a one-dimensional \(k\)-space. An oriented period basis therefore gives a point \(\tau\in\operatorname{CM}(k,2)\). By classical CM reciprocity at level two, its Legendre parameter lies in the ray class field \(H(k,2)\), and \(j(\tau)\) is an algebraic integer. The level-two statement applies to all ideal classes and full level-two labelings, including the exceptional discriminant \(-3\). At every prime over \(p\) the quadratic extension is unramified or split since \(p\nmid D\), and the ray extension is unramified since \(p\nmid2\). Consequently \(u=\iota(\lambda_{\rm mod}(\tau))\) belongs to \(K\) for the prescribed \(\iota\). [Yang–Yin–Yu, *The lambda invariants at CM points*, arXiv:1810.07381v1, §2, including Lemma 2.2 and the opening of the proof of Theorem 1.1](https://arxiv.org/pdf/1810.07381v1#page=8) · [Original `CM2` statement](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/CMGoodModels/Statement.lean#L38-L47)

The relation \(j=256(1-u+u^2)^3/[u^2(1-u)^2]\) forces \(u,1-u\in R^\times\). Indeed \(v_p(u)<0\) would give \(v_p(j)=2v_p(u)<0\), and \(v_p(u)>0\) would give \(v_p(j)=-2v_p(u)<0\). Symmetry gives the same conclusion for \(1-u\). The Legendre equation \(y^2=x(x-1)(x-u)\), translated by \(x=X+(1+u)/3\), has the source's short form \(y^2=X^3-g_2X/4-g_3/4\) with
\[
 g_2=\tfrac43(1-u+u^2),\quad
 g_3=\tfrac4{27}(1+u)(2-u)(1-2u),\quad
 g_2^3-27g_3^2=16u^2(1-u)^2 .
\]
These invariants are in \(R\) and their discriminant is a unit. Over the algebraically closed field \(\mathbb C_p\), equality of \(j\)-invariants gives a pointed isomorphism to the short period curve with coefficients transported by \(\iota\). An isomorphism of short Weierstrass equations in characteristic zero is a scaling. Hence some \(\mu\in\mathbb C_p^\times\) gives exactly \(g_2=\mu^4\iota(g_2(\Lambda))\) and \(g_3=\mu^6\iota(g_3(\Lambda))\), as required. This construction uses neither division by \(j\) nor division by \(j-1728\). The pinned supplier instead constructs a model using \(j\)-integrality, unramifiedness and the local valuation divisibilities. [Pinned `CM2` proof route](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/ReciprocityTheory/ReductiveGroups/UnramifiedIntegrals/RedStatus.lean#L13-L18)

Apply §12 to this single lattice and good model \(E\). Write \(\mu\) for its scale in `IsGoodModel`, so \(g_j(E)=\mu^{2j}\iota(g_j(\Lambda))\) for \(j=2,3\). The discriminant identity gives \(v_p(\mu)=0\). The source takes the Weierstrass variable change with `C.u` equal to \(\mu^{-1}\) and translation parameters zero. Its `LTIso` specifies an integral invertible series \(T\) with \(\lambda_H(T(t))=a\log_E(t)\), where \(a=\mathrm{eLT}\) is the image of a Witt unit. Hence \(T^{-1}(X)=t_E(a^{-1}\lambda_H(X))\), and \(e=a^{-1}\) belongs to \(P_E\). Conversely every \(e\in P_E\) yields such a \(T\) by inversion, under \(R=W(\overline{\mathbb F}_p)\). This identifies the possible values even though Lean's existential choice need not recover a previously selected representative. For every `CurveDict` witness the place scalar is \((\mathrm{C.u})^{-1}e\). For the pure scaling just constructed, `HostAt` and the resulting `E.ep w` can therefore use
\[
                 c=(\mathrm{C.u})^{-1} e=\mu e,\qquad |c|_p=1 .
\]
The unit in `thetaS` is \(e\). Replacing the good model by scaling its invariants by \(v^4,v^6\) with \(v\in R^\times\) replaces \((\mu,P_E)\) by \((v\mu,v^{-1}P_E)\). Thus the coset \(\mu P_E\subset\mathbb C_p^\times\) of possible place scalars for these frames is unchanged. [Actual normalized lattice, model choice and change of variables](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/ExistsRingEquivTranscendental.lean#L277-L351) · [Witt coordinate and its logarithm](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GroupLattices/PendingLemmas/CoeffOneLNe.lean#L60-L77) · [Exact scalar in `CurveDict`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/DefsRepDict.lean#L10-L21)

**Prime-to-\(p\) torsion on the selected model.** More generally take all the hypotheses of the pinned `CM4`, which allow split as well as inert \(p\), and any \(N>0\) prime to \(p\). If \(Nz\in\Lambda\) and \(z\notin\Lambda\), complex uniformization, transport by \(\iota\), and the Weierstrass scaling give a nonidentity point of \(E[N](\mathbb C_p)\) with affine coordinates
\[
          x=\mu^2\iota(\wp_\Lambda(z)),\qquad
          y=\tfrac12\mu^3\iota(\wp'_\Lambda(z)).
\]
Indeed \(y^2=x^3-g_2(E)x/4-g_3(E)/4\), and the scaling is an isomorphism of the curves with origin. Its projective closure is a smooth elliptic curve over \(R\) by the discriminant hypothesis. Multiplication by \(N\) is finite locally free and its differential is the unit \(N\), so \(E[N]\) is finite étale over \(R\). Since \(R\) is strictly henselian, \(E[N]\) is a disjoint union of copies of \(\operatorname{Spec}R\). Each geometric generic torsion point therefore extends to its own section, and the reduction of this section differs from the identity. Its image lies in the affine chart complementary to the identity, so \(x,y\in R\). This gives both field membership and both norm bounds of `CM4`, including the source's unhalved second coordinate \(2y\). This proof works for all the good scales allowed by `CM4`. The published supplier uses the same prime-to-\(p\) reduction phenomenon through nonmembership in the formal group and a separate rationality step. [Exact `CM4`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/CMGoodModels/CM4.lean#L7-L14) · [Upstream supplier](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/ReciprocityTheory/ReductiveGroups/UnramifiedIntegrals/TorStatus.lean#L15-L38) · [Katz–Mazur, *Arithmetic Moduli of Elliptic Curves*, §2.3](https://doi.org/10.1515/9781400881710) · [Stacks Project, Lemma 58.10.2](https://stacks.math.columbia.edu/tag/0BLQ)

**Transport for actual isogenies.** Suppose two §12 period lattices for the same maximal quadratic order satisfy \(\alpha\Lambda\subseteq\Lambda'\) for \(\alpha\in\mathbb C^\times\), with index \(n\), and use the same \(\iota\). Let \(\mu,\mu'\) be the chosen good scales. Put \(r=v_p(n)/2\). Then \(r\) is an integer and
\[
          \mu'P_{E'}=p^{-r}\iota(\alpha)\,\mu P_E.
\]
Indeed, after tensoring with \(\mathbb Z_p\) both lattices are free of rank one over the unramified quadratic DVR \(O\). The inclusion has image \(p^r\Lambda'_p\) since the index of \(p^rO\) in \(O\) is \(p^{2r}\). At other primes \(p\) is a unit, hence \((\alpha/p^r)\Lambda\subseteq\Lambda'\) globally with index \(n/p^{2r}\) prime to \(p\). Its complex isogeny induces on the chosen good models a geometric isogeny \(f_0\) of tangent scalar \(d=\iota(\alpha/p^r)\mu/\mu'\), because the chart scaling \((x,y)\mapsto(\mu^2x,\mu^3y)\) multiplies \(-x/y\) by \(\mu^{-1}\).

This isogeny descends to \(K\): its finite kernel of torsion points is defined over \(\overline K\), and the pointed isomorphism from the quotient to the given target is likewise algebraic over \(K\) since the scheme of pointed isomorphisms is finite in characteristic zero. For an auxiliary prime \(\ell\ne p\), all \(\ell\)-power torsion on both curves is \(K\)-rational by the finite étale argument above. Every Galois conjugate of \(f_0\) agrees with it on this infinite set, so agrees everywhere. By the Néron property \(f_0\) and its dual extend over \(R\). Their composition multiplies by \(n/p^{2r}\), so their tangent coefficients are units and each induced map of formal groups has integral inverse. In logarithm coordinates \(\widehat f_0\circ h_{E,e}=h_{E',de}\), with \(h_{E,e}\) as in §12. Applying the inverse gives \(P_{E'}=dP_E\), as asserted. For a homothety \(\Lambda'=\alpha\Lambda\), taking \(\mu'=\iota(\alpha)\mu\) gives identical good coefficients. For \(\alpha=p,\ \Lambda'=\Lambda,\ \mu'=\mu\), one gets \(r=1\) and the original period coset. These two cases check the scalar and the \(p\)-power correction separately. [Period-pair homotheties and weights](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/EisensteinTranslationProducts/TranslateProduct.lean#L25-L36) · [Bosch–Lütkebohmert–Raynaud, *Néron Models*, §1.2, Proposition 8](https://doi.org/10.1007/978-3-642-51438-8)

**Return to `EvenConditionsInert`.** Its two indices are adjacent theta-kernel classes. The standard-basis supplier takes a pair of Hermitian lattices in the spaces \(E_{\rm host}^{\,N}\) and \(E_{\rm host}^{\,N'}\). For each relevant place it first selects the single elliptic datum above, trace-dual orbit coordinates and a root of unity. It sets `ep` to \(c\) and `be` to the coefficient-field image of `beMean` built from \(\operatorname{cob} F(\operatorname{phFF}(g_2,g_3,s_2,e))\). It uses a constant sign \(-1\) and the same series at each orbit representative. It then specializes the basis and host-kernel factorization to the Hermitian pair. The equality of elliptic period cosets across distinct Hermitian indices suggested as a possible requirement in §12 consequently imposes no extra hypothesis here. The remaining arithmetic step for this supplier is to reconstruct `HostLog` for every admitted combination from the actual twisted theta kernels (`IntInert` and `DictInt`), together with the remaining `CurveData` and orbit hypotheses. The proof of `CM4` above settles the prime-to-\(p\) torsion input to that construction. Inequality (M) remains open. [Host kernel and its quantifiers](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/GaloisGeometry/ExistsConstantCoeffOne.lean#L18-L44) · [Construction of `HostAt`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/JacobiOfClass.lean#L63-L81) · [Choice before all Hermitian pairs](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/NormalisedFamilyStandardBasesIntegrality.lean#L19-L30) · [Place sign, constant orbit series and adaptation to the actual kernel classes](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/AdmissibleKernelSeriesInertPrimeNonConjugateFrob.lean#L37-L65)

**Formal scope.** In the namespace `GRWTSK.NumberTheory.AlpogeLegendreGoodReduction`, `Parameter` is the cleared level-two equation for \(j,u\) over a characteristic-zero field. Given any multiplicative valuation \(v\) with \(v(2)=1\) and \(v(j)\le 1\), `parameter_values` proves \(v(u)=v(1-u)=1\). If \(v(u)<1\), the right side of the cleared equation has value one while the left side has value less than one. The equation is invariant under \(u\mapsto u^{-1}\) and \(u\mapsto1-u\), giving both equalities. As a check on the local hypothesis, \(u=2,\ j=1728\) solves the equation over \(\mathbb Q\), but \(2\) fails to be a unit at the prime two.

The declaration `exists_good_legendreCurve` constructs Mathlib's `WeierstrassCurve.IsElliptic` for the Legendre equation over `v.valuationSubring`. With \(v(3)=1\) also, `good_short_invariants` proves membership of both coefficients in that ring, unit valuation of \(g_2^3-27g_3^2\), and the identity \(1728g_2^3=j(g_2^3-27g_3^2)\). The other four public theorems compute the translated cubic, short discriminant, \(j\)-numerator and the Mathlib discriminant of the integral Legendre equation. These declarations apply once the CM parameter and its integral \(j\) have been supplied. [Maintained formal proof](AlpogeLegendreGoodReduction.lean)

At source blob `c15d739d6f3150a9509b0f8b74d0f2d4d15b057f`, the module built under Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Module-local kernel replay and a separate `leanchecker --fresh` replay of the module and its import closure each exited 0. Transitive `#print axioms` on all seven public theorems returned only `propext` and `Quot.sound` for `legendreCurve_discriminant`, and additionally `Classical.choice` for each other theorem. The level-two CM reciprocity input, the period homothety, the full `CM2` and `CM4` implications, and the identification with the place scalar remain manuscript arguments. Lean elaboration, fresh kernel replay and transitive axiom audits for those arguments are `NOT_RUN`.

## 14. The normalized sigma factor in the actual host logarithm

Retain the fixed inert place, the discriminant-one elliptic lattice \(\Lambda\), the embedding \(\lambda:\overline{\mathbb Q}\hookrightarrow\mathbb C_p\), the good-model scale \(\mu\), the Honda period \(e\) and the place scalar \(c=\mu e\) of §13. Put \(\mathcal O=\mathcal O_{\mathbb C_p}\), and denote the completed maximal unramified valuation ring of §12 by \(R\). We derive an integral unit that converts the compensated series in `IntFirst` into the compensated series in `HostLog`, for every rank and every kernel in their shared coordinates.

**The coefficient \(s_2\) and the selected sigma series.** Write \(D\) for the positive quadratic discriminant parameter, \(\alpha=(1+\sqrt{-D})/2\), and \(n=\alpha\bar\alpha\). Let \(\eta(\gamma)=\zeta_\Lambda(z+\gamma)-\zeta_\Lambda(z)\). Its real-linear extension has the form \(\eta(\gamma)=s_2\gamma+b\bar\gamma\), with \(s_2\) exactly the source's period-pair expression. For representatives \(P\) of \(\alpha^{-1}\Lambda/\Lambda\), including \(P=0\), put
\[
 F(z)=\alpha\zeta_\Lambda(\alpha z)-\sum_P\zeta_\Lambda(z+P).
\]
The simple poles cancel. Its derivative is elliptic and entire, hence constant. From \(\wp_\Lambda(z)=z^{-2}+O(z^2)\) the constant is \(\sum_{P\ne0}\wp_\Lambda(P)\). The increment of \(F\) under \(z\mapsto z+\gamma\) is \(\alpha\eta(\alpha\gamma)-n\eta(\gamma)\). The coefficient of \(\bar\gamma\) cancels and therefore
\[
             \alpha(\alpha-\bar\alpha)s_2=\sum_{P\ne0}\wp_\Lambda(P).
\]
Inertness makes both \(\alpha\) and \(\alpha-\bar\alpha\) nonzero modulo \(p\), so \(p\nmid n\). Each \(P\) is killed by \(n\). The normalized invariants of \(\Lambda\) are algebraic, since \(g_2^3=j/1728\) and \(27g_3^2=g_2^3-1\); the torsion coordinates on this algebraic curve are algebraic as well. Thus \(s_2\in\overline{\mathbb Q}\). Multiplying the identity by \(\mu^2\) after applying the embedding and using §13's `CM4` shows \(s=\mu^2\lambda(s_2)\in R\). The identity also covers \(D=3\), when \(\alpha\) is a unit and the sum is empty. [Source period normalization](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/EisensteinTranslationProducts/SemiChar.lean#L18-L28) · [Upstream calculation using the different endomorphism \(\sqrt{-D}\)](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/PadicNormTwoHundredSixteenEqOneOfFiveLe.lean#L505-L549) · [Weierstrass quasi-period formulas](https://dlmf.nist.gov/23.2#iii)

The normalized reduced sigma function is \(\sigma_\Lambda^*(z)=\sigma_\Lambda(z)\exp(-s_2z^2/2)\). The sigma transformation law and Legendre relation give the prescribed `U1` multipliers. Conversely any entire odd function having these multipliers vanishes on \(\Lambda\). Its quotient by \(\sigma_\Lambda^*\) extends holomorphically across the simple lattice zeros and is doubly periodic, hence constant. The prescribed derivative one fixes that constant. Thus the choice in the original `sgStar` defines this very function. The Laurent recursion for \(\wp\) over \(\mathbb Q[g_2,g_3]\) and two integrations of \(-(\wp-z^{-2})\) give the coefficients of \(\log(\sigma_\Lambda(z)/z)\). It follows that every Taylor coefficient of \(\sigma_\Lambda^*\) belongs to \(\overline{\mathbb Q}\), so the original `lamC` maps them all through \(\lambda\). Write \(\Sigma(z)\) for the resulting series over \(\mathbb C_p\). The formal normalized sigma of the good short curve with weight-two coefficient \(s\) is \(\Sigma_E(z)=\mu^{-1}\Sigma(\mu z)\), by homogeneity of the same Laurent recursion. [Exact definitions of `U1`, `sgStar` and `sgSer`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L234-L250) · [Bannai–Kobayashi–Tsuji, normalized reduced theta, §1, p. 190](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_43_185-234.pdf#page=6) · [Weierstrass series coefficients](https://dlmf.nist.gov/23.9)

**The two factors in the same variable.** Let \(L_H(X)=\sum_{m\ge0}X^{p^{2m}}/p^m\), and let \(t_E\) be the short good curve's exponential in the parameter \(-x/y\). By §12, \(h(X)=t_E(eL_H(X))\in XR[[X]]\) with linear coefficient \(e\in R^\times\). For the original period equation denote the parameter exponential and logarithm by \(t_0,\ell_0\). Homothety gives \(h_0(X)=t_0(cL_H(X))=\mu h(X)\). Both \(h_0\) and its compositional inverse have coefficients in \(\mathcal O\) since \(|\mu|_p=1\).

Take any of the source's admissible changes \(C=(u,r_0,s_0,t_0')\) in `IsModel`. The original discriminant and the transformed discriminant both equal one, so \(u^{12}=1\). The original coefficients are in \(\mathcal O\), by the displayed algebraic equations for \(g_2,g_3\) and \(p\ge5\). The transformed first three coefficients are \(2s_0/u,\ (3r_0-s_0^2)/u^2,\ 2t_0'/u^3\). Their integrality implies \(r_0,s_0,t_0'\in\mathcal O\). The resulting isomorphism and its inverse are defined over \(\mathcal O\). Let \(f_C\) be its map of formal parameters from the original curve to the transformed curve. Its linear coefficient is \(u\), and \(\ell_C(f_C(t))=u\ell_0(t)\) by the invariant differential. The source's `IsWq` fixes the formal branch uniquely by degree recursion with constant term one. Thus \(h_C=f_C\circ h_0\) is an integral change of variable with integral inverse and tangent coefficient \(u c\). [Model, formal branch and logarithm](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L183-L208) · [Exact coordinate under variable change](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/InertCoprimeLemmas/GenusOneWittExistsOf.lean#L40-L70)

Put \(\Phi=\operatorname{phFF}(p,g_2(E),g_3(E),s,e)\). From `sigS`, `sgStar` and `lU`, exponentiation gives
\[
 \exp(\Phi(X))=\frac{eX}{\Sigma_E(eL_H(X))}
              =\frac{cX}{\Sigma(cL_H(X))}.
\]
Indeed the last logarithm in `phFF` is \(-\log(L_H(X)/X)\). Also, `ePhi1` for \(C\) shifts the coefficients of \(u\Sigma(u^{-1}\ell_C(t))\) down one degree, hence
\[
 A_C(t)=\frac{u\,\Sigma(u^{-1}\ell_C(t))}{t},\qquad
 \boxed{\exp(\Phi(X))A_C(h_C(X))=V_C(X)=\frac{ucX}{h_C(X)}
                 \ \in 1+X\mathcal O[[X]].}
\]
Each quotient cancels a simple factor of \(X\) or \(t\); the remaining denominator is a formal unit over the coefficient field. In the integral quotient on the right \(h_C/X\) already has unit constant term \(uc\). For \(C=1\) the correction simplifies to \(eX/h(X)\in R[[X]]\). As a check on retaining this factor, \(t_E(z)=z+(g_2(E)/10)z^5+O(z^7)\) by the Weierstrass expansion. Thus \([X^4]V_1=-g_2(E)e^4/10\), which is nonzero whenever \(g_2(E)\ne0\). [Exact `phFF` signs](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/GaussSumParity/StatementE.lean#L17-L31) · [Formal normalized sigma and shifted logarithm](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/FrobeniusFibreCurves/CurveHyp.lean#L32-L37) · [Coefficient shifts in the host factor](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L242-L260)

**Every kernel in the chosen coordinates.** For the Hermitian basis \(b\), write \(a_{ki}=\operatorname{lamC}(\lambda,\operatorname{embT}(b_i)_k)\), with \(k\) indexing the embedding and matrix entry. Let \(G\) be the actual input series. The `IntFirst` series for \(C\) is
\[
 I_C(G)(t)=G\left(\left(\sum_i u^{-1}a_{ki}\ell_C(t_i)\right)_k\right)
                \prod_i A_C(t_i)^{-1}.
\]
In `HostLog` the series tested for integrality is
\[
 J(G)(X)=G\left(\left(\sum_i c\,a_{ki}L_H(X_i)\right)_k\right)
                 \exp\left(\sum_i\Phi(X_i)\right).
\]
The source has \(p\ne2\), so `ePh` is the product of inverses. Substitution and the boxed identity give the exact relation
\[
 J(G)(X)=I_C(G)((h_C(X_i))_i)\prod_i V_C(X_i).
\]
Both operations on the right preserve and reflect coefficientwise integrality. They have inverses over \(\mathcal O\), given by formal compositional inversion in each variable and multiplication by the inverse of a unit. This proves the `DictInt` implication for the selected period data with \(C=1\) as witness and also gives the reverse implication for every permitted model. No arithmetic property of \(G\) was used in the change of variables. [`atLog` and its matrix coordinates](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L225-L232) · [`DictInt` quantifiers](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/DefsRep.lean#L78-L86) · [`HostLog`, `thOrth` and `HostAt`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/GaloisGeometry/ExistsConstantCoeffOne.lean#L23-L44) · [Upstream comparison using a discriminant-rescaling coordinate and an integral exponential](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/PadicNormTwoHundredSixteenEqOneOfFiveLe.lean#L875-L919)

**Remaining arithmetic input.** For fixed \(b,C\) the map \(G\mapsto I_C(G)\) is linear over the coefficient field. Each `IsComb` input is a finite sum with integral scalars of `pSer` applied to the translated kernels \(U(t_k)e_{N,N'}(L_k,L_k')\); the translation is prime-to-\(p\) torsion and the admissible lattice pair agrees locally with the input pair via `EqAt`. Taking each generator with coefficient one gives the converse reduction. Thus it suffices to establish integral coefficients for each such translated generator with \(C=1\), for the locally admissible orthonormal bases in `IntFirst`. These generators retain the theta characteristic, the local lattice pairing and the character in `B.eNat χ`. Their integral theta expansions and the remaining orbit and `CurveData` conditions still require independent proofs. [Exact finite combinations](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L280-L295) · [`IntFirst` and `IntInert` hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/StatementInt.lean#L9-L24) · [Upstream reduction through orthonormal bases and translated theta products](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/IntegralInertOfWeakApprox.lean#L9-L13)

**Formal evidence.** In the namespace `GRWTSK.NumberTheory.AlpogeHostLog`, `exists_coordinate_unit` constructs the integral unit with the prescribed constant term, and `sigma_ratio_is_mapped_unit` cancels the common numerator after coefficient extension. Theorems `integral_iff_map`, `integral_pullback` and `integral_corrected_diagonal` identify coefficientwise integrality with descent to a subring and prove its preservation in every finite rank. Theorem `integral_corrected_pullback_iff` proves reflection for an integral substitution with an integral left inverse and a mapped unit multiplier. The module at source blob `bd8a5d8428ab665e6938dcdb82b4d293463043f9` built under Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Module-local kernel replay and a separate `leanchecker --fresh` replay each exited 0. Transitive axiom checks of all six public theorems returned only `propext`, `Classical.choice` and `Quot.sound`. The identification of those formal inputs with the source's analytic sigma, period and kernel definitions is a manuscript argument. Lean elaboration, fresh kernel replay, transitive axiom audit and independent review of that identification are `NOT_RUN`. [Maintained formal proof](AlpogeHostLogCoordinate.lean)

## 15. Prime-to-\(p\) translates of the actual elliptic theta factor

Fix a CM lattice selected in §§13–14 of discriminant normalization \(\Delta=1\), its embedding \(\lambda\), and an admitted inert prime \(p\ge5\). Use the original good short equation \(W_0\), the parameter \(t=-x/y\), its logarithm \(\ell\), the reduced sigma \(\Sigma=\sigma^*_\Lambda\) of derivative one and the half-period \(T=\omega_0/2\bmod\Lambda\ne0\). For each complex lift \(s\) with \(ms\in\Lambda\), \(m\ge1,\ p\nmid m\), put
\[
 \theta_T(z)=\frac{(U_T\Sigma)(z)}{(U_T\Sigma)(0)},\qquad
 H_s(t)=(U_s\theta_T)(\ell(t))\,\frac{t}{\Sigma(\ell(t))}.
\]
We show that the complex formal coefficients of \(H_s\) are algebraic and their images under \(\lambda\) are integral in all degrees. The order at zero is \(d=1\) if \(s=-T\bmod\Lambda\), and \(d=0\) otherwise; the leading coefficient is a \(p\)-adic unit in both cases. The \(t/\Sigma(\ell(t))\) factor is exactly the compensation of §14 for the original model. This statement excludes \(p=2,3\), primes dividing \(m\), and primes outside the selected inert good-reduction setting. [Upstream \(U_s\) and normalization at the half-period](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/EisensteinTranslationProducts/SemiChar.lean#L18-L34) · [Finite sums, torsion and integral weights in `KernelJoint`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/UniformGaussModels/GoodModelAll.lean#L52-L60)

**The untranslated factor.** With the source Hermitian form \(h(z,w)=z\bar w/\operatorname{area}(\Lambda)\), the ratio \(\theta_T/\Sigma\) transforms under a period \(\gamma\) by \(\exp(\pi(h(T,\gamma)-h(\gamma,T)))\in\{\pm1\}\). Its square is elliptic with divisor \(2[-T]-2[0]\) and leading term \(z^{-2}\) at zero. These properties identify it with \(\wp(z)-\wp(T)\), since \(T\) is a nonzero half-period and \(\theta_T(0)=1\). Thus
\[
 H_0(t)^2=t^2\bigl(x(t)-x(T)\bigr)\in 1+tR[[t]],
\]
where \(R\) is a finite extension's valuation ring at the chosen place containing the curve and the point. Indeed \(W_0\) has integral coefficients and unit discriminant by §14, \(t^2x(t)\in1+tR[[t]]\) by the integral Weierstrass parameter expansion, and \(T\) is a nonidentity section even after reduction. For the latter assertion the prime-to-\(p\) torsion group scheme is finite étale over the henselian valuation ring, so distinct rational sections remain distinct on the special fibre. Consequently \(x(T)\) is integral. The root with constant 1 is algebraic coefficient by coefficient and integral since 2 is a unit. [Silverman, The Arithmetic of Elliptic Curves, 2nd ed., Prop. VII.3.1(b)](https://doi.org/10.1007/978-0-387-09494-6) · [Classical sigma and period transformation laws](https://dlmf.nist.gov/23.2#iii)

**Scalar and vertical divisor.** Set \(q_s=(U_s\theta_T)/\theta_T\). Under \(z\mapsto z+\gamma\) its multiplier is \(\exp(\pi(h(s,\gamma)-h(\gamma,s)))\), an \(m\)-th root of unity by the period-area formula. Hence \(F_s=q_s^m\) is elliptic with divisor \(m([-T-s]-[-T])\). Multiplying the translates at \(z+js,\ 0\le j<m\), gives exactly
\[
  \prod_{j=0}^{m-1}q_s(z+js)
    =\frac{(U_{ms}\theta_T)(z)}{\theta_T(z)}=\chi_T(ms).
\]
The Gaussian factors agree because \(\sum_{j=0}^{m-1}(j+1/2)=m^2/2\); the theta semicharacter \(\chi_T\) is a sign, since the reduced sigma period semicharacter and the half-period twist are both signs. This works with any complex lift, also when the order of the point properly divides \(m\).

The divisor of \(F_s\) is defined over \(\overline{\mathbb Q}\) on the algebraic \(W_0\). It is principal there by \(\mathrm{Pic}^0(W_0)\simeq W_0\), since its degree is zero and its point sum is \(-ms=0\). Choose \(f\in\overline{\mathbb Q}(W_0)^\times\) with that divisor. Then \(F_s=b f\) over \(\mathbb C\). The cyclic product of the translates of \(f\) is an algebraic constant, as its divisors telescope. Taking the \(m\)-th power of the displayed norm identity now gives \(b^m\in\overline{\mathbb Q}^\times\), and hence \(F_s\in\overline{\mathbb Q}(W_0)^\times\). Enlarge the finite local field to contain this function and the points. The smooth elliptic model over its valuation ring \(R\) has one geometrically integral special fibre. Translation by the section \(s\) extends to an automorphism and preserves the valuation of that component. Thus the valuation of the cyclic product of the translates of \(F_s\) is \(m\,\operatorname{ord}_{\rm vert}(F_s)\). The product is a root of unity, so \(\operatorname{ord}_{\rm vert}(F_s)=0\). This normalization controls the scalar which the horizontal divisor alone leaves arbitrary. [Silverman, The Arithmetic of Elliptic Curves, 2nd ed., Prop. III.3.4](https://doi.org/10.1007/978-0-387-09494-6)

**The vanishing translate.** Both \(-T\) and \(-T-s\) are killed by \({\rm lcm}(2,m)\), a \(p\)-adic unit. The first section misses the reduced origin. The second meets it precisely when \(s=-T\bmod\Lambda\), in which case it is the zero section itself. In the regular local ring at the reduced origin the divisor calculation therefore gives \(F_s=t^{md}\) times a unit: \(t\) locally cuts out the identity section and an element of the fraction field with all height-one valuations zero is a unit. The formula persists on passage to \(R[[t]]\). Thus
\[
           H_s(t)^m=F_s(\ell(t))\,H_0(t)^m
                       \in t^{md}R[[t]]^\times .
\]
Here \(F_s(\ell(t))\) means expansion of the elliptic function in the parameter \(t\). Remove the factor \(t^d\) from the original complex series and denote its leading coefficient by \(a\). Its \(m\)-th power is algebraic and a \(p\)-adic unit. After extending \(R\) to contain \(\lambda(a)\), the normalized root \(H_s/(a t^d)\) has constant 1. Comparing coefficients of its \(m\)-th power determines each new coefficient using only earlier coefficients and division by \(m\). This proves the all-degree assertion, including algebraicity before applying \(\lambda\). A check on the unit premise is \(Y=p(1+X/p^2)^{1/2}\) for odd \(p\): \(Y^2=p^2+X\), but its linear coefficient is \(1/(2p)\). [Normal local domains and valuations at height one](https://stacks.math.columbia.edu/tag/031T)

**Return to the higher-rank generator.** For the selected curves the sum over \(k\) of \(r_k\prod_i H_{s_{ki}}(t_i)\) is integral for every finite family in `KernelJoint` with \(\lvert r_k\rvert_p\le1\); the weights may lie in the whole \(p\)-adic unit ball. Substitution of the formal exponential in every variable gives the source's `thetaZ` identity after moving the \(t/\Sigma(\ell(t))\) factors to the other side. This supplies the elliptic factors of the fourfold Hermitian expansion. For a series \(A\) with coefficient \(a_\nu\), its fourth *tensor* power on four independent variable blocks has coefficient \(a_\nu^4\) at \((\nu,\nu,\nu,\nu)\). Thus integrality of the compensated fourfold tensor would imply integrality of \(A\) even when \(A(0)=0\). The actual `thMM` tensor is \(\kappa\) times `kernel4`; at the admitted inert prime each split-prime \(q\) occurring in \(\kappa\) differs from \(p\). The defining generator \(\pi_q\) has ideal a power of a prime above \(q\), so \(\pi_q\) and its conjugate are units at all places over \(p\). The defining equation for each chosen root therefore makes it algebraic and a \(p\)-adic unit, and the finite product and its integer powers preserve this property whenever the specified `YFinite` holds. Transferring the elliptic product to `kernel4` still requires the integral change of Hermitian frame and the lattice averages. Passing to `eNat` also requires the two `Iop` transports, their normalized sums, and the character scalar at the perturbed pair. This section proves the selected elliptic input and the stated scalar observation; full `IntInert` remains open. [Upstream compared calculation of `KernelJoint`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/UniformGaussModels/OrthogonalGaussModels/KJoint.lean#L43-L67) · [Tensor, matrix and frame hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/TorsionTranslationPowers/StatementN.lean#L12-L46) · [Actual `thMM` choice](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/KernelLattices/LateralTheory.lean#L20-L35) · [Scalar and split-prime support](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/KernelLattices/LateralTheory.lean#L95-L113) · [Two lattice transports and character](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/KernelLattices/LateralTheory.lean#L155-L178)

For the character scalar there is a direct local criterion. Let \(\mathfrak a\) be a fractional ideal satisfying \(\mathfrak a\bar{\mathfrak a}=1\) and \(\mathfrak a_w=\mathcal O_{E,w}\) at every \(w\mid p\). With \(h\) the class number, choose \(u\) with \(\mathfrak a^h=(u)\). Then \(v=u/\bar u\) is unitary, \((v)=\mathfrak a^{2h}\), and every embedding of \(v\) is a unit at the chosen \(p\)-adic place. The principal-ideal and multiplicative clauses of `IsChi` give \(\chi(\mathfrak a)^{2h}=\prod_\tau\operatorname{embT}_\tau(v)^{-1}\), so \(\chi(\mathfrak a)\) is algebraic and a \(p\)-adic unit. This proves unit size for `chiFac` whenever its two determinant ideals satisfy these local hypotheses. For pairs comparing equal to the standard lattices at \(p\), the determinant spans localize to the standard determinant ideals, by localizing \(\mathrm{Hom}(L,L')\) and taking determinants in local bases; self-duality makes the determinant ideals norm one. For the unrestricted `IntFirst` statement, equality of a perturbed pair to the input pair at \(p\) alone does not identify that input with the standard pair. [Source's character law](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L312-L325) · [Upstream local-unit criterion and standard-pair application](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/GL3/NormNatCoprime.lean#L214-L251) · [Actual intertwiner and its square-root index](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/TorsionIntegrality/QuadraticSemicharacters/IsSemiChar.lean#L58-L67)

**Formal scope.** The maintained Lean module proves the coefficient-descent steps `tame_root_integral` and `tame_root_at_zero` for any coefficient subring of a field in which the exponent is a unit. At source blob `2c2fb534b7889b9f1bbfb3da39ad37441252b1ae` the module built under Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Module-local and fresh transitive kernel replays each exited 0. Both public theorems' transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound`. The proof uses the integral compositional inverse of \((1+X)^m-1\), giving an independent implementation of the normalized-root step. The analytic and geometric identification with the selected theta functions, the cyclic norm, the regular-model divisor calculation and the Hermitian transfer have no new Lean proof in this section. Their elaboration, fresh kernel check, transitive axiom audit and independent review are `NOT_RUN`. [Maintained formal root proof](AlpogeTorsionThetaRoot.lean)

## 16. The two lattice averages and the character at an unrestricted inert pair

Let \(K=\mathbb Q(\sqrt{-d})\) be the selected imaginary quadratic field, \(E\) the host CM field and \(p\ge5\) an admitted inert prime. Write \(S,S'\) for the two standard lattices. For an admitted pair \(M,M'\), the actual averaging lattices in order are
\[
  A_0=\mathrm{La}(S,S'),\quad A_1=\mathrm{La}(M,S'),\quad A_2=\mathrm{La}(M,M').
\]
Let \(I_j=[A_j:A_j\cap A_{j-1}]\). Fix representatives \(x\in A_1/(A_0\cap A_1)\), \(y\in A_2/(A_1\cap A_2)\), understood below as their source lifts, and let \(\alpha,\ H,\ U\) denote the source's `al`, `Hf` and `U`. Write \(c(v,w)=\exp(-\pi i\,\operatorname{Im} H(v,w))\). Substitution in the two Gaussian translations gives \(U_vU_w=c(v,w)U_{v+w}\), using \(H(w,v)=\overline{H(v,w)}\). Thus the exact translated kernel is
\[
 U_t e_{N,N'}(M,M')
   =\frac{\mathrm{chiFac}(M,M')}{\sqrt{I_1}\sqrt{I_2}}
      \sum_{y}\sum_x
        \alpha(y)\alpha(x)c(y,x)c(t,y+x)\,U_{t+y+x}\mathrm{thZero}.
\]
The order of the two cocycles follows from the source's first average over \(x\) and second average over \(y\). The finite-generation argument below establishes that these are actual positive finite indices in the locally standard case. [Exact normalized averaging operator](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L74-L104) · [Order of the two averages and the character](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/KernelLattices/LateralTheory.lean#L155-L178) · [Sign of the Heisenberg cocycle](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/GL3/PIopIso.lean#L26-L35)

**Index and prime-to-\(p\) torsion.** Suppose \(M,M'\) agree locally with \(S,S'\) at \(p\), with positive `EqAt` witnesses \(s,s'\) prime to \(p\). Directly from \(\mathrm{YYl}(M,M')=\mathfrak A_0\,\mathrm{Hom}_{\mathcal O_E}(M,M')\) in its matrix representation,
\[
  s A_1\subset A_0,\quad s' A_2\subset A_1,\quad ss' A_2\subset A_0.
\]
For example, if \(f(M)\subset S'\), then \((sf)(S)=f(sS)\subset S'\). If \(f(M)\subset M'\), then \((s'f)(M)\subset S'\). Multiplication by \(\mathfrak A_0\), applying the embeddings and multiplying by periods preserve the inclusions. All three groups are finite free over \(\mathbb Z\): the Hom of two full projective \(\mathcal O_E\)-lattices is finitely generated, as is its product with the fixed fractional ideal. Products of the two elliptic period generators with the images of a finite set of additive module generators span `La`. The ambient complex vector space is torsion free. If \(n B\subset A\), the quotient \(B/(B\cap A)\) is consequently an image of \(B/nB\) of order \(n^{\operatorname{rank}B}\) for \(n>0\). In particular
\[
 I_1\mid s^{\operatorname{rank}A_1},\qquad I_2\mid (s')^{\operatorname{rank}A_2}.
\]
Both inverse square roots are algebraic units at \(p\). For \(nt\in A_2\) with \(n>0,\ p\nmid n\), every \(nss'(t+y+x)\) lies in \(A_0\). Starting from any locally standard input \(L,L'\), transitivity of `EqAt` carries its perturbed pair into this case; multiplying by the two perturbation witnesses also carries an input torsion denominator to the perturbed lattice. [Matrix and ideal definitions](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L25-L39) · [Torsion and perturbation witnesses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L280-L295)

**All cocycle factors.** The rational span of \(A_0,A_1,A_2\) is the same: clearing integer denominators both ways between the full input lattices proves this without the local-standard restriction. On its generators \(w\,\mathrm{embV}(a),w'\,\mathrm{embV}(b)\), write \(w=\delta\phi_0(u),w'=\delta\phi_0(u')\) with \(u,u'\in K\). The selected embeddings are precisely the embeddings of \(E\) extending \(\phi_0|_K\): the source's embeddings and their conjugates exhaust the complex embeddings, and they are distinguished by the sign of the image of \(\sqrt{-d}\). Hence
\[
 H(w\,\mathrm{embV}(a),w'\,\mathrm{embV}(b))
 =\frac{|\delta|^2}{\mathrm{area}(\Lambda)}
    \phi_0\left(u\bar u'\operatorname{Tr}_{E/K}\sum_{ij}a_{ij}\bar b_{ij}\right).
\]
The area of \(\delta\phi_0(\mathfrak c)\) equals \(|\delta|^2[\mathcal O_K:\mathfrak c]\sqrt d/2\), from the discriminant of a quadratic integral basis and the ideal index. Every element of \(\phi_0(K)\) has imaginary part in \(\sqrt d\,\mathbb Q\). Thus \(\operatorname{Im}H\) is rational on the whole rational span, including \(t\), and each displayed cocycle is a root of unity. The signs \(\alpha\) also have absolute value one at every finite place. This argument only needs rationality of the imaginary pairing for the cocycle; it does not establish the stronger lattice-integrality and parity conditions used elsewhere. [Selected embeddings, relative trace and Hermitian pairing](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/GL3/PHfTrace.lean#L31-L92) · [Original period-area calculation](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/GL3/PHfArith.lean#L319-L358)

**The character for every admitted pair.** No local-standard hypothesis on a norm-one fractional ideal \(\mathfrak a\) is needed at an inert prime. In §15, \(\mathfrak a^{2h}=(v)\) with \(v=u/\bar u\), \(h\) the class number of \(E\). The embedding identification above turns the character law into
\[
       \chi(\mathfrak a)^{2h}=\phi_0\!\left(N_{E/K}v\right)^{-1}.
\]
In particular \(\chi(\mathfrak a)\) is algebraic. The norm \(b=N_{E/K}v\) satisfies \(b\bar b=1\), since conjugation commutes with the relative norm. The unique place of \(K\) above \(p\) is fixed by conjugation, so \(2v_p(b)=0\). Hence \(\lvert\lambda(\chi(\mathfrak a))\rvert_p=1\), including when \(\mathfrak a\) has support above \(p\) in \(E\). For self-dual \(S,M\), the `detId` ideal is the fractional ideal of the determinant line \(\det M\otimes(\det S)^{-1}\) in the fixed determinant coordinate. This equality follows in local bases: the identity coefficient matrix realizes a generator of the local determinant ideal, and all matrices of maps into \(M\) have determinants in that ideal. Localization commutes with Hom of finite projective modules and with its determinant span, by clearing denominators on generators. Self-duality gives \((\det M)\overline{\det M}=(1)\) in the standard Hermitian determinant coordinate, and likewise for \(S\). Thus both factors of `chiFac`, including their negative powers, are units for **every** admitted perturbed pair. This inert-prime argument also applies to individual norm-one ideals which do not satisfy §15's support criterion. At a split prime the inference fails: in \(\mathbb Q(i)\), the norm-one element \((2+i)/(2-i)\) has valuation \(1\) at \((2+i)\) above 5. Consequently, for the locally standard pair at the admitted inert prime the displayed double sum proves the source's `StdStep` for the selected data with each uncollected coefficient a \(p\)-adic unit. [Exact character law](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L312-L325) · [Upstream local-standard comparison](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/InertCoprimeLemmas/IntStd.lean#L316-L378)

**Reduction of unrestricted lattice positions.** Direct termwise estimates of the two raw indices do not extend to all self-dual lattices. For a hyperbolic plane over an unramified quadratic local field, \(\mathcal Oe+\mathcal Of\) and \(p\mathcal Oe+p^{-1}\mathcal Of\) are both self-dual when the two basis vectors have pairing 1 and self-pairing 0. The relative quotient of the latter by the intersection has order \(\#(\mathcal O/p)\) when the ground field is \(\mathbb Q_p\). The inverse square root then has \(p\)-adic absolute value greater than one.

For the actual host, let \(F=E^{\mathrm{conj}}\). At every place \(v\mid p\) in \(F\), \(E\otimes F_v\) is split or an unramified quadratic field: in the source hypothesis `IsCMUnram` some integral \(\theta-\bar\theta\) is a unit at each prime, ruling out ramification because the involution at a ramified quadratic prime acts trivially on the residue field. In the split case a self-dual lattice consists of a lattice over the first factor and its pairing dual in the second. A basis and its dual give an isometry from the standard local lattice. In the unramified field case a unimodular Hermitian lattice has a nondegenerate reduction. It has a vector of nonzero norm over the residue field: otherwise polarization of \(h(x+cy,x+cy)=0\) for all scalars \(c\) and nondegeneracy of the residue trace would force \(h=0\) in positive rank. Lift it and normalize its unit norm. The residue-field norm on units is surjective, and after a residue lift the residual principal unit has a square root in \(F_v\) by Hensel since \(p\) is odd. Splitting off its orthogonal complement and inducting yields a local isometry \(\gamma_v\) from the standard lattice. Rank zero uses the identity.

These local isometries can be approximated by **one** rational unitary \(\gamma\) over \(F\). The coset of the standard lattice stabilizer containing \(\gamma_v\) is open. Multiply by central norm-one scalars sufficiently close to 1 so that \(1+\gamma_v\) is invertible: \((1+a\eta)/(1-a\eta)\) with \(a\in F_v\) sufficiently small and \(\eta\ne0,\bar\eta=-\eta\) gives infinitely many such scalars, and only finitely many choices are forbidden by eigenvalues, including in each split component. Now \(X_v=(1-\gamma_v)(1+\gamma_v)^{-1}\) is skew-Hermitian. Use ordinary weak approximation on a fixed \(F\)-basis of the space \(X^*=-X\) to approximate these finitely many \(X_v\) by one global \(X\). The inverse Cayley transform is continuous wherever defined; sufficiently close approximation gives \(1+X\) invertible and \(\gamma=(1-X)(1+X)^{-1}\) in every desired coset. Thus \(\gamma^{-1}L\) is equal to the standard lattice at all places above \(p\). Equivalently a single positive integer \(s\) prime to \(p\) clears both mutual inclusions, since the finite abelian group \((S+\gamma^{-1}L)/(S\cap\gamma^{-1}L)\) has zero \(p\)-part. This gives the required rational unitary reduction independently for each of the two input lattices, including each admissible perturbation. [Actual host unramified hypothesis](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PeriodIntegrals/UnimodGenus.lean#L74-L81) · [Its use on both input lattices](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/InertCoprimeLemmas/IntWeak.lean#L272-L285) · [Cayley parametrization and weak approximation, Platonov–Rapinchuk, Chapter 7](https://uva.theopenscholar.com/files/andrei-rapinchuk/files/agnt_english.pdf)

This reduction concerns the lattices. The source moves the **specified** `eNat` between them by exact unitary covariance with the given theta normalization and the map \(z\mapsto\gamma'^*z\gamma\), as seen in the source's use of `eq22`. For preservation of integrality alone, covariance up to a proved algebraic \(p\)-adic unit would suffice in both directions. An isomorphism of theta lines leaves that scalar undetermined. The inner fourfold `kernel4` still needs its integral frame and the scalar relating that frame's normalized kernel to the originally chosen `thMM`. Thus the two outer averages and the inert character bound reduce the arithmetic work, while exact kernel covariance and the all-degree Hermitian-frame computation remain open here. [Explicit unrestricted use of covariance](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/InertCoprimeLemmas/IntAsm.lean#L63-L91) · [Fourfold frame and relative-index hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/InertKernelTheory/DefsMMIsom.lean#L14-L32)

**Formal scope.** In `AlpogeThetaLatticeAverages.lean`, `index_dvd_multiplier_pow` and `index_positive_coprime` prove the stated index divisibility, positivity and coprimality for an arbitrary finite free additive lattice receiving a common multiplier. The theorem `norm_character_eq_one` proves the product-of-embeddings assertion for any finite separable extension with compatible conjugations and a lower-field embedding invariant in absolute value under conjugation. The proof commutes the relative norm with those conjugations; it takes no norm-one assumption on the individual embedded factors. At source blob `b8270da2fd180b2cc2c5fe243277b0bb483fd09f` all three theorems built under Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The §15 root module received a license-header correction to match the repository MIT license, with revised source blob `c458dcdbf4ce619926b77f4385b8deb63c03626b`. Both modules built, passed module-local replay and separately exited 0 under `leanchecker --fresh`. Transitive axiom audits for the three new and two root theorems returned only `propext`, `Classical.choice` and `Quot.sound`. The identification of the selected ideals, places and embeddings, the two-average expansion and the rational unitary reduction are manuscript arguments. Their Lean elaboration, kernel verification, transitive axiom audit and independent review are `NOT_RUN`. [Maintained index and character theorems](AlpogeThetaLatticeAverages.lean)
