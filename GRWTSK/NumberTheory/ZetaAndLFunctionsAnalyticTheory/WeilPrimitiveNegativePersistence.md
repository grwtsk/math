# Original Weil source: topological persistence of negative directions

**2026-11-14, grwtsk contributors (AI-assisted).** The adjacent \`WeilPrimitiveNegativePersistence.lean\` is a SOURCE_PROOF_CANDIDATE. Lean elaboration, fresh kernel replay and transitive axiom audit **NOT_RUN**; independent analytical review **UNASSESSED**. This is not a proof of RH or primitive Dirichlet GRH.

**Consumer:** \`DirichletStageChain.PrimitiveStageLower\` at the actual primitive q=3, j=0 stage, then the existing cofinal-stage return. Conductor-one zeta with BOTH pole orientations and \`PrimitiveNegativeWitness\` are separate obligations. No arithmetic test has been replaced by a proxy Hilbert form.

## 1. Exact physical gamma and Fourier proof

Fix a primitive nonprincipal \`χ : DirichletCharacter ℂ q\`, parity \`a∈{0,1}\`, \`T>0\`, and **every** real odd C² test \`f\` satisfying the actual \`DirichletStageChain.Admissible χ T f\`. Put \`g=liftReal f\`, \`E=SourcePrimeCorrelation.energy g\`, \`C(r)=correlation g r\`, \`A(r)=energy(t↦g(t+r)−g(t))\` and \`H(ξ)=∫₀ᵀ f(t)sin(ξt)dt\`. The original signed primitive source is

\`\`\`text
Qχ,T(g) = gammaConstant(q,a)*E
        + ∫₀∞ parityKernel(a,r)*A(r) dr
        − 2Σ_(n∈activePrimePowers T) pairedPrimeWeight(χ,n)*Re C(log n).
\`\`\`

The angular Fourier convention is \`ĝ(ξ)=∫g(t)exp(−iξt)dt\`. Odd reflection gives \`ĝ(ξ)=−2iH(ξ)\`. Plancherel and translation (already sourced in \`WeilOddContinuousPlancherel\`) yield \`E=(4/π)∫₀∞H²\` and \`Re C(r)=(4/π)∫₀∞cos(rξ)H²\`. These integrals are absolutely convergent because \`H²∈L¹\` and \`|cos|≤1\`. Expanding the **original** translated norm gives

\`\`\`text
A(r) = 2E−2Re C(r)
     = (8/π)∫₀∞(1−cos(rξ))H(ξ)^2 dξ.                (P2b)
\`\`\`

For \`r>0\`, \`K_a(r)=parityKernel(a,r)=exp(−(a+1/2)r)/(1−exp(−2r))≥0\`. Since the **combined** integrand \`K_a(r)(1−cos(rξ))H(ξ)^2\` is nonnegative, Tonelli applies without splitting the divergent terms \`∫K_a\` and \`∫K_a cos\`. The original \`Admissible\` supplies finiteness of the entire gamma density:

\`\`\`text
∫₀∞ K_a(r) A(r)dr
 = (8/π)∫₀∞ H(ξ)^2[∫₀∞K_a(r)(1−cos(rξ))dr]dξ.    (P3)
\`\`\`

Write \`b_k=a+1/2+2k>0\`. Pointwise \`K_a(r)=Σ_(k≥0) exp(−b_k r)\`. Positive series interchange and the Laplace integral
\`∫₀∞exp(−br)(1−cos(rξ))dr=ξ²/[b(b²+ξ²)]\` give

\`\`\`text
B_a(ξ):=2∫₀∞K_a(r)(1−cos(rξ))dr
       =Σ_(k≥0)2ξ²/[b_k(b_k²+ξ²)].
\`\`\`

At each fixed frequency the integral is finite: near zero \`K_a=O(1/r)\` and \`1−cos(rξ)=O(r²)\`, while the large-\`r\` kernel decays exponentially. Retaining **all** signed original prime powers gives the source-exact identity

\`\`\`text
Qχ,T(g)=(4/π)∫₀∞[gammaConstant(q,a)+B_a(ξ)
       −2Σ_(n∈activePrimePowers T)wχ(n)cos(ξ log n)]H(ξ)^2 dξ,   (P4)
\`\`\`

where \`wχ(n)=pairedPrimeWeight χ n\`. This is a completed *written analytic argument* from the original source, NOT a checked Lean proof of P2b–P4. In the q3, parity-one radius-one case the inventory is exactly **2,3,4,5,6,7**, with weights \`(−log2/√2,0,+log2/2,−log5/√5,0,+log7/√7)\`. For n=4, \`vonMangoldt(4)=log2\`, not \`log4\`.

## 2. A fixed-margin negative stratum is compact in L²

For **fixed** \`χ,T\` and a **fixed** real \`κ\`, set \`Fκ(g)=Qχ,T(g)+κE(g)\`. The actual q3 stage-zero sign target is \`F₁(g)≥0\`; it must not be confused with the stronger \`Q≥0\` or a different stage-j coefficient.

Extend the representation (P4) to its natural odd L² form domain \`Dχ,T\`, comprising functions supported in \`[−T,T]\` with finite \`∫B_a H²\`. This contains the actual smooth admissible tests. Write \`dμ_g=(4/π)H²dξ\`, so \`μ_g([0,∞))=E(g)\`, and set

\`\`\`text
Mχ,T,κ=|κ+gammaConstant(q,a)|+
       2Σ_(n∈activePrimePowers T)|wχ(n)|.
\`\`\`

The cosine terms are bounded in absolute value by one, hence

\`\`\`text
Fκ(g) ≥ ∫₀∞ B_a(ξ)dμ_g(ξ)−Mχ,T,κ E(g).             (L)
\`\`\`

The function \`u↦ξ²/[u(u²+ξ²)]\` decreases for \`u>0\`. A decreasing-sum comparison with spacing two gives

\`\`\`text
B_a(ξ)≥∫_(a+1/2)^∞ ξ²/[u(u²+ξ²)]du
      =½ log(1+ξ²/(a+1/2)²).                        (G)
\`\`\`

For \`δ>0\`, define

\`\`\`text
Kχ,T,κ,δ={g∈Dχ,T: E(g)=1, Fκ(g)≤−δ}.
\`\`\`

By (L) and (G), for every \`Ω>0\` every member obeys

\`\`\`text
μ_g([Ω,∞)) ≤ 2 max(Mχ,T,κ−δ,0)/
             log(1+Ω²/(a+1/2)²).                   (tail)
\`\`\`

If \`Mχ,T,κ<δ\`, the stratum is empty. Otherwise this is a **uniform frequency-tail bound**. Plancherel also gives the actual translation control

\`\`\`text
‖g(·+s)−g‖₂² ≤ Ω²s²E(g)+4 μ_g([Ω,∞)).
\`\`\`

Since physical support is uniformly fixed and translations are uniformly equicontinuous, the Riesz–Kolmogorov criterion gives relative L² compactness. The full positive gamma integral is lower semicontinuous under L² limits: it is the supremum of the continuous quadratic integrals with truncated weight \`min(B_a,N)\`. The finite signed prime terms and conductor terms are L²-continuous. Oddness, fixed support and \`E=1\` are closed conditions. Thus \`Kχ,T,κ,δ\` is **L²-closed and compact**.

This realizes a *closed topological structure of source-derived negative directions* at fixed conductor, support and strict margin. The plain strict cone \`{Fκ<0}\` is open in the form topology, so a fixed negative margin is essential to the closedness statement. The result does not yet establish \`Kχ,T,κ,δ=∅\`. Compactness constants depend on \`χ,T,κ\`; uniformity as windows or conductors grow is an independent requirement.

## 3. Infinitely many cutoffs: exact persistence, then the missing exclusion theorem

The companion Lean theorems use \`SourcePrimeCorrelation.twistedPrime_eq_of_le\`: for the **same** function supported in \`[−T,T]\`, every new prime power activated when \`U≥T\` has \`log n≥2T\` and zero original correlation (including the Lebesgue-null endpoint). Neither conductor, gamma nor parity changes. Consequently

\`\`\`text
primitiveArithmeticValue χ hp hn U g =
primitiveArithmeticValue χ hp hn T g.
\`\`\`

\`admissible_of_window_extension\` preserves all real odd C², compact-support, L² and entire gamma-integrability hypotheses. Thus for **any fixed κ**, a strict negative \`Q+κE\` witness survives in every larger physical cutoff **as a true admissible test**. Taking \`κ=1\` preserves the q3 stage-zero defect, NOT a different stage-j bound.

To complete the proposed RH route, the following still require proofs, each returning to the original arithmetic source:

1. **Source Lean P2b–P4:** the shift-energy identity, joint nonnegative gamma Tonelli and full parity-dependent series, on every true \`Admissible\`. Do not hide integrability or omit the infinite tail.
2. **Negative-structure exclusion:** an exact source-dependent reason why the compact sets \`Kχ,T,κ,δ\` are all empty at the required stage coefficients, for every test, window, primitive character and conductor; or an equivalent globally quantified cofinal lower certificate. Persistence and infinitude alone establish the object to exclude, not its exclusion.
3. **Source-to-zero topology transport:** an injective, multiplicity- and signed-pairing-preserving map to actual complex zero divisors or Euler/prime data, together with a proved incompatibility theorem. No ordinate-only or absolute-square replacement.
4. **Root RH and GRH:** independent conductor-one zeta Weil positivity with both pole orientations, \`PrimitiveNegativeWitness\`, all j/conductors/χ, and cofinal limit; \`dirichletGRH_of_source_chains\` assumes \`hRH\` and cannot supply it.
5. **All-scale certification:** continuous operator identification, the complete error budget, infinite gamma tail, and uniformity. The previous 32,768-cell verifier and fixed q3 cutoff do not provide universal coverage. At \`T=2\`, n=8 becomes an actual additional signed prime-power term, so the radius-one data cannot be copied.

**Falsification checks:** incorrect \`2/π\` scaling, missed \`Λ(4)\`, changed n=5 phase, splitting the singular gamma integral, discarding fixed-margin \`δ\`, treating a compact stratum as automatically empty, omitting the T=2 n=8 atom, replacing \`Q+E\` by \`Q\`, or using an RH-conditional return as an unconditional premise.

**Prior art, not a novelty claim:** E. Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Mat. Acc. Lincei 11 (2000), 183–233, especially Theorems 10–11 (negative eigenvectors and degenerating linear-relation alternatives); M. Suzuki, *Weil's Quadratic Form via the Screw Function*, arXiv:2606.09096v3, §§1–3 (lower-bounded localized forms); Connes–Consani–Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, (3.19)–(3.20). The precise compactness argument above is source-local written mathematics and remains independently unreviewed.

**Verification:** no local Lean/Lake was available this turn. Prior targeted checks on \`WeilOddContinuousPlancherel.lean\` are historical; the separate native signed-ledger build failure in \`WeilExactGammaTail\` and \`WeilPhysicalThreeSliceCorrelation\` is preserved as **FAIL**, not transformed into NOT_RUN. No source-root, proof-worker, model-training or axiom-closure success is claimed.
