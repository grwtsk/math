# Finite signed prime-power curvature under source-preserving diffusion

**Mathematical consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850), the RH-independent Jacobi → native Alpöge signed \`Gm\` readout.  
**Maintained candidate:** [PrimeJacobiGmDiscreteDiffusion.lean](PrimeJacobiGmDiscreteDiffusion.lean), three declarations over a literal finite Dirichlet second-difference matrix.  
**Companion full mathematical proof:** [PrimeJacobiGmDiscreteCurvature.md](PrimeJacobiGmDiscreteCurvature.md), §§2–5.  
**Local base:** math@7d0433f7a3919e3c5863887c2bf7b95b45865a34, Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. **Alpöge source comparison:** native \`Level.Gm\` in \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\` (separate Lean v4.33.1 environment), \`ExplicitFormulaErrorOfHostConditions.lean\` blob ed60b4b997cd4703713660b185b9e43fd95559a1. **No final RH theorem is imported.**

## Exact finite mathematics

For an \(N\times N\) Dirichlet second-difference matrix \(L_N\) with diagonal -2 and adjacent offdiagonals +1, set \(D_t=I+tL_N\), \(t\in(0,1/4)\).

Since \(D_t\) is a polynomial in \(L_N\), all powers commute:
\[
L_ND_t^m=D_t^mL_N\quad\forall m\in\mathbb N.
\]
This algebraic statement does **not** require RH or any spectral zeros. It remains true for arbitrary real t, even when \(D_t\) is singular; t<1/4 is needed only for the explicit inverse norm bound below.

For any sampled native smoothed source \(q(k)=G_m(k)+k\log k\), \(1\le k\le N\), the exact discrete-curvature deconvolution gives
\(q(k+1)-2q(k)+q(k-1)=\Lambda(k)c(k)/k\) at interior indices. The **finite Dirichlet** matrix omits the actual exterior source samples. With \(c=(\Lambda(k)c(k)/k)_{1\le k\le N}\), \(q_0\) the continuous extension at 0 and \(q_{N+1}\) the *actual original* exterior sample, define \(B_1=-q_0\), \(B_N=-q_{N+1}\), all other \(B_k=0\) (for N=1 the two contributions must be added in the same slot). Then \(L_Nq=c+B\). Hence
\[
\boxed{L_ND_t^mq=D_t^mc+D_t^mB.}
\]
A diffusion pipeline that omits \(B\) silently changes the original signed source. The second Lean theorem explicitly retains \(B\) as an input vector and proves the original matrix-vector transport under its exact source decomposition.

For \(0<t<1/4\), \(D_t\) has nonnegative entries with row sums at most one, so \(\|D_t^m\|_\infty\le1\). Since \(\|tL_N\|_\infty\le4t<1\), its Neumann inverse exists and
\[
\|D_t^{-m}\|_\infty\le(1-4t)^{-m}.
\]
This gives an explicit tradeoff: bounded forward diffusion and potentially amplified inverse noise. The current Lean file proves matrix commutation and conditional source-vector transport; the analytic inverse norm estimate has been proved mathematically but **not formalized in this Lean file**.

## Verification and independence

The original standard-library exact rational checker \`verify_gm_discrete_diffusion.py\` passed **40** cases: N=2,3,5,8,13; t=1/16 and 1/8; m=0,1,3,5. The checker verifies exact commuting matrices, complete boundary-vector transport, forward \(\ell^\infty\) contraction, exact inverse and the conservative inverse norm. All 40 cases exhibit **nonzero** right-boundary correction. It does not infer an infinite heat semigroup, Weil positivity, an RH proof or an independent xi spectrum.

**Formal status:** Lean elaboration, transitive axiom audit and fresh kernel replay: **NOT_RUN**. No deployed executor/automations or toolchain changes were used. The generic matrix identities are candidate Lean implementations pending a pinned build. Historical Jacobi and heat functional calculus is established prior art; this is a source-specific finite arithmetic boundary return, not an unreviewed global novelty claim.
