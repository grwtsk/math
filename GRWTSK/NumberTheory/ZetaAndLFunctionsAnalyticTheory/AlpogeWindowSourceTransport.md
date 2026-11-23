# Alpöge-style source-window transport without his final RH theorem

**Authors:** grwtsk contributors.  
**Mathematical source:** [AlpogeWindowSourceTransport.lean](AlpogeWindowSourceTransport.lean); original consumer [math #1828](https://github.com/grwtsk/math/issues/1828) and independent prime-Jacobi error program [math #1849](https://github.com/grwtsk/math/issues/1849).  
**Canonical local base:** grwtsk/math@14165a7035d14ab3d20d80396a0ba8f3b75cae52, root Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.  
**External source-only provenance:** Alpöge mirror tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3 (Formalism.HC.HasWindows), ExplicitFormulaErrorOfHostConditions.lean blob ed60b4b997cd4703713660b185b9e43fd95559a1 (Level.Gm), and Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d (conditional Gm power bound). The upstream environment uses Lean v4.33.1 and an incompatible Mathlib pin; **not imported**. No theorem from Main.lean or FinalTheorems is used.

## Exact theorem

The original predicate is

\[
HasWindows(S,a)\ \Longleftrightarrow\
\forall y:\mathbb R,\ \exists Y\ge y,\
\forall x\in[Y,Y^a],\ x\in S.
\]

The local HasPowerWindows F θ a is exactly this predicate with
\(S=\{x:F(x)\le x^\theta\}\). This is a mathematical predicate correspondence, not a checked cross-edition Lean equivalence.

**Window transfer theorem.** Suppose
HasPowerWindows F θ a, and for some fixed \(x_0\),

\[
|G(x)-F(x)|\le E(x)
\le x^{\theta'}-x^\theta
\quad\text{for every }x\ge x_0.
\]

Then HasPowerWindows G θ' a.

**Proof.** Given any lower start y, apply the F-window hypothesis to \(\max(y,x_0)\). It supplies \(Y\ge\max(y,x_0)\) and all \(x\in[Y,Y^a]\) satisfy \(F(x)\le x^\theta\). Since \(x\ge x_0\), the full error/margin bound gives
\(G(x)\le F(x)+|G(x)-F(x)|
\le x^\theta +x^{\theta'}-x^\theta=x^{\theta'}\).
Use the same Y. \(\square\)

The three Lean theorem candidates formalize (1) the elementary one-sided ceiling plus error margin, (2) the full quantified window transfer, and (3) exact-source congruence. They require no arithmetic facts, no spectral input, no RH hypothesis, and do not rename an unproved proposition as an established zero-free region.

## Nontrivial analytic instantiation from a finite Euler-symbol perturbation

Let \(\theta>0\), \(\eta>0\), and \(|F(x)-G(x)|\le C\log x\) for \(x\ge e\), with \(C\ge0\). The elementary inequality \(e^u\ge1+u\) yields

\[
x^{\theta+\eta}-x^\theta
=x^\theta(e^{\eta\log x}-1)
\ge\eta x^\theta\log x.
\]

Take \(x_0\ge e\) so that \(x^\theta\ge C/\eta\) for all \(x\ge x_0\). Thus
\(C\log x\le x^{\theta+\eta}-x^\theta\) above \(x_0\), and the quantified transport proves

\[
HasWindows\{F(x)\le x^\theta\},a
\Longrightarrow
HasWindows\{G(x)\le x^{\theta+\eta}\},a.
\]

The [finite corrected Euler-symbol theorem](FiniteEulerSymbolCancellation.md) bounds any fixed finite Euler-factor change by \(O(\log x)\) **only when its local logarithmic derivative correction is preserved**. This gives a source-specific application to Alpöge's nontrivial character branches An.gChi within Level.Gm, with exact finite character weights. The zeta Gz branch is held fixed; a generic modified character or conductor is not identified with a genuine Dirichlet character automatically.

## What the theorem does not supply

This is a proof of **stability of source inequalities**, not the source inequality itself. The principal one-sided estimate of Alpöge's core_gm still depends on its EAtH and CoreAtH analytic/arithmetic hypotheses. The actual finite-window selector and character-family construction remain separate. Level.FormBAt (a zero-free criterion) must retain its exact hypotheses; there is no invocation of the final RH or every-character result.

An actual Lean compatibility theorem that identifies the locally defined window predicate with upstream Formalism.HC.HasWindows is NOT_RUN; so are compilation, axiom audit and independent fresh kernel replay of the three new Lean declarations. The full proof of the logarithmic-to-power absorption appears here and in [PrimeJacobiMomentErrorBudget.md](../../Combinatorics/GraphTheory/PrimeJacobiMomentErrorBudget.md); its Mathlib analytic lemma is a separate formalization step.

**Novelty:** the window shape and eventual transport are elementary, with no global novelty claim. The source-specific integration with certified arithmetic reconstruction and the relevant weighted character family is a new maintained project target, pending external prior-art review.

## Which slope estimate enters the prime window

At archive revision `40e56bab026552e089d7afcfeff08d2defb9c005`, `Deduction.ch_top` fixes a translate `u`, identifies its arithmetic gap with `ASK u − Main u`, unpacks the eleven clauses of `SizeData₂`, and passes all eleven to `each_unit_bound_statement` at that same translate. It then bounds `ErrX5at u` using `errX5at_le`. The arithmetic use in `ch_core` requires a gap bound for **every** member of its selected set. An inequality for a uniform mean over all translates would not imply this premise. Within a translate the proof does take a different mean, over words weighted by their ranks. [Original `ch_top`, lines 37–61](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/ChTop.lean#L37-L61) · [`ch_core`, lines 343–355](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/ChCore.lean#L343-L355)

The eleven arguments in source order are `HidaSetting`, `DIV`, `EComp5`, `HComp`, `Count5`, `Slopes`, `QuotientSlopeBoundsWith`, `LossBounds`, `SlopeIneq`, `HHBound` and `FParams`. The first arithmetic divisibility estimate in that list is (H1), `Data.DIV`. For every translate and word it bounds the theta-target slope plus the word height minus its offset by
\[
 \sum_t\left[m\{\operatorname{ph}(a_t)-a_t\log\Omega\}
                         -a_t\log T\right]
   +c_{\rm Div} n_T a\,L_a+
       c_{\rm Div}m(B_0+N_c)x^{e_{\rm Div}\varepsilon}.
\]
Its proof for the actual normalized theta maps, ranks, metrics and local divisibility is still open in this reconstruction. The archive's `MeanBoundSecondForm` instead has conclusion `umean ASK ≤ umean Main + ErrX`. Its file supplies shared definitions including `SlopeIneq`. The explicit fixed-translate call and the different error definitions can be checked directly. The version 2 explanatory draft reports final-theorem dependency on the pointwise theorem and absence of `MeanBoundSecondForm` from that dependency list; this comparison did not rerun the archive-wide dependency computation. [Pointwise application and eleven arguments](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SizeWindowBrackets/ChainSlopeWindows/LevelOfCongruence.lean#L113-L197) · [`DIV`, `SlopeIneq` and the two means](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/RankGapBounds/MeanBoundSecondForm.lean#L92-L191) · [Rubinstein-directed working draft v2, 22 November 2026, §§III.8, III.11.9](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

Concretely, clause 7 of `LinkDIV_at` substitutes the slope of the dual normalized target `RR.muDual`, the height of each word map `div.h u`, and the leading term `MAIN u`. Clause 6 constrains the height of the actual nonzero map `Bk u` with its source and dual target metrics. The family version quantifies one constant and threshold before all large scales and all family members. A bound chosen separately for each member would lose this uniformity. [Original family quantifiers and map data](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalTheoremInputs.lean#L59-L98)

### Sharp logarithmic spread loss

Write \(s=\texttt{uF}(u)\), \(H=\texttt{HH}(u)\), \(X=x^{c_{HH}}\), and \(\Phi(s,H)=s\log(1+H/s)\) for \(s>0\), with \(\Phi(0,H)=0\). The source uses \(0\le s\le U\), \(0<H\le Xb\), \(b,X>0\), to charge \((U+b)\log(1+X)\) in `Ga_bound5`. Here \(U\) first bounds a weighted spread at the chosen translate and is then increased to `UBar5`. For \(U>0\), the sharp envelope is
\[
             \Phi(s,H)\le U\log(1+Xb/U).
\]
To see this, fix \(t\ge0\). Apply \(\log y\le y-1\) at \(y=(1+H/s)/(1+t)\) and multiply by \(s\), giving
\[
 \Phi(s,H)\le s\bigl(\log(1+t)-t/(1+t)\bigr)+H/(1+t).
\]
The first coefficient is nonnegative by \(\log(1+t)\ge t/(1+t)\). Substitute the ceilings and take \(t=Xb/U\). Equality holds at \((s,H)=(U,Xb)\); if \(U=0\) the spread vanishes. At \(U=b\) this halves the old uniform bound. In `ErrX5at` the spread has multiplier \(4/(1-\bar\delta)\); its other summands, including the cardinality of the fixed word set, still require their own bounds. [Source logarithmic estimate](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/RankGapBounds/RankGapProofs/WeightedMeanData.lean#L81-L116) · [Exact error expression](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SizeWindowBrackets/QuotientSlopeBoundsWith.lean#L37-L55)

The same tangent bounds the weighted sum of spreads by
\(U\log(1+V/U)\), where \(U=\sum_i w_i s_i>0\) and \(V=\sum_i w_i H_i\). Multiply the tangent bound by \(w_i\ge0\), sum, and use \(t=V/U\). No positivity lower bound on individual spreads or normalization of weights enters. For the two pairs \((1,3),(3,3)\) with unit weights, the two sides are \(\log32\) and \(\log(625/16)\). This finite aggregation can be applied after a pointwise argument when its multipliers are common.

### Arithmetic loss under rounding of local lattice exponents

For a fixed word let \(z_w=e_w\,\mathrm{sg}(u,w)\), with the ramification index included, and let \(\lambda_w=\log N\mathfrak p_w/[K:\mathbb Q]\). The source's `mu_diff` sums the **floors** of these exponents, with multipliers \(2\lambda_w\), for the actual glued lattice under `NprimeDef`, unit archimedean determinants, finite generation and positive rank. Subtracting the real-valued sum gives the exact absolute defect
\[
                             2\sum_w\lambda_w\{z_w\}.
\]
Every floor error has the same sign, including when \(z_w<0\). Integral nonzero exponents cost nothing. For each rational prime \(p\), the local degree formula gives \(\sum_{w\mid p}\lambda_w\le\log p\), since \(\sum_{w\mid p}e_w f_w=[K:\mathbb Q]\). The source's `sg_eq_zero` requires `ZeroAbove` and the record field `F_above`. It restricts the primes below nonintegral exponents to \(p\le X''\) or prime divisors of the positive integer \(M=\mathrm{Lv}_u g_0g_1dD_{\Gamma,u}\). The exceptional level and denominator can exceed the cutoff. [Local weights by rational prime](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/AdmissibleParameterJoins/SumLogPrimeFactorsLe.lean#L274-L316) · [`round_le`, `sg_eq_zero`, `nprimeMu_at`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/AdmissibleParameterJoins/SumLogPrimeFactorsLe.lean#L401-L485)

For \(N=\lfloor X''\rfloor\ge0\), this gives the rounding budget
\[
       2\left(\vartheta(N)+\log\prod_{\substack{p\mid M\\p>N}}p\right).
\]
Indeed the small rational primes and the indicated prime divisors form disjoint sets. Each exceptional prime outside the cutoff occurs once, irrespective of its exponent or the number of exceptional factors sharing it. For a check take \(N=13\), \((\mathrm{Lv},g_0,g_1,d)=(17,11,13,7)\), and \(D_\Gamma=2^{10}3^2 17^3 19^2\). The factor under the combined logarithm is \(30030\cdot17\cdot19=9699690\). These are test inputs for the support bound only. The draft's Lemma L2 already identifies the one-sided rounding and the possibly smaller support of nonintegral exponents. Its (III.119) pays separately for the full exceptional factors and uses \(X''\log4\) for small primes. These comparisons leave the actual family bounds on \(\log\mathrm{Lv}\) and \(\log D_{\Gamma}\), the local support assumptions, and the gluing of the specified lattices to be proved independently. The draft states that the names in this rounding comparison were not put to its final-theorem dependency computation. [Version 2, §III.6, Lemma L2 and (III.119)](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

The [companion module](AlpogePointwiseLoss.lean) proves `spread_le_tangent`, `spread_le_at_upper_bounds`, `sum_spread_le`, `rounding_defect_eq_fract` and `prime_support_le_theta_add_large_radical` in the namespace `GRWTSK.NumberTheory.AlpogePointwiseLoss`. The last two declarations concern finite weighted exponents and actual natural prime divisors. The identification with the archive's geometric inputs is the conditional comparison above. None of the five declarations imports the archive or uses RH. No claim of prior-art novelty or independent review is made.

For the five companion declarations, Lean 4.34.1 elaborated the module and `leanchecker --fresh` completed successfully. Transitive `#print axioms` for each gave `propext`, `Classical.choice` and `Quot.sound`. The checked Lean source SHA-256 is `0267f3686e055a8e804d9a389911470af0c46a6c92435cac8847d202f9d38dfd`. These observations do not change the earlier three window-transport declarations' verification record.

## The dual target and its local metric factors in (H1)

For each word, clause 7 of `LinkDIV_at` takes the third conjunct of `WordFacts` in `linkDIV_at_words`. In the coordinate proof `wordFacts_of_clauses`, the inputs `tMu`, `tHt` identify the target slope and the map height. The caller `wordFacts_of_face` obtains both from an equality of actual lattices under a linear isomorphism and equalities of their local Hermitian metrics. The target `RR.muDual` is `muDef` evaluated on its dual basis, the matrices \((X_v^t)^{-1}\), and the linear functionals taking integral values on \(R=\texttt{RR.L}\). It is important here which dual and which archimedean measure are used. [Word and coordinate proofs, lines 128–228](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/Divisibility/RecBridge.lean#L128-L228) · [Application to clause 7](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/Divisibility/RecBridge.lean#L327-L338) · [`HLat.muDual`](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataArith.lean#L77-L102) · [Dual lattice and frame definitions](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/HarderNarasimhan/QuotRealize.lean#L15-L29)

Let the coefficient field be totally complex of degree \(n=2s\), with one complex embedding per infinite place. Assume the target is a full lattice of rank \(r>0\) with invertible frames. Choose any pseudo-basis \(R=\bigoplus_i I_i e_i\) and express the frames in these coordinates, with the realization given by \(X_v^{-1}\). Put \(d_R=\prod_i N(I_i)\) and \(c_K=2^{-s}\sqrt{|\operatorname{disc}K|}\). Testing a linear functional on vectors supported at a single coordinate gives \(R^\vee=\bigoplus_i I_i^{-1}e_i^*\). Conversely, summing those coordinate products proves integrality on the full lattice. A single fractional ideal in the mixed embedding has covolume \(c_K N(I)\), also for a nonprincipal ideal. A complex-linear change of frame \(T\) has real determinant \(|\det_{\mathbb C}T|^2\), since the real determinant is the norm of the complex one. The product measure and the two inverse frames therefore give
\[
 \operatorname{covol}(R)=c_K^r d_R\prod_v |\det X_v|^{-2},\qquad
 \operatorname{covol}(R^\vee)=c_K^r d_R^{-1}\prod_v|\det X_v|^2 .
\]
Insert the squared-norm normalization \(\mu(L)=-2\log\operatorname{covol}(L)/(nr)-\log2+\log|\operatorname{disc}K|/n\). The last two terms equal \(2\log c_K/n\). Thus \(\mu(R^\vee)=-\mu(R)=2(\log d_R-2\sum_v\log|\det X_v|)/(nr)\). The archive defines covolume for a discrete lattice as the square root of the Gram determinant of its integer basis. In a full lattice of real dimension \(nr\), the Gram matrix is \(A^tA\) for the real basis matrix \(A\) in orthonormal coordinates, so this volume is exactly \(|\det A|\). [Archive Gram covolume, rank, degree and slope](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LatticeSlopes/Statement.lean#L15-L25) · [Archive slope, height and local matrix formulas](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/HarderNarasimhan/StatementPl.lean#L24-L66) · [Local realization in real and imaginary coordinates](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/HermitianLattices/StatementMaj.lean#L29-L80) · [Mixed-embedding covolume of a fractional ideal](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean#L124-L142)

For the actual nonzero word map \(B\) into the linear dual, let \(B_v\) be its matrix over the chosen embedding and \(Y_v\) the source frame. The archive defines its height as the mean of the logarithms of squared operator norms. Combining it with the preceding equality gives the local expression
\[
 \mu(R^\vee)+\operatorname{ht}(B)
   =\frac{2\log d_R}{nr}
    +\frac1s\sum_v\log\left(
     \frac{\|X_v^t B_v Y_v\|_{\rm op}^2}{|\det X_v|^{2/r}}\right).
\]
Each summand is invariant when the target frame is multiplied by a nonzero complex scalar at that place. The numerator and denominator acquire precisely its squared absolute value. An unrestricted change of shape can give arbitrarily large loss. In rank two, take \(Y_v=B_v=1\) and \(X_v=\operatorname{diag}(t,t^{-1})\) with \(t\ge1\). The denominator is one and the squared operator norm is \(t^2\). Thus control of the determinant and fractional ideals alone cannot bound the word height. Since \(B\ne0\) and the frames and embeddings are injective, every operator norm in this display is positive. To obtain the actual left side of (H1), one must also add \(h(u)-\operatorname{ht}(B)-F_o\). Clause 6 bounds the sign of the height difference from below. The upper estimate needed in clause 7 still requires control of the prescribed word height, the genuine theta maps and the finite-place and period terms. In particular §III.7 (S5)–(S6) requires a bound on the covolume of integral forms with Petersson metric and the same integral periods used in the height. [Transport of the actual metric](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/HookProducts/RBTieMu.lean#L34-L58) · [Explanatory draft v2, §§III.7, III.10 Lemma O9, III.11](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf)

The rational trace pairing provides an independent normalization check. For a fractional ideal \(I\), its integral trace dual is \(I^{-1}\mathfrak D_K^{-1}\), of norm \((N(I)|\operatorname{disc}K|)^{-1}\). The coefficients pairing integrally via \(\frac12\operatorname{Tr}_{K/\mathbb Q}(xy)\) form \(2I^{-1}\mathfrak D_K^{-1}\). Its mixed-embedding covolume times that of \(I\) equals one, because \(N((2))=2^n\) and \(c_K^2=2^{-n}|\operatorname{disc}K|\). Identifying coefficient vectors with Euclidean Riesz representatives additionally conjugates each complex coordinate, which preserves volume. The algebraic dual \(I^{-1}\) used by the source instead gives the product \(c_K^2\). [Trace dual of a fractional ideal](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/DedekindDomain/Different.lean#L345-L377) · [Absolute norm of the different](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/NumberField/Discriminant/Different.lean#L39-L48)

For example set \(\delta=\sqrt{-23}\), \(\omega=(1+\delta)/2\), \(I=(2,\omega)\). In the basis \((1,\omega)\), bases for \(I\), \(I^{-1}=(1,(1-\omega)/2)\), and \((2/\delta)I^{-1}\) have absolute determinants \(2,1/2,2/23\), respectively. Indeed \(I\bar I=(2)\) by \(\omega(1-\omega)=6\) and \(2\omega+2(1-\omega)=2\). The half-trace matrix for the first and third bases is \(\left(\begin{smallmatrix}0&-1\\1&0\end{smallmatrix}\right)\), of determinant one. Thus the two distinct covolume products are \(23/4\) and \(1\). This tests the factor two and the use of the ordinary linear dual in clause 7.

The [companion Lean module](AlpogeDualLatticeCovolume.lean) proves the integral dual coordinate characterization in every finite rank, cancellation of the two actual real frame Jacobians, the two covolume products on fractional-ideal lattices, the exact trace-dual norm, and half-trace membership. The pseudo-basis volume assembly and identification with the full archived target and its word maps are analytic comparisons here. A cross-repository formal identification and independent review remain open.

Lean 4.34.1 built the companion source at SHA-256 `cb9bd8d7d41cefe8e75bc571c92fb9a80778d25f82e455a49ba95e9a96ba6736`. A fresh `leanchecker` replay exited successfully. Transitive axiom inspection of all six theorems and the fractional-ideal definition returned `propext`, `Classical.choice` and `Quot.sound` for each.
