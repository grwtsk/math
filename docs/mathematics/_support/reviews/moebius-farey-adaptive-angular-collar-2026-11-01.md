# Adaptive Farey–Fáry–Putnam–Kakeya angular collars with saturated physical overlap

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Disposition: finite analytical proof of explicitly stated algebraic and physical-geometric estimates; new Lean source proof candidates, NOT compiled, NOT kernel checked, NOT transitive-axiom audited. No Millennium-problem claim.

## Current research baseline and new source identities

The research builds on actual existing:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean: genuine ordered signed Möbius pickupCross, original endpointIndex, response Gram, and complete selected additive-gap packet endpointGapSetCross A T.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSparseGapYoung.lean and MoebiusEndpointPutnamSparseGapAllRate.lean: literal integrated Young inequality and the explicit all-positive-rate bound on the selected small additive-gap sector; **not** on the dense long-gap remainder.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFareyFaryKakeyaIncidence.lean (blob 5e55acad7ac04a4250aeecbac59447ce5e54a843): source-exact signed incidence and original genuine Euclidean tube family indexed by endpoint integers, with every original source sign, support and ordered pair orientation retained.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaRoutedBudget.lean (blob 3aa811df6e7eb23fd4d2db0200a40c421d841781): full signed remainder after disjoint Putnam and original physical-overlap packets.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaProjectiveGeometry.lean (blob 600f8ba75b93a928e8b62828a64393269dcebf5a): existing global-projectively-separated family special case, with nonsharp genuine Euclidean intersection-ball volume.
- The original GRWTSK/Combinatorics/GraphTheory/FiniteStraightTubeProjectivePhysicalPair.lean and GRWTSK/MeasureAndIntegration/FiniteProjectiveTubeBallVolume.lean; their ambient dimension and actual projective-unoriented distance definitions are reused without alteration.

New candidates, with complete source blobs staged then published:
- GRWTSK/Combinatorics/GraphTheory/FiniteStraightTubeAngularCollar.lean — blob 67f5ee56c800996e1e18e33a82470debd9fac343.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaAngularCollar.lean — blob 048160c05362887f13a9a1560283a3139cba068a.
- GRWTSK/NumberTheory/FareyProjectiveChordBudget.lean — blob 164c2fd9bbc29ff311aefde73c96e48f69ef2dd5.

The root toolchain is Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. This is a source-only publication; no root imports or dependency versions are changed.

## A. Strictly stronger projective-geometry estimate: saturation by true shading volume

For finite actual straight-tube/shading family F in Euclidean ambient dimension d>=1, let U_i be its original selected shading and T_i the original cylinder of radius r_i and axis direction omega_i. The unoriented projective chord gap is

  g_ij = min(||omega_i - omega_j||, ||omega_i + omega_j||).

This is symmetric: the second term is the norm of omega_i+omega_j, invariant under reversal. In particular opposite directions have g_ij=0, not 2.

For any ONE pair with g_ij>=sigma>0, the previous genuine tube theorem gives

  U_i ∩ U_j ⊆ Ball(x0, 4(r_i+r_j)/sigma)

when a physical common shading point x0 exists. If the shading intersection is empty its real measure is zero. Translation invariance of actual Euclidean Lebesgue ball volume removes dependence on the particular common point.

Two other original set inclusions always hold: U_i ∩ U_j⊆U_i and ⊆U_j. Therefore, under stated finite real-volume conditions,

  vol_d(U_i∩U_j) <= C_ij(sigma)
     := min(vol_d(U_i),
            vol_d(U_j),
            vol_d(Ball(center(T_i),4(r_i+r_j)/sigma))).

Unlike the previous bare ball cap, this bound is ALWAYS <= each actual shading volume. At sigma becoming tiny the geometric upper price saturates instead of spuriously growing as sigma^(-d). It still is not Kakeya-sharp: near-parallel interactions may occupy a large fraction of a shading.

This proof is a *direct combination* of two source-set inclusions, the existing actual projective pair-ball theorem, and finite Lebesgue measure monotonicity. It does not require global angular separation of the entire family.

## B. Adaptive source-specific angular collar

Fix the unchanged original endpoint horizon T>=0. Let A be the additive distances already assigned to the existing Putnam sparse-gap packet, let sigma>0 be any projective separation scale and eta>0 any real physical shading-overlap threshold. For source indices m,n define

  b_mn = vol_d(U_m∩U_n) >= 0,
  g_mn = projectiveDirectionGap(omega_m,omega_n),

with both values zero outside original endpointIndex T.

Define the **angular-far measured source mass**

  B^far_mn(A,sigma) =
     b_mn, if |m-n| notin A and g_mn>=sigma;
     0, otherwise.

This is symmetric, and every A-gap pair has B^far_mn=0<eta. An angular-near pair (g_mn<sigma) also has B^far_mn=0<eta. Thus the second signed packet consists *only* of original ordered Möbius pairs whose physical geometry is genuinely transverse and whose measured overlap is at least eta:

  X_angle = sum_{m!=n, B^far_mn>=eta} mu(m)mu(n)K_T(m,n).

No source coefficients are replaced by the nonnegative geometric weights. Both original pair orientations and the original diagonal-subtracted structure remain.

The same genuine two-vector integrated Young inequality as the Putnam source gives

  |X_angle| <= Q_phys
    = eta^(-1) sum_m d_m sum_{n!=m} B^far_mn.

The new saturated physical cap supplies

  Q_phys <= Q_sat
    = eta^(-1) sum_m d_m
       sum_{n!=m, |m-n| notin A, g_mn>=sigma} C_mn(sigma).

Here d_m=mu(m)^2 K_T(m,m)>=0 is the same original source diagonal energy; it is NOT the positive geometry Family.weight. The budget is fully source-indexed, includes source multiplicities and remains nonnegative.

The complete arithmetic source is EXACTLY:

  pickupCross(T)
    = endpointGapSetCross(A,T)
      + X_angle(A,F,sigma,eta,T)
      + R_signed(A,F,sigma,eta,T),

where R_signed is the literal original pickupCross minus both explicitly selected original arithmetic packets. It retains all unselected long-gap pairs, including g_mn<sigma, b_mn<eta, zero-shading pairs, and those without a favorable tube assignment. The absence of an explicit expanded relation/filter expression for R_signed remains a verification target, not an assertion that the complement is small.

By the previously written |endpointSum(T)-pickupCross(T)|<=1/4 and the actual Putnam absolute bound, the new terminal comparison is

  endpointSum(T) <= 4 |A| T^2 + Q_sat + R_signed + 1/4.   (A)

If A=A_epsilon(T) is the previously defined Putnam distance set, then for each epsilon>0 and T>=0 the already existing theorem supplies

  endpointSum(T) <= (32/epsilon^2) exp(epsilon T)
                    + Q_sat(A_epsilon,F,sigma,eta,T)
                    + R_signed(A_epsilon,F,sigma,eta,T)
                    + 1/4.                               (B)

This is **strictly more applicable** than the previous global-ProjectivelySeparated family theorem: any arbitrarily clustered finite family is admitted, because the near-angular pairs remain in the exact signed complement. The bound is not necessarily numerically better on the total original source, as the remainder may be large.

## C. Farey determinant: an explicit projective chord constraint

For planar vectors u=(x,y), v=(z,w) with ||u||^2=x^2+y^2=1, the two Lagrange identities

  ||v-u||^2 = det(u,v)^2 + (u·(v-u))^2,
  ||v+u||^2 = det(u,v)^2 + (u·(v+u))^2

hold (the unit-norm normalization is used). Consequently

  det(u,v)^2 <= min(||u-v||^2,||u+v||^2).

For Farey adjacent raw coordinate vectors (a,b),(c,d) with ad-bc=+1 and positive norm lengths L=sqrt(a^2+b^2), M=sqrt(c^2+d^2), their normalized determinant is 1/(LM), and the squared projective chord satisfies

  g^2 >= 1/(L^2 M^2).

If the raw squared lengths are each <=2Q^2, this yields the exact **height-dependent** cost

  g^2 >= 1/(4Q^4), hence g >= 1/(2Q^2).

The new Lean candidate proves the **squared** versions with exact positive length and squared-norm hypotheses; no analytic approximation of trigonometric angles is involved. Determinant -1 satisfies the same squared estimate after a source orientation swap; the signed version +1 is the formalized theorem here.

This is the genuine mathematical point of contact between Farey arithmetic and projective tube geometry. The present module deliberately does not construct the actual mapping from its scalar normalized direction coordinates to the current source-labelled EuclideanSpace (Fin 2) / Fary planar edge Family. That typed embedding and source-label identity remain an open **realization adapter**, not an automatic inference from the determinant.

## D. Fáry and Kakeya scope

Fáry's theorem ensures a planar straight-line drawing for finite simple planar graphs; it does NOT supply a uniform minimum angular gap, uniformly bounded graph valence, a noncrossing condition for positive-radius thickened tubes, or a source-preserving arithmetic label map. A planar star with arbitrarily many edges demonstrates why a Fáry realization can still have severe local tube congestion near the common vertex.

Farey unimodular spokes likewise have unbounded valence if unrestricted (the prior source proves det((0,1),(1,n+1))=-1). The new Farey height estimate says each *distinct primitive determinant-one pair* at height Q has angular separation of order at least Q^-2; it does NOT convert that into a uniform gap for the exponentially growing original Möbius inventory, since Q and angular cells grow with the source. In fact the projective angular collar correctly keeps crowded near-angular pairs in R_signed.

The Hong Wang–Joshua Zahl 2025 R^3 Kakeya theorem and related 2026 streamlined results are background, not source-imported row bounds. Their actual hypotheses, dimension and union-volume conclusions cannot be replaced by pointwise weighted row-mass statements or transferred to arbitrary d. Our cap is elementary, true physical geometry but nonsharp.

## E. Independent mathematical hostile checks and finite diagnostics

1. **Unchanged signed source.** The arithmetic kernel is always the original moebiusReal(m)*moebiusReal(n)*pickupResponseGram(T,m,n); signs, birth supports and both ordered orientations remain.
2. **No double payment.** If Nat.dist m n∈A and eta>0, B^far_mn=0 and the geometric selected relation is false.
3. **Antipodal rejection.** True projective gap of opposite directions is 0, so any sigma>0 excludes them from geometric selection and retains them in R_signed.
4. **Empty shading.** Empty U_m gives b_mn=0; the geometric packet cannot replace the original still-unbounded signed arithmetic sector.
5. **Near-angular flooding.** Arbitrarily many original indices may share (or nearly share) projective direction. This invalidates global positive sigma separation but is allowed by the new sector partition; its full arithmetic cost remains unbounded.
6. **Sigma shrink saturation.** The nonsharp ball cap may grow like sigma^-d, but C_mn never exceeds either finite shading volume.
7. **Dense positive signed countermodel.** A nonnegative constant Gram on an all-to-all graph can saturate weighted Young/degree counting. Merely relabeling all pairs with tubes does not prove arithmetic cancellation.
8. **No fake transferred theorem.** The Farey scalar 2-vector normalized chord inequality is not asserted to be an actual EuclideanSpace (Fin 2) tube direction identity before the explicit realization map is constructed.

Independent standard-library Python fractions.Fraction diagnostic, deterministic seed 20261102: 1,800 finite signed/physical-mass/angle/gap cases, plus 13,918 exact Farey determinant-one bounded-height pairs, 89,286 exact rational assertions PASS. It validates finite bookkeeping and rational determinant-to-normalization inequalities only. It does not measure true geometric tube intersection volumes, compile Lean, or prove an infinite arithmetic bound.

## F. Acceptance and next mathematical frontier

- Written new Lean proofs: source candidates only.
- Exact pinned source blobs listed above; actual full commit pin to be recorded after safe publication.
- Lean parsing/elaboration: NOT_RUN; Lake compilation: NOT_RUN; expected types: NOT_RUN; fresh kernel replay: NOT_RUN; transitive axiom/sorry/unsafe audit: NOT_RUN.
- No root import, Mathlib version, existing source or historical receipt changed.
- **Next noncircular suppliers:** construct original endpoint-index-to-Euclidean direction/center/radius maps with exact independent source labels; prove a Farey/Fary realization adapter preserving the scalar projective gap; control near-projective/weak-overlap signed *arithmetic* sectors at all positive rates on one fixed affinely frequent scale set; or derive a sharper source-dependent analytic overlap cancellation estimate. Only with those additional theorems can a selected source be carried to the canonical RH good-scale return. No Navier–Stokes, Hodge, BSD, Yang–Mills, Kakeya conjecture or RH result is claimed.
