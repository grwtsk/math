# Mathematical source candidates

The original 63 Lean source candidates are organized by mathematical subject and object. Exact inherited copies are coalesced; all original source and evidence variants are retained. The project umbrella and existing native-verification profiles are unchanged. These candidates have not been elaborated, axiom-audited or admitted as checked mathematics.

Only module import references changed when paths moved. Statements, hypotheses, proof text, compatibility declaration names, attribution and source comments remain unchanged. This textual comparison is not a Lean preservation receipt.

The supplied materials target Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Their compiler reports do not establish successful verification. Definitions of goals and certificate assumptions remain obligations; they are not supplied proofs of arithmetic energy bounds, Type-II estimates, analytic continuation or RH.

Five additional taxonomy and classification candidates bring the current intake to 68 sources. Their logical code is unchanged from the supplied reference bundle; license/status comments and the evidence-reference path were updated. Native compilation and axiom auditing remain unrun.

## Original source inventory

| Subject / object | Source | Rights | Native status |
|---|---|---|---|
| Algebra/Ring | [FourTermDecomposition](../../GRWTSK/Algebra/Ring/FourTermDecomposition.lean) | MIT notice retained | Not run |
| Analysis/Asymptotics | [DyadicNormBudget](../../GRWTSK/Analysis/Asymptotics/DyadicNormBudget.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [LogarithmicGrowth](../../GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [SquareRootResidualIteration](../../GRWTSK/Analysis/Asymptotics/SquareRootResidualIteration.lean) | MIT; ownership confirmed | Not run |
| Analysis/Asymptotics | [SublinearDyadic](../../GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean) | MIT; ownership confirmed | Not run |
| Analysis/Complex | [AnalyticLinearODE](../../GRWTSK/Analysis/Complex/AnalyticLinearODE.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [DyadicVariance](../../GRWTSK/Analysis/FiniteSum/DyadicVariance.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [TentReadout](../../GRWTSK/Analysis/FiniteSum/TentReadout.lean) | MIT notice retained | Not run |
| Analysis/FiniteSum | [ThresholdEnergy](../../GRWTSK/Analysis/FiniteSum/ThresholdEnergy.lean) | MIT; ownership confirmed | Not run |
| Analysis/FiniteSum | [WeightedCellRefinement](../../GRWTSK/Analysis/FiniteSum/WeightedCellRefinement.lean) | MIT notice retained | Not run |
| Analysis/Fourier | [PrimePhaseLargeValueAdapter](../../GRWTSK/Analysis/Fourier/PrimePhaseLargeValueAdapter.lean) | MIT; ownership confirmed | Not run |
| Analysis/GreenKernel | [TailAugmentation](../../GRWTSK/Analysis/GreenKernel/TailAugmentation.lean) | MIT notice retained | Not run |
| Analysis/GreenKernel | [UnitInterval](../../GRWTSK/Analysis/GreenKernel/UnitInterval.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [AdaptiveResidualBudget](../../GRWTSK/Analysis/Inequalities/AdaptiveResidualBudget.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [CenteredCubicMoment](../../GRWTSK/Analysis/Inequalities/CenteredCubicMoment.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [ResidualEnclosure](../../GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [ResidualGrowthComparison](../../GRWTSK/Analysis/Inequalities/ResidualGrowthComparison.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [SquaredNormBudget](../../GRWTSK/Analysis/Inequalities/SquaredNormBudget.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [SquaredNormErrorBounds](../../GRWTSK/Analysis/Inequalities/SquaredNormErrorBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [SquaredSumBounds](../../GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean) | MIT notice retained | Not run |
| Analysis/Inequalities | [TriangularBlock](../../GRWTSK/Analysis/Inequalities/TriangularBlock.lean) | MIT; ownership confirmed | Not run |
| Analysis/Inequalities | [TwoHeightEnclosures](../../GRWTSK/Analysis/Inequalities/TwoHeightEnclosures.lean) | MIT notice retained | Not run |
| Analysis/InnerProductSpace | [HankelGramBounds](../../GRWTSK/Analysis/InnerProductSpace/HankelGramBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/InnerProductSpace | [SignedWindowRootBounds](../../GRWTSK/Analysis/InnerProductSpace/SignedWindowRootBounds.lean) | MIT; ownership confirmed | Not run |
| Analysis/InnerProductSpace | [VariationalResidual](../../GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean) | MIT notice retained | Not run |
| Analysis/Integration | [AffineWeightedTransport](../../GRWTSK/Analysis/Integration/AffineWeightedTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/Integration | [QuadraticReadoutBound](../../GRWTSK/Analysis/Integration/QuadraticReadoutBound.lean) | MIT notice retained | Not run |
| Analysis/Integration | [QuadraticRootTransport](../../GRWTSK/Analysis/Integration/QuadraticRootTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/Integration | [UnitIntervalPrimitives](../../GRWTSK/Analysis/Integration/UnitIntervalPrimitives.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [DyadicBounds](../../GRWTSK/Analysis/MellinTransform/DyadicBounds.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [DyadicIntegralSeries](../../GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean) | MIT notice retained | Not run |
| Analysis/MellinTransform | [PositiveCoordinates](../../GRWTSK/Analysis/MellinTransform/PositiveCoordinates.lean) | MIT notice retained | Not run |
| Analysis/NormedSpace | [IntertwiningResidual](../../GRWTSK/Analysis/NormedSpace/IntertwiningResidual.lean) | MIT notice retained | Not run |
| Analysis/NormedSpace | [NormTransport](../../GRWTSK/Analysis/NormedSpace/NormTransport.lean) | MIT; ownership confirmed | Not run |
| Analysis/NormedSpace | [SimilarityReconstruction](../../GRWTSK/Analysis/NormedSpace/SimilarityReconstruction.lean) | MIT; ownership confirmed | Not run |
| Analysis/Resolvent | [ScreenAlgebra](../../GRWTSK/Analysis/Resolvent/ScreenAlgebra.lean) | MIT notice retained | Not run |
| Analysis/Resolvent | [ScreenBudget](../../GRWTSK/Analysis/Resolvent/ScreenBudget.lean) | MIT notice retained | Not run |
| Analysis/Series | [DyadicPartition](../../GRWTSK/Analysis/Series/DyadicPartition.lean) | MIT notice retained | Not run |
| Analysis/Spectral | [LowMassSpecifications](../../GRWTSK/Analysis/Spectral/LowMassSpecifications.lean) | MIT notice retained | Not run |
| Analysis/Spectral | [TwoHeightMoments](../../GRWTSK/Analysis/Spectral/TwoHeightMoments.lean) | MIT notice retained | Not run |
| LinearAlgebra/Matrix | [ToeplitzHankel](../../GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean) | MIT; ownership confirmed | Not run |
| LinearAlgebra/QuadraticForm | [BinaryFormIdentities](../../GRWTSK/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean) | MIT notice retained | Not run |
| LinearAlgebra/QuadraticForm | [OrderedTransport](../../GRWTSK/LinearAlgebra/QuadraticForm/OrderedTransport.lean) | MIT; ownership confirmed | Not run |
| MeasureTheory/Integral | [Centering](../../GRWTSK/MeasureTheory/Integral/Centering.lean) | MIT notice retained | Not run |
| NumberTheory/BinaryDigits | [Carry](../../GRWTSK/NumberTheory/BinaryDigits/Carry.lean) | MIT; ownership confirmed | Not run |
| NumberTheory/Powers | [OctaveSeparation](../../GRWTSK/NumberTheory/Powers/OctaveSeparation.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [CenteredReadout](../../GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [ComplexReadout](../../GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicDiscrepancy](../../GRWTSK/NumberTheory/VonMangoldt/DyadicDiscrepancy.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicEulerIdentification](../../GRWTSK/NumberTheory/VonMangoldt/DyadicEulerIdentification.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [DyadicMellinConvergence](../../GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [GreenEnergyFormula](../../GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [LatticeCellSource](../../GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [LatticeGreenReconstruction](../../GRWTSK/NumberTheory/VonMangoldt/LatticeGreenReconstruction.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [MellinBlockHolomorphy](../../GRWTSK/NumberTheory/VonMangoldt/MellinBlockHolomorphy.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [MellinReadout](../../GRWTSK/NumberTheory/VonMangoldt/MellinReadout.lean) | MIT notice retained | Not run |
| NumberTheory/VonMangoldt | [PrimeTailReturn](../../GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [CompletedQuotientSource](../../GRWTSK/NumberTheory/Zeta/CompletedQuotientSource.lean) | MIT; ownership confirmed | Not run |
| NumberTheory/Zeta | [DyadicGreenReturn](../../GRWTSK/NumberTheory/Zeta/DyadicGreenReturn.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [DyadicGreenSpecifications](../../GRWTSK/NumberTheory/Zeta/DyadicGreenSpecifications.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [GreenMellinContinuation](../../GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [LogDerivativeZeroExclusion](../../GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean) | MIT notice retained | Not run |
| NumberTheory/Zeta | [PoleRemovedSource](../../GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean) | MIT notice retained | Not run |

## Taxonomy and classification extension

| Subject / object | Source | Native status |
|---|---|---|
| Order/Taxonomy | [Address](../../GRWTSK/Order/Taxonomy/Address.lean) | Not run |
| Order/Taxonomy | [Core](../../GRWTSK/Order/Taxonomy/Core.lean) | Not run |
| Logic/Classification | [Catalogue](../../GRWTSK/Logic/Classification/Catalogue.lean) | Not run |
| Logic/Classification | [Types](../../GRWTSK/Logic/Classification/Types.lean) | Not run |
| Logic/Classification | [Provenance](../../GRWTSK/Logic/Classification/Provenance.lean) | Not run |

The taxonomy represents ancestry by finite natural-number paths while retaining external notation as text. Classification, actual typed values and justified bindings remain separate. The example taxonomy is illustrative, not the PMD catalogue or an official Dewey schedule.

The five candidate modules remain outside the public `GRWTSK.lean` import closure pending native admission. Classification ancestry and typed bindings do not establish theorem applicability.

## Written mathematical material

A separately retained source archive adds written arguments about endpoint grounding in the full Green metric, separated Mellin/Fourier samples, the signed periodic correction, sample-tail accounting and finite-observation error. It supplies no new Lean module; its nested baseline is an exact copy of already indexed candidates. These arguments are supplied source material, not independently certified by this intake.

| Mathematical object | Material | Formal status |
|---|---|---|
| Analysis / GreenKernel | Endpoint grounding and signed periodic correction | Formal port open |
| Analysis / Fourier | Separated samples, tail accounting and observation error | Formal port open |
| NumberTheory / VonMangoldt | Source-specific conditional return and finite data | All-scale retained-packet bound open |

The source identity is `sha256:0c4ed7f52e3b01707300e027a522983471751c7287c156b868f57044032a4134`. Exact document identities are in the intake inventory (artifact:gitblob:5768dd6443326f9137958546065006ddbe451d7b). Original prose, scripts and operational reports remain outside the mathematical library projection; no new license or publication permission is inferred.

The delivered production reports agree byte-for-byte and record finite scope through X=4096. The verification text also claims a fresh final archive replay through X=4096 with 33 tests, but its corresponding receipt is not included. The delivered replay receipts cover earlier sources through X=1024 with 32 tests. That missing receipt remains an explicit evidence obligation; none of these reports is a new local execution or Lean acceptance receipt.

## Evidence and limits

Exact source identities and intake statuses (artifact:gitblob:5768dd6443326f9137958546065006ddbe451d7b) · [Attribution and licensing](../../LICENSES/ArchiveCandidates-NOTICE.txt) · Mathematical source standard (artifact:gitblob:18548a1c7e77002331dd18e929aa89fadf8af9c3) · Verification requirements (artifact:gitblob:d7df3a864028a221ea3728082afc25ec28c72953).

grwtsk contributors confirms ownership of the supplied proof sources. The existing repository MIT terms apply. Human direction, formal-source contribution, assistance, ownership and mathematical origin remain distinct; original source credit, upstream mathematics and Mathlib licenses are retained.

The binary-form and squared-sum candidates retain the source’s 13 uncompiled theorem declarations. Their archived finite source calculations and Brun–Titchmarsh-based discussion do not supply a checked arithmetic adapter or all-scale endpoint-center and remainder bounds. Those obligations remain open.

Pinned native replay, source-bound declaration and axiom audits, current consumer verification, citation review and applicable rights clearance are required before stronger admission. Historical source checks, numerical diagnostics and source hashes do not supply those obligations.
