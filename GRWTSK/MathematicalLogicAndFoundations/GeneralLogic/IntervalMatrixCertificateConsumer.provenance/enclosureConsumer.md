# enclosureConsumer

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.IntervalMatrix.enclosureConsumer` in [canonical source](../IntervalMatrixCertificateConsumer.lean).
Exact hashes, pins, OCERT-1 comparison and reproduction: [shared record](../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.provenance/README.md).

This proof-bearing constructor produces the canonical CertificateChecker with an accept_sound proof for the all-real-vector lower-bound meaning. Use consumerDecision_accept_iff, source meaning_of_accepts at the bound packet/snapshot, and checked_enclosure_lower. No second checker type or trusted axiom is introduced. The supplied source-enclosure checker still requires its own soundness proof. No actual arithmetic enclosure evaluator, parser or external runtime correspondence is constructed.

Standard conditional composition; novelty UNASSESSED. SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, axiom audit, byte/runtime refinement and independent review NOT_RUN. Math #1807 / research #47.
