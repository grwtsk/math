# Finite normalized Connes--Jiang--Luo test families: central-jet return (2026-11-01)

Local mathematical attribution: grwtsk contributors.
Disposition: exact algebraic analytical argument plus isolated Lean SOURCE_PROOF_CANDIDATE, compilation NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN. BSD-I / BSD-II OPEN; genuine arithmetic-to-analytic map Phi_E NOT_CONSTRUCTED. No mathematical novelty is claimed for elementary formal-series algebra or for the published automorphic results.

## Source identification and precise analytical supplier

Dihua Jiang and Zhilin Luo, "Certain Fourier operators and their associated Poisson summation formulae on GL_1," *Pacific Journal of Mathematics* 326 (2023), 301--372, DOI 10.2140/pjm.2023.326.301, arXiv:2108.03566. **Theorem 8.1** (p. 366) identifies critical automorphic L-zeros with the spectral zero space with a delta-dependent multiplicity cutoff; **Lemma 8.2** (p. 367) proves density of translated theta tests; **Lemma 8.3**, proof near equations (8-20)--(8-21) on pp. 368--369, invokes Godement--Jacquet [16, Theorem 13.8] and Corollary 4.4 to choose finitely many *genuine* global (GL_1) pi-Schwartz test functions phi_j with sum_j Z(s,phi_j,chi)=L(s,pi x chi). Its converse invokes actual local Euler zeta factorization and holomorphy of quotient factors, not an arbitrary formal L-model. Upstream: Roger Godement and Herve Jacquet, *Zeta functions of simple algebras*, LNM 260, Springer (1972). The unitary automorphic center s=1/2 is elliptic center s=1 only after true modularity and the shift L(s,pi_E)=L(E,s+1/2); neither source is proved in Lean here. The references in prior reviews to theorem 8.2 as the spectral theorem have already been corrected.

The chosen finite family is supplied by a substantial existing theorem in the literature; THIS CODE DOES NOT CONSTRUCT it, does not define a Mellin transform, and does not prove any new elliptic spectral correspondence.

## Exact finite test-family algebra

Write z=s-1/2. For the GENUINE L-germ F(z)=L(1/2+z,pi), under the above external holomorphic-divisibility facts write Z_j(z)=F(z)g_j(z), with all g_j holomorphic near the center. The published identity sum_j Z_j=F and holomorphic cancellation in the integral domain of holomorphic germs imply sum_j g_j=1. The latter is the exact and explicit incoming hypothesis called FiniteTestNormalized in the isolated Lean source. No rank, chosen order of vanishing, or auxiliary positive Gram enters its definition.

For any formal source coefficient sequence f_n and the finite g_{j,n}, let
  (f*g_j)_n = sum_(k=0)^n f_k g_{j,n-k}.
The complete mixed-term statement is the **signed residual identity**
  sum_j (f*g_j)_n - f_n
     = sum_(k=0)^n f_k (sum_j g_{j,n-k} - delta_(n-k,0)).
The proof is a finite interchange of sums followed by distribution of multiplication over subtraction. It holds WITHOUT normalization. If sum_j g_j=1 coefficientwise, the right side vanishes at every order. Hence
  sum_j jet_r(f*g_j)=jet_r(f)
for every r>=0, recovering the actual source jet with neither conjectural rank nor spectral multiplicity assigned. Two different normalized test families return literally the same coefficient, so the recovery is independent of test presentation.

The all-test hypothesis in the earlier ConnesCentralJetAnnihilator.lean is replaced by a FINITE normalization: f vanishes below r if and only if EACH convolution f*g_j vanishes below r. The forward direction uses the genuine vanishing of each f_k for k<r; the converse uses the source return sum_j(f*g_j)=f.

For a first nonzero coefficient f_r != 0, normalization forces at least one j with g_{j,0} != 0 (else sum_j g_{j,0} could not equal 1). For that actual test, (f*g_j)_r=f_r*g_{j,0} !=0, with all lower terms zero. Hence the exact order of vanishing is detected by an ACTUAL member of the finite normalized family, rather than guessed.

## Local ideal equivalence, not an arithmetic equivalence

Let O be the genuine holomorphic local ring of germs near the central point and Z_j=F*g_j. The ideal inclusion (Z_1,...,Z_m) subseteq (F) follows from each divisibility; the reverse inclusion follows from F=sum_j Z_j. Therefore (Z_1,...,Z_m)=(F). If F has exact central order r, the common quotient O/(F) is naturally O/(z^r) and has complex dimension r. This is analytic ideal/jet preservation only. The corresponding Connes generalized eigenspace correspondence requires the published spectral theorem, the actual topology and multiplicity cutoff. There is NO canonical Neron--Tate norm on O/(F) from this equality, and NO map from the actual Mordell--Weil lattice is constructed by choosing a complex vector-space basis.

## Hostile controls and error accounting

1. Restrict tests by g_j(0)=0 for all j. Then for F=1 every Z_j has zero constant term although F has no central zero. This cannot satisfy normalization sum_j g_j(0)=1. Prior unrestricted-test cancellation may not be applied to unqualified image families.
2. Drop exact normalization but retain arbitrary test approximations. The signed defect identity retains every missing coefficient, including mixed terms, and does not falsely infer f=0.
3. A nilpotent Jordan chain has generalized zero multiplicity greater than its ordinary kernel dimension. The existing ConnesCentralRootSpaceObstruction source is the hostile control; finite test reconstruction does NOT prove semisimplicity.
4. Multiplication by a nonzero holomorphic unit g_j(0) changes the leading Taylor coefficient by g_j(0) and scales any candidate determinant coordinates. This is why even perfect analytic jets do not supply the actual integral Neron--Tate regulator or BSD-II normalization.
5. E with analytic rank zero has F(0) !=0, so O/(F)=0; finite reconstruction remains valid. Positive analytic order r is never presumed by source construction.

Independent finite diagnostic: 128 exact-rational 11-coefficient fixtures checked (i) normalized families g_0 and g_1=unit-g_0 reconstruct f and (ii) arbitrary unnormalized families obey the full signed convolution defect. These are FINITE diagnostics, not universal formal proof or compiler evidence.

## Source and formal status

New file: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConnesFiniteNormalizedJetReturn.lean; source blob 26d63db3abcb7ef037c0ede60c066b51878e4683, namespace GRWTSK.NumberTheory.ConnesCentralJet; imported existing ConnesCentralJetAnnihilator.lean blob cf2525f8d6cafcab995a3528011e627cd2e65dc9. New declarations: finiteTestCoeff, FiniteTestNormalized, normalized_coeff_eq_unit, convolution_finite_family, normalized_family_reconstructs, normalized_family_jet_return, vanishesBelow_iff_normalized_finite_family, some_normalized_test_detects_coefficient, normalized_test_family_independent, finite_family_signed_defect, some_normalized_test_has_unit_constant, convolution_first_nonzero_coefficient, normalized_family_preserves_exact_order. All proof bodies explicitly use finite sums/convolution with actual complex coefficients, no sorry or new axiom declarations. This source is not compiled or kernel checked.

Root imports unchanged, Lean pin leanprover/lean4:v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Parsing NOT_RUN, compilation NOT_RUN, independent fresh kernel checking NOT_RUN, transitive axiom audit NOT_RUN. Required later review commands at exact source: lake env lean --wfail GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConnesFiniteNormalizedJetReturn.lean ; then check declarations with #print axioms and exact transitive dependency audit. A source blob or static test is not a verifier receipt.

## Consumer and remaining bridge

This supplies an explicit analytic recovery operator R((Z_j)_j)=sum_j Z_j and a test observation map O(F)=(F*g_j)_j with R o O = identity, under a **source-grounded** finite normalizer rather than arbitrary all-test density. The true automorphic theta/Mellin and Godement--Jacquet factorization must still be imported or proved in the pinned Lean environment before using it for E. The original integral record model, bad Euler places, analytic continuation, completed archimedean factors and unitary center normalization must all be preserved.

The NEW unsolved comparison is genuinely arithmetic: construct an E-dependent morphism from H_E=(E(Q)/tors) tensor_R to the analytic central quotient dual O/(L(E,s))^vee, prove rank equality and compare the actual Neron--Tate lattice regulator. Gross--Zagier/Kolyvagin give restricted analytic-rank-one calibration, not arbitrary-rank BSD. The period, Tamagawa factors, torsion denominator and finite Sha in BSD-II remain independent obligations. The finite reconstruction theorem does not reduce these to the spectral theorem.

Publisher and literature review must preserve upstream author names and license attribution while local authorship stays grwtsk contributors. No repository-wide mathematical acceptance or verification dispatch is authorized or claimed.
