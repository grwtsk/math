# Exact Möbius endpoint comparison through certified elliptic prime fibers

Local attribution: grwtsk contributors. Date: 2026-11-01.
Status: complete elementary finite mathematics; Lean source proof candidates; exact finite diagnostics; RH/BSD arithmetic suppliers OPEN.

## Abstract

The original Möbius endpoint is the literal, complete signed ordered cross-energy

  X_mu(T) = sum_(1<=m,n<=floor(exp T),m!=n)
      mu(m)*mu(n)*pickupResponseGram T m n.

This development constructs an actual partial routing of the integer occurrences into a finite bank of good-prime elliptic fibers. Each channel inherits the same genuine integral Weierstrass model, real nonzero discriminant certificate, exact finite-field group order, selected prime p, p-free cofactor residue and genuine p-adic exponent. The prime is selected by the EXACT existing firstSelectedDivisor rather than by a fitted phase label. Unmatched integers receive none, not an invented elliptic observation.

The existing source theorem pickupCross_eq_firstTag_sectors already splits the literal complete source into unmatched/unmatched (rough), both unmatched/matched orders (mixed), and matched/matched (Type II). On matched ordered pairs we use the certified Frobenius trace product and charge the exact original-minus-elliptic signed kernel defect. The entire decomposition, endpoint correction and original source identifiers remain visible. A separate rank-one finite counting theorem reduces the complete matched trace packet to the square of its trace sum minus its original diagonal.

## 1. Source objects and actual arithmetic selection

The unchanged endpoint index set is I_T = Finset.Icc 1 (floor(exp T)).
The source kernels are the original GRWTSK.RiemannHypothesis.CCC.moebiusReal and pickupResponseGram, not modified copies. The existing endpoint function is pickupCross; it is not redefined.

For W : WeierstrassCurve Z, GoodPrimeBank W consists of a bounded finite set of proven PrimeIndex values and a GoodPointCountCertificate at every listed prime. The certificate carries an actual model equal to W, a prime proof, a nonzero discriminant modulo that prime, and an exact integralModelCount equality. No arbitrary trace value is a field of this bank.

Let P be the bank's finite natural-prime support. Define tag(m)=firstSelectedDivisor P m. The source definition is:

  tag(m) = Nat.find (exists p in P with p dividing m),
  and zero if there is no such prime.

Its source theorem firstSelectedDivisor_mem_of_ne_zero is reused. The new tag_dvd proves that a nonzero tag genuinely divides the ORIGINAL source integer m. A channel is constructed only under tag(m)!=0. Its chosen prime is the prime proof with value tag(m); its residue is (m / p^(Nat.factorization m p)) modulo p; its exponent is Nat.factorization m p; and its curve and count data are the unchanged bank certificate.

This cofactor, rather than m mod p, is necessary: every selected p divides m, so m mod p would always be zero and would erase the unit-residue distinction. A squareful m can have the same unit residue as a squarefree m, but its prime-power exponent remains a separate typed field. The theorem route_some_of_tag ensures every matched source occurrence yields a real fiber and cannot silently be mapped to the default-zero branch.

Let M_T = {m in I_T : tag(m)!=0} and U_T = {m in I_T : tag(m)=0}. New theorems prove M_T union U_T = I_T and M_T disjoint U_T. The source index m=1 is unmatched for EVERY finite good-prime bank. The empty bank is a valid hostile fixture: then all source indices remain unmatched and no elliptic observation is fabricated.

## 2. Exact full signed comparison theorem

Let K_mu(T;m,n) = moebiusReal m * moebiusReal n * pickupResponseGram T m n.
On a matched pair, define K_E(m,n) = trace(channel(m)) * trace(channel(n)), using the actual certified finite-field point counts and true prime tag.

Define four FINITE source quantities, always with both original ordered orientations and m!=n:

  R_UU(T) = sum over m,n in U_T of K_mu(T;m,n).
  R_MU(T) = sum over m in M_T,n in U_T plus
            sum over m in U_T,n in M_T of K_mu(T;m,n).
  E_P(T)  = sum over m,n in M_T of K_E(m,n).
  D_P(T)  = sum over m,n in M_T of [K_mu(T;m,n)-K_E(m,n)].

The new theorem pickupCross_eq_rough_mixed_elliptic_defect proves, for every real T and every genuine GoodPrimeBank W,

  X_mu(T) = R_UU(T) + R_MU(T) + E_P(T) + D_P(T).      (1)

The proof is exact finite algebra: apply the UNCHANGED pickupCross_eq_firstTag_sectors P T to get the original rough, mixed and Type II sums; then on each matched original ordered pair write its original Möbius kernel as the elliptic trace kernel plus the actual signed difference. Distributivity of the two original Finset sums proves the Type II equality. No discarded signed sector, new cutoff convention, Cauchy-Schwarz payment or analytic hypothesis occurs.

The true full signed residual is DEFINED, not assumed, by

  R_P(T) = R_UU(T) + R_MU(T) + D_P(T).

Thus the theorem pickupCross_eq_elliptic_add_full_residual establishes

  X_mu(T) = E_P(T) + R_P(T).                         (2)

The source's actual endpoint quadrature correction is retained with its SIGN:

  C(T) = endpointSum(T) - X_mu(T).

The exact theorem endpointSum_eq_elliptic_residual_correction gives

  endpointSum(T) = E_P(T) + R_P(T) + C(T).           (3)

For T>=0, the preexisting endpointSum_error theorem gives |C(T)|<=1/4. The new endpointSum_le_routed_complete is therefore an actual RH-facing *comparison*:

  endpointSum(T) <= E_P(T)+R_P(T)+1/4.

This is not a bound for E_P+R_P and supplies no new good-scale arithmetic premise.

## 3. Additional exact finite Putnam counting identity

Define the routed real trace t_m to be the genuine certified trace of the selected elliptic channel when tag(m)!=0, and zero otherwise. The source theorems assignedTrace_zero_of_unmatched and ellipticKernel_eq_mul_assigned prove that the elliptic pair kernel on the original integer population is t_m*t_n. The matchedEllipticPacket_eq_offdiagonal_assigned theorem justifies changing the matched index filter to all I_T by the EXACT zero of t_m at unmatched indices.

Expanding the full square and removing exactly the original diagonal proves

  E_P(T) = (sum_(m in I_T) t_m)^2 - sum_(m in I_T) (t_m)^2.    (4)

This is the source-level theorem matchedEllipticPacket_eq_square_sub_diagonal, using the independent finite identity ordered_rank_one_pair_square_sub_diagonal for arbitrary real integer-indexed weights.

The statement is elementary but useful: a fixed prime-tag family can produce an elliptic trace packet of quadratic size in the number of source integers. A positive Gram or finite prime bound cannot control the complete Möbius source while R_P retains its compensating signed contribution. It would be circular to assert that R_P is small because of this identity.

## 4. A concrete nonempty two-prime arithmetic bank

The additional module MoebiusEllipticRecordCertifiedBank.lean constructs actual GoodPointCountCertificate records for the original rank-32 *candidate* integral curve y^2+xy=x^3-Ax+B at primes 7 and 19. It reuses Record4239.goodAt7, goodAt19, pointCount7, pointCount19, recordModel_count and recordModel_discriminant. The reduction of integer discriminant nondivisibility to nonzero in ZMod uses the actual pinned Mathlib theorem ZMod.intCast_zmod_eq_zero_iff_dvd. The source values are N_7=13, N_19=27, hence traces a_7=-5, a_19=-7. Record bank primeBound=19 and prime support={7,19}. No Mordell-Weil rank is assumed or inferred.

Some exact source-tag fixtures are:

| m | first tag | exponent | unit cofactor residue |
| --- | --- | --- | --- |
| 1 | none | — | unmatched |
| 7 | 7 | 1 | 1 modulo 7 |
| 14 | 7 | 1 | 2 modulo 7 |
| 49 | 7 | 2 | 1 modulo 7 |
| 19 | 19 | 1 | 1 modulo 19 |
| 38 | 19 | 1 | 2 modulo 19 |

Hostile squareful sector: μ(49)=0, so K_mu(T;49,7)=0 for every T. Both 49 and 7 route to the 7-fiber, with trace -5. Hence K_E(49,7)=25 and its exact source-minus-target defect is -25. The reversed ordered pair contributes another -25. The formal source includes the generic sourceKernel_square_zero and the 49/7 instance. Therefore omitting D_P loses -50 on just these two original ordered pairs, even though both elliptic reduction counts are certified.

At I={1,...,49}, the matched indices are exactly 7,14,19,21,28,35,38,42,49: seven with tag 7, two with tag 19. The other forty are unmatched. Exact source occurrence counts:

| sector | ordered offdiagonal pairs |
| --- | ---: |
| matched/matched | 9*8 = 72 |
| mixed, BOTH orientations | 2*9*40 = 720 |
| unmatched/unmatched | 40*39 = 1560 |
| TOTAL original | 49*48 = 2352 |

The elliptic trace weights sum to 7*(-5)+2*(-7)=-49. Their original diagonal-square sum is 7*25+2*49=273. Hence E_P=(-49)^2-273=2128, an exact integer count. This is a finite arithmetic diagnostic for routing, pair multiplicities and trace algebra, NOT a certified quadrature, Lean kernel proof or claim that X_mu(log 49)=2128. In fact X_mu(log 49)=2128+R_P(log 49), where R_P is the actual full signed remainder.

## 5. RH consumer, required new estimate, and proof-status limits

The new source has an explicit RH-facing endpointSum inequality with the unchanged quarter-unit error. But the user-requested RH terminal continues to require an *independent* all-positive-rate upper estimate on the COMPLETE original signed quantity after all terms are formed, on controlled-cover scales. The exact required supplier must control E_P+R_P (or source-equivalent endpointSum), rather than invent an independently small R_P record. Positive elliptic trace energies, the 7/19 finite bank, density-one or number-theoretic analogies are insufficient.

The preceding Putnam endpoint source uses additive-gap and terminal-birth counts with an unresolved dense core. The least-prime bank partitions by multiplicative divisibility. Their intersection is not an identity of the corresponding source pair relations. A later theorem may exploit this intersection, but must prove the correct source-index and signed-kernel correspondence before carrying Putnam bounds across. No analytic prime-zero correspondence has been constructed: the elliptic Frobenius traces and zeta prime-power logarithmic weights belong to distinct completed L-functions.

No global BSD or RH theorem, new zero-free region or source-specific cancellation estimate is claimed. The algebraic decomposition and finite counts are complete as paper mathematics; all new Lean bodies remain SOURCE_PROOF_CANDIDATES until pinned compilation and independent kernel checking.

## 6. Original sources, new declarations and evidence facets

Original unchanged RH sources:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointLeastPrimeTypeII.lean, blob fb77710105395da0394c930ef702b893f2f2f87f;
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSignedBuchstabTypeII.lean, blob c2de5cb221f03ff5792de4d29b104912e79d4771;
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean, blob 2606536c56bdcb33d120aeddfbcbeef793e31ba1;
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean, blob e04dc68d2ca268d88d43725d0963c5414d216c6d;
- GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberCounting.lean, blob 70c96ac0ebabe429e129ea549e151e575d30593d;
- GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberPorts.lean, blob e7f5901f929bf999d15772f1b92cf3460023623d;
- GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/Record4239Curve.lean, blob 9b489d813ddf451a7c8d164ca808fb569b29b5b8.

New source modules: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticFiberKernelComparison.lean and MoebiusEllipticRecordCertifiedBank.lean. Their exact source blob hashes and mathematical dispositions are pinned separately in the static verification manifest.

New key declarations include GoodPrimeBank, tag_dvd, exists_tagged_prime, selectedPrime_val, channel, channel_within_bound, route, route_some_of_tag, route_none_iff, one_unmatched, matched_union_unmatched, matched_disjoint_unmatched, sourceKernel, ellipticKernel_of_matched, assignedTrace, ellipticKernel_eq_mul_assigned, matchedEllipticPacket_eq_square_sub_diagonal, firstTagTypeII_eq_elliptic_add_defect, pickupCross_eq_rough_mixed_elliptic_defect, fullSignedResidual, pickupCross_eq_elliptic_add_full_residual, signedEndpointCorrection, endpointSum_eq_elliptic_residual_correction, signedEndpointCorrection_abs_le, endpointSum_le_routed_complete, recordBank and record_pickupCross_exact.

Lean pin: leanprover/lean4:v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Source writing, exact arithmetic diagnostic, compilation, expected type elaboration, fresh kernel proof checking, and transitive axiom auditing are distinct evidence facets. The first two were performed at their stated scopes; compilation, kernel checking and transitive axiom auditing remain NOT_RUN. No native verifier/controller, CI bypass, force push, scheduler or foreign repository mutation was performed.

This is a faithful finite mathematical comparison built on the existing source definitions, not a new analytic estimate. The single next arithmetic problem is a noncircular signed bound for the complete original endpoint total, exploiting any proved arithmetic correlation between least-prime routing, cofactor residues and the actual Möbius Gram, while retaining the full signed defect and unassigned sectors.
