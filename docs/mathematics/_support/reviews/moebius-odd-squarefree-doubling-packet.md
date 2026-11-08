# Odd squarefree doubling: actual Möbius signed packet and complete dense remainder

**grwtsk contributors — 2026-10-31.** This source-bound increment extends the negative odd-prime packet to every odd squarefree positive integer n whose endpoints n and 2n occur in the original inventory. It proves an unconditional nonpositive packet and exact subtraction-based signed remainder mathematically. The explicit finite-pair reindexing is an **open Lean proposition**, not a theorem. Compilation, type/interface checks, fresh kernel replay and transitive axiom audit remain NOT_RUN by user request.

## Mathematical proof and all-rate scope

Fix a finite excluded additive-gap set A and horizon T>=0. Select integers

    I_A(T)={n in endpointIndex(T) : Squarefree n, 2∤n,
       2n in endpointIndex(T), n∉A}.

As 2 and odd n are coprime, the actual Möbius source obeys mu(2n)=-mu(n), including composite odd squarefree n. Moreover mu(n)^2=1 on positive squarefree n. The literal kernel K_T(n,2n) is nonnegative because r_n(u),r_2n(u)>=0 on [0,T]. Symmetry preserves both orientations. Therefore

    N_A(T)=sum_(n in I_A(T))[
      mu(n)mu(2n)K_T(n,2n)
      +mu(2n)mu(n)K_T(2n,n)]
           =-2 sum_(n in I_A(T)) K_T(n,2n) <=0.

The bound is uniform in T and every epsilon>0 with C_epsilon=0 and R_epsilon=0. For T>log 6, n=3 has strictly negative contribution. Nonprime composite n are included, e.g., n=15 with endpoints 15 and 30 whenever T>log30.

The ordered pairs are disjoint: the odd member n is uniquely determined. The reverse ordered pair is counted once within that same n, and no selected pair is a diagonal pair. In the fixed dyadic sparse gap set A(T)={2^j:0<=j<=floor(max(T,0))}, n>1 odd is never a power of two. The only odd power of two is n=1, which the schedule excludes. Thus every supported odd squarefree n>1 belongs to the dense complement.

## Exact remaining packet without hidden arithmetic assumptions

The prior source gives the signed dense complement C_A(T) for all original ordered pairs outside A. The new unconditional definition is

    R_A(T) := C_A(T) - N_A(T).

Consequently C_A=N_A+R_A exactly; every unestimated pair remains inside R_A. Combined with the original quarter-unit source comparison,

    endpointSum(T) <= |endpointGapSetCross A T|+R_A(T)+1/4.

The source also explicitly defines the intended finite pairwise remainder over all original squarefree endpoints with m!=n, gap outside A, and NOT belonging to an oriented selected doubling edge. The exact identity between that filtered pairwise sum and R_A is named `ExactSquarefreePairPartition`, an **open Prop** awaiting a Lean `Finset.sum_bij` and filtering proof. The conditional theorem `completeRemainder_eq_squarefreePairSum` does not hide this premise. No kernel-verified filtered-pair identity is claimed.

The full original diagonal is unchanged and nonnegative; none of its terms are moved to the selected off-diagonal packet. Any other pairs, including pairs with squareful endpoints, remain in the exact difference representation (the latter contribute zero from the earlier source). The dyadic sparse-sector allowance and the exact +1/4 error retain their previous scopes.

## Source and verification

- New Lean: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusOddSquarefreeDoublingPacket.lean`
- Direct predecessor: `MoebiusOddPrimeDoublingNegativePacket.lean`, observed blob `91d0214086391a936bb7a508fe0f7a730ffd3198`.
- Original squarefree dense support: `MoebiusDenseSquarefulZeroPacket.lean`, blob `94e2e276ca071b5965d10e34476ccfda4e4c2180`.
- Original signed complement/dyadic schedule: `MoebiusDenseSignedGapComplementFrontier.lean`, blob `61d626c267fa11f1b6e53a9837076cc4c6e039a0`.
- Original Möbius coprime sign: `MoebiusEndpointLeastPrimeTypeII.moebiusReal_prime_mul_of_not_dvd`.

The result genuinely extends the sign-controlled nonzero packet beyond prime indices, but does **not** bound its remaining dense signed complement, yield RH-strength all-positive-rate control, or prove RH.

**Next exact formalization frontier:** discharge `ExactSquarefreePairPartition` via source-level finite-bijection proof, without rewriting source coefficients or changing the density schedule. **Next arithmetic frontier:** seek a new signed estimate for a disjoint additional family of nonzero squarefree pairs while retaining every other pair.
