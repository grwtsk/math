# BSD: the genuine Heegner height-to-central-jet morphism in analytic rank one and its full-rank obstruction

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01.
Mathematical status: **THEOREM IN THE CLASSICAL ANALYTIC-RANK-ONE REGIME** (conditional only on selecting a valid Heegner field/twist and using the cited established Gross--Zagier/Kolyvagin theorems); full BSD-I/II **OPEN**. 
Lean status: isolated linear-algebra SOURCE_PROOF_CANDIDATE; compilation NOT_RUN; fresh kernel NOT_RUN; transitive axiom audit NOT_RUN. There is NO Lean theorem importing the actual Gross--Zagier/Kolyvagin proofs or constructing the complete genuine analytic and arithmetic carriers in the current repository.

## 1. Actual arithmetic and analytic objects

Let E/Q be a nonsingular modular elliptic curve, with N its conductor and
    Lambda_E := E(Q) / E(Q)_tors,
    H_E := Lambda_E tensor_Z R.
Mordell--Weil's theorem supplies the actual finite-rank integral lattice Lambda_E; canonical-height/Neron--Tate theory supplies the real positive definite pairing
    B_E(x,y) = (hat h(x+y)-hat h(x)-hat h(y))/2
and hat h(x)=B_E(x,x). Fix the height NORMALIZATION throughout (a different convention rescales the regulator by a power of 2; see Tau Ceti versus Formal Conjectures).

By modularity the actual Hasse--Weil L(E,s) is entire and not identically zero. Let O_1 be the local ring of holomorphic germs at s=1. If L(E,1)=0, the quotient
    J_E := O_1 / (L(E,s))
is an actual complex vector space of dimension ord_(s=1)L(E,s). Evaluation at s=1 is well-defined and nonzero on J_E:
    lambda_E([f]) := f(1).
For any chosen non-torsion point Q in E(Q), define the source arithmetic map
    Phi_(E,Q) : H_E tensor_R C -> J_E^vee,
    Phi_(E,Q)(x)([f]) = B_E(x,[Q]) f(1).
This is a genuine linear map with a truly arithmetic coefficient and an analytic quotient target; its definition does NOT assume equality of the dimensions or construct rank by assigning spectral multiplicity. It depends on the selected genuine Q. For order >=1 it has image C lambda_E and rank one. For order >1 it cannot surject onto J_E^vee. No Connes spectral self-adjointness or canonical target norm is deduced from this definition.

For Jiang--Luo's finite genuinely normalized automorphic test family h_j(s), sum_j h_j(s)=1 (obtained in the literature from Godement--Jacquet factorization), the same map admits the exact observation formula:
    Phi_(E,Q)(x)([f])
      = B_E(x,Q) sum_j [f h_j](1).
This uses only the genuine normalizer; no arbitrary all-germs Mellin test family is needed. The formal coefficient identity is constructed separately in ConnesFiniteNormalizedJetReturn.lean; importing the literal pi_E global factors and analytic quotient into Lean is NOT completed.

## 2. Full-rank original-height comparison and obstruction

Put h_Q=B_E(Q,Q)>0, p_Q(x)=B_E(x,Q)/h_Q * Q, and e_Q(x)=x-p_Q(x). Endow the one-dimensional observed target C lambda_E (NOT all of J_E^vee when analytic order>1) with squared norm ||lambda_E||^2=1/h_Q. For real x,y:
    B_E(x,y) =
      B_E(x,Q) B_E(y,Q)/h_Q + B_E(e_Q(x),e_Q(y)).
Proof: B_E(e_Q(x),Q)=0 follows by expansion; expand x=p_Q(x)+e_Q(x) and similarly for y and use the orthogonality. In particular the signed Gram return is exact and the second term is positive semidefinite on the diagonal.

For ANY integral Mordell--Weil basis P_1,...,P_r let G_(ij)=B_E(P_i,P_j), v_i=B_E(P_i,Q) and R_(ij)=B_E(e_Q(P_i),e_Q(P_j)). Then 
    G = (v v^T)/h_Q + R,
    Reg(E) = det((v v^T)/h_Q + R).
One may NOT replace this determinant with det(vv^T/h_Q): for r>=2 the observed matrix has rank <=1 and determinant zero, while the source height regulator is strictly positive.

The precise arbitrary-rank integral factorization: let Q=m q with q a primitive element of the saturation of Z Q in the lattice Lambda_E, and m a NONZERO integer (unique up to sign after choosing q). Extend q to an INTEGRAL basis q,P_2,...,P_r of Lambda_E. The original Gram in this unimodular basis is the block matrix [[a,b^T],[b,C]], where a=B_E(q,q)=h_Q/m^2. Its Schur complement is
    C_perp = C - (b b^T)/a,
the original-height Gram of the vectors P_i - (B_E(P_i,q)/a) q for i>=2. The determinant formula gives
    Reg(E) = (h_Q/m^2) det(C_perp).
For r=1 use the empty determinant convention det(C_perp)=1. This theorem is purely integral-lattice height geometry and holds without assuming ANY analytic rank equality. The orthogonal factor is not automatically one and must not be discarded in higher rank.

Hostile test: the abstract height lattice R^2 with integral Gram diag(1,1) and Q=(1,0) has source regulator 1, rank-one observed Gram diag(1,0) with determinant 0, and nonzero orthogonal residual diag(0,1). All source terms are reconstructed only by their sum. This prohibits a positive Gram/compressed-spectrum substitution from claiming BSD.

## 3. Source-preserving analytic rank-one theorem

Assume:
  (a) L(E,1)=0 and L'(E,1)!=0 (analytic rank exactly one; NO algebraic rank hypothesis);
  (b) K=Q(sqrt D) is an imaginary quadratic field satisfying the genuine Heegner hypothesis for E, with conductor/primes and modular parametrization fixed, and the genuine twist L(E^D,1)!=0;
  (c) the classical Gross--Zagier theorem with its ACTUAL positive normalization c_(E,K)>0, defined by
      L'(E/K,1)=c_(E,K)*hat h_K(P_K),
      P_K = trace_(H_K/K)(phi_E(x_K)-phi_E(infinity)) in E(K);
  (d) the actual Kolyvagin/analytic-rank-zero theorems, NOT assumptions about BSD-I, are available as established external results.

Argument:
  1. The authentic base-change identity L(E/K,s)=L(E,s)L(E^D,s) gives L'(E/K,1)=L'(E,1)L(E^D,1), which is nonzero under (a),(b).
  2. Gross--Zagier forces hat h(P_K)>0, hence P_K is nontorsion.
  3. Kolyvagin's theorem deduces rank E(K)=1 and finiteness of Sha(E/K) from the genuine non-torsion Heegner point. Analytic-rank-zero theory for E^D yields rank E^D(Q)=0. The actual plus/minus Galois decomposition E(K) tensor R ~= (E(Q) tensor R) direct_sum (E^D(Q) tensor R) then implies rank E(Q)=1. NONE of these ranks was assumed at the start.
  4. Let sigma be the nontrivial automorphism of K/Q. Since the minus eigenspace has rank zero, sigma P_K=P_K modulo torsion; hence Q=trace_(K/Q) P_K=P_K+sigma P_K=2P_K in the real Mordell--Weil vector space. Since absolute canonical height is base-field invariant, hat h(Q)=4 hat h_K(P_K).
  5. Therefore the exact arithmetic--analytic height identity is
      hat h(Q) = [4 L(E^D,1)/c_(E,K)] L'(E,1).
     This constant is NOT a chosen norm or invented spectral multiplicity; it is fixed by Gross--Zagier's explicit period/Manin normalization and the actual nonzero twist value.
  6. Because the analytic central zero is simple, J_E=O_1/(L) is canonically 1-dimensional, and lambda_E is a basis of its complex dual. Because rank E(Q)=1 was DERIVED by Kolyvagin, H_E tensor C is 1-dimensional. Phi_(E,Q) is nonzero, hence is an isomorphism. Its pulled-back Hermitian product under ||lambda_E||^2=1/hat h(Q) equals B_E (complexified) because every source vector is parallel to Q. This metric is *defined* through the Gross--Zagier constant and does NOT claim an independently constructed canonical norm of the Connes adelic spectral operator.
  7. Let G generate the true integral Mordell--Weil free lattice Lambda_E and Q=m G modulo torsion, m !=0. The index [Lambda_E:ZQ] is |m|, and hat h(Q)=m^2 B_E(G,G). By definition Reg(E)=B_E(G,G) in rank 1. Therefore the exact SOURCE arithmetic regulator is
      Reg(E) = 4 L(E^D,1)L'(E,1) / (c_(E,K) m^2).
     No rank equality premise was introduced and the integrality index, not an orthonormalized auxiliary determinant, survives.

This is a noncircular, CLASSICALLY KNOWN rank-one consequence of Gross--Zagier and Kolyvagin, packaged as a concrete morphism into the genuine analytic central jet dual. It is not a novel general BSD proof. It is also not the full rank-one leading coefficient BSD-II identity: a further proof comparing the index m^2 and the explicit period, torsion, Tamagawa factors and size of finite Sha must be supplied. Kolyvagin's rank-one Sha finiteness is not its full order formula.

## 4. Why the same construction fails in analytic rank >=2

Suppose L(E,1)=L'(E,1)=0 and K satisfies the same Heegner hypothesis with L(E^D,1)!=0. Then L'(E/K,1)=0. Gross--Zagier implies hat h(P_K)=0, so P_K is torsion and its rational trace Q is torsion. Consequently [Q]=0 in H_E and Phi_(E,Q)=0. A first-derivative Heegner point cannot by itself create a higher-rank regulator or the higher-order analytic central jet. The problem requires genuine higher-derived Selmer / cycle-class / height pairings and a proven determinant-line comparison. None of that is constructed by choosing arbitrary vectors or formal positive Gram matrices.

For analytic rank zero, J_E=0 because L(E,1) is a unit, and the known rank-zero Gross--Zagier/Kolyvagin regime gives H_E=0 and the regulator convention 1; the above nonzero-Q construction is intentionally not applicable.

## 5. Lean and repository source boundaries

Finite Hilbert-space algebra source candidate:
  GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HeegnerHeightJetProjection.lean
  blob e0edbdb15dce026fa607a76aaeb15f4e7bc8d78a
  namespace GRWTSK.Analysis.InnerProductSpace.HeegnerHeightJetProjection.
Proposed declarations: sourceObservation, projectionCoefficient, projectedVector, residualVector, observedPairing, residualPairing, source_pairing_eq_observed_add_residual, residual_orthogonal_to_source, source_norm_defect_nonneg, originalGram, observedGram, residualGram, originalGram_eq_observed_add_residual, original_regulator_det_exact, index_square_height, index_square_regulator, rank_one_regulator_of_gross_zagier, hostileOriginal, hostileObserved, hostileResidual, hostile_original_reconstructs, hostile_regulator_lost_by_compression. These proofs operate on an ACTUAL Mathlib real inner-product space, not a fabricated BSD analytic space; no \`sorry\` or newly declared \`axiom\` is introduced.

The true Neron--Tate specialization is not compiled in grwtsk/math: existing Regulator.lean and MordellWeil.lean are certificate-based interfaces, not the canonical-height construction. Compare actual upstream Tau Ceti CanonicalHeight/Basic and FormalConjecturesForMathlib EllipticCurve/Regulator. Their height normalizations differ by a factor of two over Q, so any import requires explicit source/model/version match. Tau Ceti's actual canonical height and pairing APIs MUST be checked against Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 before claiming an arithmetic Lean theorem. The actual full analytic local germ O_1/(L), modular Heegner trace, Gross--Zagier formula, Kolyvagin source and Connes operator/root-space are likewise absent from this Lean proof cone. Their omission is NOT patched by assumed equivalence axioms.

Independent hostile controls: the R^2 exact Gram example above, and the root-space Jordan counterexample retained in ConnesCentralRootSpaceObstruction.lean. No independent second Gross--Zagier proof is claimed. Analytic comparison is a mathematically established cited theorem; local Lean algebra is only a SOURCE_PROOF_CANDIDATE, NOT_RUN for parsing, compilation, kernel, and transitive axiom audit. No root GRWTSK umbrella import or dependency pin changes. No CI/runners/verification were invoked.

Exact literature:
- Benedict H. Gross and Don B. Zagier, *Heegner points and derivatives of L-series*, Invent. Math. 84 (1986), 225--320, DOI 10.1007/BF01388809, especially chapter V section 2 for the base-change height/leading coefficient.
- Henri Darmon, *Rational points on modular elliptic curves*, chapter 3, Theorems 3.20--3.22: Gross--Zagier height relation, Kolyvagin rank-one and Sha-finiteness, and BSD-I for analytic order <=1. https://www.math.mcgill.ca/darmon/pub/Articles/Research/36.NSF-CBMS/chapter.pdf .
- Chao Li, *Recent developments on quadratic twists of elliptic curves*, 2018, section 6.2, https://www.math.columbia.edu/~chaoli/Survey.pdf .
- Joseph H. Silverman, *The Arithmetic of Elliptic Curves*, 2nd ed., Springer GTM 106 (2009), chapter VIII section 9, DOI 10.1007/978-0-387-09494-6.
- Tau Ceti project, *CanonicalHeight/Basic*, https://taucetiproject.org/docs/TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.html .
- FormalConjecturesForMathlib, *EllipticCurve/Regulator*, https://google-deepmind.github.io/formal-conjectures/src/FormalConjecturesForMathlib/AlgebraicGeometry/EllipticCurve/Regulator/ .
- Alain Connes (1999), Anton Deitmar (1999), and Jiang--Luo (2023), as sourced in the preceding BSD Connes reviews. Their Hilbert spectral result does not alone construct an arithmetic point-to-jet isomorphism.

Final disposition: the actual arithmetic-to-analytic rank-one morphism is given and its complete source-regulator formula proved from established deep theorems, while the arbitrary-rank height/Gram residual is exactly accounted for. A higher-rank BSD morphism and BSD-II remain open.
