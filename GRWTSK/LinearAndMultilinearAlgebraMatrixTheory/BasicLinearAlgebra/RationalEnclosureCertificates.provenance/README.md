# OCERT-1 finite-enclosure refinement: exact-source provenance

Local attribution: grwtsk contributors. Source authoring assistance: OpenAI ChatGPT.
Coordination: https://github.com/grwtsk/math/issues/1807 and https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/47.

## Source identity and comparison

Mathematical consumer: OCERT-1 Theorem P and sections 5--7 of `research/06-weil-spectral/certified-search/oc10-backchain-v1.md` in the research repository at `e19563adbaf29d08c6b2e17761f78b96adb9e247`. Note SHA-256: `4ac95baaa95bbcb77510a2a30f29018ac28b849f47827e7f2a3179e21b590085`. This is a local finite-rule refinement of that conditional reduction, not a replacement of the claim or an imported external proof. [Pinned research source](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md).

Canonical Lean source identities:

- `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.lean`: SHA-256 `7ecdb2070141371bc2ec9409c53fe40ecaa053622ad0bd4097adcb0e84ab7c81`; blob `521686ced291fdd04b3e214ce6489bd07dc0410a`.
- `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/IntervalMatrixCertificateConsumer.lean`: SHA-256 `38581a29a70968c0e6ee323b8e1b75045cc2912131d9c0242d1227513d199871`; blob `7668b669587dfe32b410b65ace02a67a508a53e1`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteEnclosureReturn.lean`: SHA-256 `99737dee6689fc69a8d9c54a850ae3bb0aaff04669957bfed56c4cc3f6736c2b`; blob `2cb02d8e884f5059e53105224ef2b0e828a9d35c`.

Initial source comparison pin: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. Reused declarations and source observations:

- Program 6: `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/HermiteMomentCertificates.lean`, blob `1a0351a2f242577b948c6c6c431aff48356880a2`, `abs_quadraticValue_sub_le_errorBudget`. Only the generic entrywise estimate is used, not the ordinary-transpose moment-square interpretation.
- Maintained `QuadraticCertificateCore.lean`, blob `7cc294a4516885fde53e4ad6de0b73ed9a0f2002`, and `SchurObserverCertificate.lean` under BasicLinearAlgebra: existing `Certificate`, `check`, `matrixProblem`, `checked_rational_matrix_nonneg`. No second PSD checker is introduced.
- Program 3: BasicLinearAlgebra/NegativeIndex.lean, blob `e0b7a4a243ced641ab3961a93f749c43c5002cb0`, `negativeIndex_eq_zero_of_nonneg`.
- Existing Program 10: `DenseNonnegativeApproximation.lean`, `RuleSoundness.lean` and `WeilDenseCertificateReduction.lean`: small-error separation, dense continuity, exact-target checker semantics and the actual primitive Dirichlet target, retaining conductor one.
- Additional Program 2 dependency read at `86e182d7abbc9d9622be4b95037d735f0eb1917d`: `GRWTSK/FunctionalAnalysis/WeightedConjugatePairingTopology.lean`, blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`, `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.continuous_quadratic`. Publication of this dependency is not an elaboration receipt.

Lean pin `leanprover/lean4:v4.34.1`; Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pinned primary API comparison includes `Mathlib/Basic/Complex/Basic.lean` (`Complex.reAddGroupHom`), finite sum additivity and the already-maintained quadratic/checker declarations. Upstream imports retain their authorship and licensing. Comparison date: 2026-11-11. The arguments are standard algebra, order and continuity consequences; novelty UNASSESSED and no novelty claim. Every theorem and the proof-bearing checker constructor has an adjacent individual record.

## Primary argument, counterexamples and unresolved premises

Let D(E) be the diagonal matrix of all row sums of an entrywise nonnegative symmetric radius matrix E. The existing rational Gram checker checks the complete identity M + epsilon G - D(E) = W^T W, with empty constraint families. Summed Young inequalities give sum_ij E_ij |x_i x_j| <= q_D(E)(x). Program 6's entrywise error theorem therefore yields q_H(x) >= -epsilon q_G(x) for every real vector when H is the true enclosed matrix. The packet guard validates radii and tolerance; it does not prove arithmetic enclosure or metric positivity. The original research Python LDL checker is not imported, certified, or asserted equivalent to this Gram implementation.

The source-enclosure oracle is a supplied canonical CertificateChecker. Its conclusion must equal the entire requested packet at the same snapshot. Only then can a passing rational factor yield acceptance. Unknown remains unknown and mismatched packets are rejected. Soundness, concrete arithmetic evaluation, certificate existence and byte/runtime refinement remain separate.

Complex return retains all four blocks [Re H,-Im H;Im H,Re H], with q_R(H)(split v)=Re(v*Hv). For Hermitian H this is the real Hermitian value. H=[[1,2i],[-2i,1]] is positive on every real vector but has value -2 on (1,i); the control is authored Lean, not an executed numerical experiment. The index result concerns only the tolerance-SHIFTED real form. No equality of real and complex negative dimensions is asserted.

For the dyadic limit, each encoded test uses a fixed finite nonnegative metric price, possibly zero. An uncontrolled accuracy-dependent price would invalidate the inference. Frame dimension may depend on the test; no fixed finite frame is assumed to span an infinite-dimensional support window. Program 2 supplies continuity of the full summable signed pairing, not positivity of that pairing and not its arithmetic identification.

Actual smooth test spaces, common-support density, source-matrix lower return, a sound arithmetic enclosure oracle, universal coverage at every primitive source/window/code/accuracy, and the full Weil source return remain obligations. All prime powers, conductor, gamma/parity terms, applicable pole orientations and multiplicities must be retained in the source return. No GRH proof or arithmetic realization is claimed.

## Status and clean-checkout reproduction specification

18 theorem declarations and one proof-bearing checker constructor. Status: SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom audit, CI, byte/runtime refinement, arithmetic evaluation, training and independent mathematical review: NOT_RUN. No new axiom or unfinished proof command was found by a comment-aware textual scan; this is not a transitive proof audit. No finite numerical experiment was executed.

After authorized verification prerequisites become available, use a clean checkout at the publication commit, retaining the existing toolchain and manifest:

```sh
lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates
lake build GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.IntervalMatrixCertificateConsumer
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteEnclosureReturn
```

These commands were not run. Expected outcome is successful elaboration, not an observed result. Kernel replay and a transitive axiom audit require separately recorded source-bound checks. The canonical Noe proof skill remained unavailable at `0126ba445446dea25047a89884df1adf6b10251a`; no dependent execution was dispatched. Source authoring and publication do not claim that verification occurred.

Actual authoring observations are source comparison, manual argument review, lexical checks, declaration correspondence and byte digests. Commit/diff/readback receipts are recorded in math #1807 and linked from research #47. No source is mirrored into the research repository, no existing claim meaning/status or trail weight is promoted, and no root imports, dependency pins, policy files or workflows are changed.
