# The original CoreGm eventual integer inequality: precise native hypotheses

**Consumer:** grwtsk/math #1850 and the genuine signed integer/continuum return in PrimeJacobiGmDiscreteCurvature.md (math root v4.34.1).

**Original pinned source:** tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Lean 4.33.1, Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
- Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean, blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d, theorem UpperTheory.Comparison₂.core_gm.
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean, blob ed60b4b997cd4703713660b185b9e43fd95559a1, actual source EAtH and Level.Gm definitions.
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Landau.lean, blob 441c45be16b20bb999a1746b218c32c6fc5ba289, intermediate theorem Landau.zero_free_of_Chebyshev_growth.
- Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean, blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3, original HasWindows, LandauWinAt, FormBAt.

**Maintained isolated candidate:** [EventualIntegerReturn.lean](EventualIntegerReturn.lean). Lean/kernel/axiom validation **NOT_RUN**. The typed premise EAtH remains EAtH Λ H.toHostRaw TT x eps C; CoreAtH remains CoreAtH H.toHostRaw TT eD eL K cHH eK eps x. The actual Frame, HostAx and TT data are preserved. The proof does not import or use Alpöge's final RH/GRH theorem.

## Mathematical theorem 1: eventual integer margin from typed intermediate suppliers

Let
\[
\alpha=\frac12+(e_D+e_L+7)\varepsilon,\qquad\varepsilon>0.
\]
The *actual* theorem core_gm supplies a source threshold \(x_1\) for which
\[
EAtH(\Lambda,H,TT,x,\varepsilon,C)\ \land\
CoreAtH(H,TT,e_D,e_L,K,c_{HH},e_K,\varepsilon,x)
\quad\Longrightarrow\quad \Lambda.Gm(x)\le x^\alpha,
\]
for every x≥x1, retaining all original host parameters.

If \(\theta>\alpha\) and \(\theta>0\), then there exists \(x_2\ge1\) such that
\[
x^\alpha+\frac1{4x}\le x^\theta\quad\text{for every }x\ge x_2.
\]
Proof: take \(\delta=\theta-\alpha>0\). Choose x2≥1 so that x^\delta≥2 for x≥x2; this is possible because x^\delta→∞. Then \(x^\alpha\le x^\theta/2\). Also x≥1 and theta>0 imply \(x^\theta\ge1\), hence \(1/(4x)\le1/4\le x^\theta/2\). Add both inequalities.

Consequently, if **for every sufficiently large integer n** some original Frame, HostAx and TT jointly satisfy EAtH and CoreAtH at x=n, then
\[
\boxed{\forall n\ge n_0:\quad
  \Lambda.Gm(n)\le n^\theta-\frac1{4n}.}\tag{E1}
\]
The source proof candidate eventual_integer_gm_of_native_host_witnesses carries exactly this logical structure and treats the exponent margin as a separate verified input.

**This is a conditional theorem.** No source proof in this iteration establishes the eventually quantified family of host witnesses. In particular, having EAtH/CoreAtH at a finite set of integers is insufficient to assert them at all sufficiently large n.

## Mathematical theorem 2: from integer bounds to the original zero-free corridor

For 0<theta<1, the original Level.Gm normalization gives, between consecutive positive integers, Gm''(x)=-1/x. Its true signed prime-power head is affine on each open unit interval; the authentic nonprincipal L'/L contributions are linear in x and have zero curvature.

Thus the curvature argument in the maintained root source gives
\[
F_\theta(x):=\Lambda.Gm(x)-x^\theta
\le\max\{F_\theta(n),F_\theta(n+1)\}+\frac1{8n},
\quad n\le x\le n+1.
\]
If (E1) holds, both endpoint deficits are at least 1/(8n), since 1/(4(n+1))≥1/(8n) for n≥1. Therefore
\[
\boxed{\Lambda.Gm(x)\le x^\theta\quad\text{for all sufficiently large real }x.}\tag{E2}
\]

**The genuine native intermediate Landau theorem already closes the next implication**: Landau.zero_free_of_Chebyshev_growth Λ proves that (E2) for 0<theta<1 implies Level.ZeroFreeAbove theta. It is in the original source module Landau.lean and is not Alpöge's final Main.riemannHypothesis theorem. No separate invented zero-free predicate is required.

The curvature interpolation still needs its original native Lean proof and cannot be inferred merely from finite checked integers. The new source theorem original_zero_free_of_eventual_real_gm consumes the genuine Landau theorem only when its all-real growth premise is supplied.

## The unresolved analytic supplier is precise

The actual EAtH.bdL field controls L'/L only for characters in H.Bounded(Level.KEPT). It does **not** alone provide bounds for every retained nontrivial Level.Nt character. Independent finite character-period certificates in [LogDerivativeCertificate.md](LogDerivativeCertificate.md) can certify the missing constants for a fixed original Level, without assuming RH.

However, bounded analytic constants do not establish the entire one-sided Gm estimate: the signed smoothed prime sum must cancel its xlogx and A_Level*x main terms with genuinely all-scale error estimates. Even if every individual finite n can be evaluated to arbitrary precision, no finite collection of such certificates proves the universal eventually quantified inequality (E1).

**Evidence split:** mathematical conditional proofs and source-pinned theorem comparison: completed; isolated new Lean theorem bodies: **NOT_RUN**; actual eventual EAtH/CoreAtH hosts or arithmetic all-n dominance: **NOT_PROVED**; independent RH or GRH proof: **NOT_PROVED**.

No new scheduling, Noe execution, root dependency changes or RH-result imports were performed.
