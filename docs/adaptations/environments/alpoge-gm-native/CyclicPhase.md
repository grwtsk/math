# Original cyclic Level: positive character phase and integer prime-power curvature

**Consumer:** grwtsk/math #1850 (RH-independent genuine Level.Gm), #1828 (analytic supplier blueprint), #1819 (signed arithmetic source).  
**Isolated source candidate:** [CyclicPhase.lean](CyclicPhase.lean).  
**Original source pin:** tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Lean 4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. ExplicitFormulaErrorOfHostConditions.lean blob ed60b4b997cd4703713660b185b9e43fd95559a1 defines the genuine Level.ofSub, Level.cyc, Level.Nt, Level.wt, Level.Gm and PChar.of_self/PChar.of_one; PrimePairSizeCondition.lean blob aee05935e7bac6625cd4e07fef4912722d796780 defines the genuine PChar type. Native Gm normalization is established mathematically in [Normalization.md](Normalization.md), its isolated Lean implementation is NOT_RUN.

## Theorem A: positive arithmetic phase for every original subgroup Level

Let Xi be a finite subgroup of Dirichlet characters modulo M, let L=Level.ofSub Xi, and set o=Nat.card Xi≥1. By source definition, psK=none, KEPT is the PChar.of image of Xi, the principal character is in KEPT, and Nt=KEPT.erase PChar.one. Consequently Nt.card+1≤o. Each original nonprincipal weight is exactly 1/(3o+1). For any positive integer n, every primitive Dirichlet character has |Re chi(n)|≤1, including zero at ramified primes. Thus the EXACT source coefficient
\[
c_L(n)=1+\sum_{\psi\in L.Nt}L.wt(\psi)\Re\psi.\chi(n)
\]
satisfies
\[
\boxed{\frac{2(o+1)}{3o+1}\le c_L(n)\le\frac{4o}{3o+1},
\qquad\frac23<c_L(n)<\frac43.}\tag{A}
\]
Proof: at most o−1 terms each of magnitude ≤1, with original common weight 1/(3o+1). This is strict positivity of the *arithmetic prime-power multiplier*, not Weil positivity or a bound for Gm itself.

The isolated Lean source includes explicit general bounds under source cardinality and the proposed full original Level.ofSub cardinality bridge. Its actual elaboration, transitive axioms and kernel replay are NOT_RUN.

**Hostile exception:** a valid Level with KEPT={1,chi4}, psK=some real odd chi4, weight 1, has c(3)=1+chi4(3)=0. The unconditional result does NOT extend to every exceptional Level.

## Theorem B: exact two-symbol projector on coprime residues

Assume gcd(n,M)=1. The primitive PChar.of values then agree with the original character evaluations at n via their source change-level identity. On the finite subgroup Xi, evaluation is a group character. Multiplying the complete sum by any nontrivial evaluation value forces it to vanish, while if all evaluations equal 1 the sum equals o. This is the classical subgroup character orthogonality theorem, not a novel finite-group result (see https://courses.cs.cornell.edu/cs6817/2020fa/lectures_hatami.pdf).

Hence
\[
c_L(n)=\frac{3o+\Re\sum_{\chi\in\Xi}\chi(n)}{3o+1}
=\boxed{\begin{cases}
4o/(3o+1),&\text{all }\chi(n)=1,\\
3o/(3o+1),&\text{otherwise.}
\end{cases}}\tag{B}
\]

**Ramified counterexample:** for the eight-element full character group modulo 15, at n=15 primitive-character factors give c_L(15)=1, whereas the coprime-residue values are 24/25 and 32/25. Applying the binary theorem to nonunits would be false. The general interval (A) remains true.

The original PChar.of image-injectivity on the fixed modulus and finite-subgroup orthogonality remain OPEN as source-bound Lean lemmas.

## Theorem C: exact and stable three-sample prime-power recovery

Set Y_L(x)=L.Gm(x)+x log x. From the original native Gm normalization (with all actual L'/L and Euler corrections retained),
\[
Y_L(x)=\sum_{n\ge2}\Lambda(n)c_L(n)(x/n-1)_++A_Lx.
\]
Every coefficient is nonnegative by (A), so Y_L is convex on x≥1. For integer k≥2, the literal ramp second-difference identity yields
\[
\boxed{\Delta^2Y_L(k)=\Lambda(k)c_L(k)/k.}\tag{C}
\]
Thus Y_L has strictly positive integer curvature if and only if k is a prime power, and
\[
\boxed{\Lambda(k)=k\Delta^2Y_L(k)/c_L(k).}\tag{D}
\]
Any common affine correction (including the genuine source A_L x) cancels **exactly** under the second difference. Computing the native L'/L constants is unnecessary for local curvature recovery, although still necessary for absolute Gm estimates.

If three adjusted source samples are certified within absolute errors eMinus,e0,ePlus, the same signed source phase gives
\[
\boxed{\left|k\Delta^2\widetilde Y(k)/c_L(k)-\Lambda(k)\right|
\le\frac{3k}{2}(eMinus+2e0+ePlus).}\tag{E}
\]

For prime powers, Lambda(k)=log p≥log2>1/2 (the original Mathlib has Real.log_two_gt_d9 in Analysis/Complex/ExponentialBounds.lean). Hence the actual curvature exceeds 1/(3k); for nonprimepowers it is zero. If the three observed adjusted samples each have certified error ≤1/(48k), then the exact rational detector is
\[
\boxed{k\text{ prime power}\iff
\Delta^2\widetilde Y(k)>1/(6k),\quad k\ge2.}\tag{F}
\]
Proof: the second-difference sample error is ≤4/(48k)=1/(12k); the nonprime-power observed curvature is below 1/(6k), while the prime-power observed curvature exceeds 1/(3k)−1/(12k)=1/(4k). No final RH theorem is used.

This is a **conditional certified-data detector**, not a claim that one finite run certifies all integers or that evaluation of actual native Gm has been kernel-checked.

## Exact arithmetic controls and formal boundary

An independent standard-library rational checker at [verify_cyclic_level_phase_curvature.py](../../../../scripts/verify_cyclic_level_phase_curvature.py) tested the actual multiplicative character tables modulo 4, 5, and the product character group modulo 15, including primitive factors on nonunit residues. It passed **3,066 exact rational curvature inversions** and **9,198 adversarial three-sample threshold tests** using positive rational source coefficients (the identities are linear in coefficients). It also detected the exceptional chi4(3) cancellation and the failure of binary unit-phase equality at n=15.

The mathematical proofs use classical character orthogonality and discrete-hinge inversion, not zeta-zero data. Global novelty is unassessed. Remaining source gates: original pinned Lean build/axiom audit, primitive-character image/cardinality and finite subgroup orthogonality in Lean, exact native Gm integer curvature in Lean, then genuine all-scale EAtH/CoreAtH or arithmetic bounds. None of these source-specific curvature results proves RH.
