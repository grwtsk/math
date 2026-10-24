# generatedPartialRuntimeEntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846f53c6bf5b6d9b3182611c0bf3eb13fb7fdd55428a5192e5f796713771b04d",
  "kind": "def",
  "lexical_name": "generatedPartialRuntimeEntries",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "generatedpartialruntimeentries--f52b922340b0c4d8b4214658",
  "source": {
    "blob": "717b30d74a420f15d9d2c04c86c1ff55998069d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f52b922340b0c4d8b4214658788fcc035f28c4ac430f6cdd3380f8191f7884e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846f53c6bf5b6d9b3182611c0bf3eb13fb7fdd55428a5192e5f796713771b04d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generatedPartialRuntimeEntries : Array GeneratedPartialRuntimeEntry := #[
  { helper := `GRWTSK.Algebra.orderedProduct._unsafe_rec,
    original := `GRWTSK.Algebra.orderedProduct,
    owner := `GRWTSK.Algebra.OrderedProduct,
    ownerSourceHash := "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.count._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.count,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.clock._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.clock,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.debt._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.debt,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure,
    owner := `GRWTSK.Order.Closure.FiniteDependencyClosure,
    ownerSourceHash := "e78778c5b623abadfc23a668517cb4b1652ef6365962263b8440f8a156af5dec" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom,
    owner := `GRWTSK.Logic.Inference.FiniteRuleSystems,
    ownerSourceHash := "6bbe978cc4ba18d4bfefbadab3a7b256cdec7dffb6b7de9da18a688d9c4fa986" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost,
    owner := `GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples,
    ownerSourceHash := "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun,
    owner := `GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples,
    ownerSourceHash := "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42" },
  { helper := `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._unsafe_rec,
    original := `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct,
    owner := `GRWTSK.LinearAlgebra.CocycleProduct,
    ownerSourceHash := "64ebbd43849bfffee9f92d74f271c55a1ffcba28c1b7debcf491a901ddfff67b" },
  { helper := `GRWTSK.Analysis.Waveform.workClock._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.workClock,
    owner := `GRWTSK.Logic.FiniteSequences.PrefixCoverage,
    ownerSourceHash := "a6ee772e91591f1e51ad01a4a0ff68df9f2455d4c0c168a660159fb0fd55485f" },
  { helper := `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization,
    ownerSourceHash := "fe53414320a78931bf2add8a168544df853ce7bd10b82b2cf257082ceb77e4be" }]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Moebius/Checks/OwnerAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717b30d74a420f15d9d2c04c86c1ff55998069d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
