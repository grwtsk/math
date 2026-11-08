# Exact quadratic Putnam gap transfer and subexponentially sparse families

**Attribution:** grwtsk contributors. **Date:** October 31, 2026.
**Disposition:** proved mathematical implication conditional on the *source-exact* diagonal allowance, and Lean source-proof candidates; no dense-core signed arithmetic gain, no RH proof. Compilation, expected-interface tests, fresh kernel replay and transitive axiom audit are deferred by the user and remain NOT_RUN.

**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointSparseGapAllRate.lean`.
**Direct predecessor:** `MoebiusEndpointGramYoungClosure.lean` blob `958d4f5a42f318ab5822cc873433590ee5e6e02c`; original consumer `MoebiusEndpointPutnamEnergyCounting.lean` blob `e04dc68d2ca268d88d43725d0963c5414d216c6d`.

## 1. Qualify the diagonal premise without upgrading its evidence

The exact predecessor source establishes mathematically, as a Lean script pending acceptance,

    |endpointGapSetCross A T| <= 2 * (#A) * pickupDiagonal T,

for every finite A and T>=0. The original `MertensPrimitive.cross_poly_iff_energy_poly` source itself consumes, as explicit `hdiagonal`, the numerical comparison

    forall T>=0, pickupDiagonal(T) <= 2*T^2.

This inspection does **not** establish that a separate accepted Lean theorem has proved that exact numerical bound. To avoid silently importing an unverified statement, the new source defines `OriginalDiagonalQuadraticUpper` and proves the existing `PutnamGapQuadraticBound` from this precise premise.

When both inputs are available,

    |endpointGapSetCross A T| <= 4*(#A)*T^2.         (Q1)

The coefficient 4 is the product of the degree-times-diagonal factor 2 and diagonal quadratic factor 2. Both orientations of every ordered signed pair remain in `endpointGapSetCross`. The zero Möbius coefficients of squareful integers remain in the original diagonal; no arithmetic or Gram source is changed. The theorem gives the original implication-form `PutnamGapQuadraticBound`; it does NOT assert the diagonal premise has been discharged.

## 2. Characterize a family of arbitrarily scattered admissible gaps

Let A be a predetermined map from physical time T to a finite set A(T) of natural additive distances. Define the all-positive-rate **cardinality** property by the exact quantifiers:

    forall delta>0, exists C_delta,R_delta >=0,
      forall T >= R_delta,
         #A(T) <= C_delta exp(delta*T).              (Q2)

No interval containment, maximum-gap restriction, monotonicity, or contiguity is needed. Rates may depend on delta, but the definition of A is fixed before delta is selected. Empty sets, finitely many gaps at arbitrarily large distances, and sparse moving families satisfy Q2 provided the cardinality criterion is proved.

Given the precise quadratic allowance (Q1), choose delta=epsilon/2. The elementary exponential inequality gives for all epsilon>0 and T>=0,

    T^2 <= (16/epsilon^2)*exp((epsilon/2)*T). (Q3)

One proof sets x=epsilon*T/4>=0; x <= exp(x), so x² <= exp(2x), and divides by epsilon²>0.

Combining Q1–Q3 yields the explicit eventual bound

    |endpointGapSetCross(A(T),T)|
       <= (64 C_(epsilon/2)/epsilon²)*exp(epsilon*T).

All constants are independent of T. This is a sufficient characterization, not a necessary one: an exponentially large cardinality could still yield source-specific signed cancellation. The current Lean candidate `sparse_family_endpoint_allRate` carries `QuadraticExponentialAbsorption` as an explicit elementary analytical premise; its direct Lean discharge is a further formalization step, not a research arithmetic assumption.

## 3. Preserve the exact signed complement

Define

    signedGapComplement(A,T)
       := pickupCross(T)-endpointGapSetCross(A,T).

Then the exact original ordered source satisfies

    pickupCross(T)
       = endpointGapSetCross(A,T)+signedGapComplement(A,T).

Combining the original endpoint quadrature error with the sparse bound gives

    endpointSum(T)
      <= |endpointGapSetCross(A,T)|
         + signedGapComplement(A,T)+1/4.

The complement remains SIGNED, includes all ordered pair orientations not accounted for in the selected gap set, and is not replaced by a supremum, per-gap absolute value, truncated arithmetic inventory, or independent-sign model. In particular Q2 only controls the selected sparse sector. The dense middle-gap signed packet remains the essential missing arithmetic supplier.

## 4. Boundary and hostile checks

If A(T)=empty, the sparse packet vanishes, and the complement is exactly pickupCross. If 0 belongs to A(T), the condition m!=n prevents it from selecting any off-diagonal pair. If a selected distance exceeds the maximum possible distance inside the original endpoint inventory, it adds no packet terms, yet still counts conservatively toward #A. Source cardinality is therefore a sufficient budget, not an exact edge count.

A complete dense positive Gram fixture saturates degree-times-energy accounting at exponentially many admissible gaps. This rules out deducing the entire endpoint all-rate estimate from Q2 unless the complement receives a genuinely independent signed bound. This fixture is a method countermodel, not a counterexample to actual Möbius or Liouville.

## 5. Verification and exact next proof

The source introduces `OriginalDiagonalQuadraticUpper`, `putnamGapQuadraticBound_of_diagonal`, `SubexponentialGapCardinality`, `QuadraticExponentialAbsorption`, `sparse_family_endpoint_allRate`, `signedGapComplement`, `pickupCross_eq_sparse_add_signedComplement`, and `endpointSum_le_sparse_and_signedComplement`.

No native Lean compilation, fresh kernel checking, type execution or transitive axiom audit was run. The previous user deferral is preserved. Publication and finite source inspection do not establish proof acceptance.

**Single next bounded mathematical obligation:** produce an independent actual-source signed estimate for the dense `signedGapComplement` on a specified admissible sparse-family schedule, with all-positive-rate uniformity and the exact quarter-unit endpoint error. Formal qualification of the existing diagonal and elementary exponential-absorption interfaces remains a separate verification/formalization task.
