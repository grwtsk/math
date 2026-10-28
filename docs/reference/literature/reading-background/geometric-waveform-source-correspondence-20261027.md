# Geometric waveform confluence: formal-source correspondence

Local mathematical attribution: grwtsk contributors.

This is a source-derived increment, not a fresh paper theorem import. The existing paper-to-formalization-references.md and all of its entries are preserved. The historical RH-0011/RH-0012 formulas are reused through the already maintained CorrelationPairing and concrete realization/normalization sources, not re-admitted from a manuscript. Their original provenance and verification scopes remain unchanged.

## Imported formal mathematics

Mathlib revision db584cd6d46c92f209a44c0f1c829460d327499d; Lean leanprover/lean4:v4.33.0. Preserve all upstream authors and Apache-2.0 notices.

- Mathlib/NumberTheory/LSeries/Dirichlet.lean, by Michael Stoll (2024), blob f718ca1edc35ffa92b318b2f74ddcef0e2e754a3. Exact inputs: LSeriesSummable_one_iff, LSeries_one_eq_riemannZeta, LSeries_one_mul_Lseries_moebius, riemannZeta_ne_zero_of_one_lt_re, ArithmeticFunction.LSeriesSummable_moebius_iff, ArithmeticFunction.LSeriesSummable_vonMangoldt, ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div, DirichletCharacter.LSeriesSummable_twist_vonMangoldt and DirichletCharacter.LSeries_twist_vonMangoldt_eq. Hypothesis Re(s)>1 is preserved; coefficients are the actual arithmetic functions and all prime powers survive.
- Mathlib/NumberTheory/LSeries/Basic.lean, blob ffd10e7cd63394810c1ae3a5eebc0344517854c1. Exact term at zero, term_of_ne_zero and norm_term_eq. No divergent total-sum value is used as an analytic identity.
- Mathlib/NumberTheory/LSeries/DirichletContinuation.lean, blob 9ccc38f52d669a88285a904e59dbb562ade5aba5. Exact LFunction_eq_LSeries and deriv_LFunction_eq_deriv_LSeries, with positive modulus and Re(s)>1. No contour displacement or boundary limit is imported.
- Mathlib finite inner-product expansion, finite-sum integral interchange, translation invariance, complex exponentials, absolute summability and norm_tsum_le_tsum_norm. The latter retains norm summability.

Stable formal-source links:
https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/LSeries/Dirichlet.lean
https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/LSeries/Basic.lean
https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean

## Existing local source identities at 2645371d54bf02c1b6ab50f6111563304a6742b9

- Analysis/InnerProductSpace/DilationGram.lean: e6f70fee1ac6edaf24dccb14c8f63341d7d4554e.
- NumberTheory/Chebyshev/CorrelationPairing.lean: 670849456af87f0b37ae123c6231714eb0f4d411.
- Analysis/InnerProductSpace/CompactResidualNormalization.lean: 78fa0334bf3310b16c611602a0ea4df53528bfd5.
- Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean: 1fb6bc049950750a9955cbaedc3bd8e13d748cc8.
- Analysis/WeakDerivatives/PolynomialBump.lean: 9f580b5686d6671ff8f9d9e326aa57826e43e734.
- Analysis/TestFunctions/PolynomialBumpNormalization.lean: 0dbfada61aa6ee9e6d2e3c37ad0e26a15d67b207.
- Analysis/Convolution/CompactProfileCorrelation.lean: b22a87177a8f6ef0ca63a159330480af9f1d8e1b.
- NumberTheory/Moebius/ResponseBudgetIdentification.lean: 0a71e3e273a53dfbbd4bcb217c9421d8fe6d1076.

The paths above have GRWTSK/ prefix. Later source inspection or a new composition does not revoke earlier source-bound evidence or transfer acceptance to changed bytes.

## New source declarations and classifications

The full 84-declaration inventory is in the passive geometric-waveform-confluence manifest. Namespaces are GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap, GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform, GRWTSK.NumberTheory.LSeries.LogarithmicWaveform, GRWTSK.NumberTheory.Chebyshev.SourceWaveformComparison and GRWTSK.NumberTheory.Moebius.ResponseWaveformComparison. Principal declarations include residual_eq_dilationTest, normalization_eq_sourceNormalization, normalizedSource_eq_normalizedTest, primePowerContribution_eq_readout, sourceQuadraticValue_eq_geometric_model, uniform_source_lower_bound_of_geometry, packetJointUpper_sub_geometric, geometricJointUpper_le_packetJointUpper and geometric_finite_cover_implies_RH under their named namespaces.

Imported mathematics: the actual pinned results above. New kernel-verified bridges: none claimed. Source proof candidates: all new identities, comparisons and concrete specializations. Conditional interfaces: uniform geometric/readout budgets, source-return and regional subexponential assumptions remain explicit arguments, not axioms. Finite evidence: exact algebraic/synthetic diagnostics and separately labelled actual-polynomial high-precision checks. Analogies: none used as premises. Missing bridges: native elaboration and full audit; independently useful source-specific geometric model and signed residual estimates; any further heat/Gaussian intertwiner; any analytic continuation beyond the proved summability domain; any identification between the separate original reflected-source and pickup-energy observables.

For each of the five new modules, lake build <module> and lake env lean <path> are NOT_RUN; exit UNAVAILABLE. Fresh independent kernel replay and transitive #print axioms are NOT_RUN. No successful execution receipt is invented. Passive verification pins the complete new mathematical commit and exact blobs. No operational runner/log is placed in math.
