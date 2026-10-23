# Arithmetic Liouville signs as exact finite Walsh observations

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-21).

**Mathematical owner:** [grwtsk/math#635](https://github.com/grwtsk/math/issues/635). **Parent:** [#628](https://github.com/grwtsk/math/issues/628), stacked on [draft PR #632](https://github.com/grwtsk/math/pull/632) at exact parent head a58ec67f358b838527ea6220aab8353ba611e823. **Further finite Bernoulli and labeled-boundary work:** [#630](https://github.com/grwtsk/math/issues/630). **Other boundaries:** #121, #444, #453, #516, #100 and RH target #15.

## Pinned source and arithmetic normalization

The pinned Mathlib revision is db584cd6d46c92f209a44c0f1c829460d327499d from the unchanged lake-manifest. Thomas Browning authored Mathlib/NumberTheory/ArithmeticFunction/Liouville.lean (Apache-2.0), whose arithmetic function takes integer values and satisfies, for nonzero natural n,

\[
\lambda(n)=(-1)^{\Omega(n)}
\]

where \(\Omega(n)\) counts prime factors **with multiplicity**. The source itself defines \(\lambda(0)=0\). The exact named source lemma is ArithmeticFunction.liouville_apply with an explicit nonzero hypothesis; the parity algebra uses Mathlib's neg_one_pow_eq_ite (Algebra/Ring/Parity.lean).

The new source module is GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean (reviewed Git blob bc00fb114c1c6546cefaf732f4318ab0c0061338). It defines a Boolean as the decidable parity of ArithmeticFunction.cardFactors and gives the following **guarded** identification:

\[
m\ne0\Longrightarrow \operatorname{bitSign}(\operatorname{parityBit}(m))
=\operatorname{cast}_{\mathbb R}(\lambda(m)).
\]

True represents +1; false represents -1. The source separately states an explicit zero obstruction: the Boolean bit at zero is true while \(\lambda(0)=0\). The Boolean model is **not** valid at zero.

## Actual Liouville finite cylinder identity

For a finite set of distinct natural-number shifts \(H\) and a pattern \(\varepsilon:H\to\{-1,+1\}\), take exactly the positive indexed observations

\[
x_{n,h}=\lambda(n+1+h)\qquad(0\le n<N,\ h\in H).
\]

Define the count and unnormalized moments:

\[
\begin{aligned}
\operatorname{Count}_{N,H}(\varepsilon)
&=\sum_{n=0}^{N-1}\prod_{h\in H}\mathbf1_{x_{n,h}=\varepsilon_h},\\
M_N(S)&=\sum_{n=0}^{N-1}\prod_{h\in S}\lambda(n+1+h).
\end{aligned}
\]

The Liouville-specific theorem proposed in Lean is

\[
\boxed{
2^{|H|}\operatorname{Count}_{N,H}(\varepsilon)=
\sum_{S\subseteq H}\left(\prod_{h\in S}\varepsilon_h\right)M_N(S).
}
\]

The actual arithmetic source is retained in each product. The proof first identifies Boolean signs with Mathlib's Liouville values pointwise, then reuses the parent generic finite Walsh theorem.

No division by N occurs; the theorem includes N=0. The **empty correlation** satisfies \(M_N(\varnothing)=N\); the empty coordinate set counts every observation. Nothing in this exact finite expansion bounds any nonempty \(M_N(S)\).

## Conditional limits: not proved here

When N>0, normalize \(C_N(S)=M_N(S)/N\). A sufficient condition for convergence of every **fixed** H-pattern frequency to \(2^{-|H|}\) is

\[
\forall\varnothing\ne S\subseteq H,\qquad C_N(S)\longrightarrow0.
\]

Full ordinary Chowla includes such cancellation for all fixed distinct finite shifts and gives a fair-Bernoulli generic sequence through cylinder convergence. Neither fixed-window convergence nor the above algebra gives a quantitative estimate uniform in shifts H growing with N. In particular they do not provide the signed, dyadically weighted, all-depth and maximal-prefix suppliers required by #453/#516 and RH-E02.

The total-variation/entropy extensions, full limiting dynamical measure, exact cyclic seam and labeled-sofic boundary controls belong to #630/#121. No ergodicity follows merely from finite cyclic models; finite ergodic measures can converge weakly to a nonergodic mixture. The Frantzikinakis 2017 ergodicity-to-Chowla direction is an external analytical input with its own exact averaging hypotheses, not a theorem imported by the current module.

**Möbius is separate**: its value at a positive nonsquarefree integer is zero, so it cannot be represented by this two-symbol source without a squarefree-support or ternary adapter.

## Formal boundaries and review controls

- Positive argument n+1+h is mandatory; changing to n+h permits the arithmetic zero input.
- Prime factors must be counted with multiplicity, not just distinct primes.
- Even factor-count parity must give +1, odd must give -1.
- N=0, H=empty and the empty subset term are included exactly.
- Ordinary Cesàro arithmetic moments are not logarithmic averages, not independent random samples, and not GUE statistics.
- Source proofs do not supply Chowla, Bernoulli, Sarnak, growing-shift maximal-energy bounds or RH.

The increment changes only one new arithmetic Lean module, this mathematical note and one passive exact-source verification target. It does not alter the parent PR, public root, dependency/toolchain pins, workflows, or Noeaaeue execution state. No Lean/Lake/native execution, elaborated declaration inventory, complete trust audit or replay receipt is asserted.

**Required for acceptance:** clean exact-head source checkout; Lean 4.33.0 elaboration under the pinned manifest; theorem-type and generated-declaration reconciliation; full axiom/import/native dependency review; negative controls including the zero guard and shift index; externally bound verification evidence under #100. The parent source must be accepted independently before the stacked result can be promoted.
