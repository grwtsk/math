# entries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b92b1ee7e678f1ad4f155c8c38dd9174870d6e174d5353aad05174b1000897a",
  "kind": "def",
  "lexical_name": "entries",
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
  "slug": "entries--4b8d5773d30cbff1f6c01eac",
  "source": {
    "blob": "64a18bee6c1132cb4fc6cdcd22591101a8897c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SrcLibLeanMigration/Variantdbaf322c3e23a2c615c20ae8b9960c765fab5f631bbaa84f0c1a3ec78993e96f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b8d5773d30cbff1f6c01eac795bde388827b2e963dee6e700b9e81db67fa25a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SrcLibLeanMigration/Variantdbaf322c3e23a2c615c20ae8b9960c765fab5f631bbaa84f0c1a3ec78993e96f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b92b1ee7e678f1ad4f155c8c38dd9174870d6e174d5353aad05174b1000897a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def entries : List MigrationEntry := [
  { sourcePath := "src/lib/analytic/boundary_authority/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary authority"
    finalPath := "formal/Think/Pipeline/Authority.lean"
    reason := "analytic authority retained as nonclaim authority class"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/analytic/inner_outer_tension/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "inner/outer external boundary"
    finalPath := "formal/Think/Manuscript/ExternalBoundary.lean"
    reason := "inner/outer tension retained as manuscript boundary residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/analytic/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/braid/Boundary.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryAtlas.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryAudit.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary validation coverage"
    finalPath := "formal/Think/Validation/BraidCoverage.lean"
    reason := "boundary audit content absorbed into active validation coverage"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryCertificate.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite witness certificate"
    finalPath := "formal/Think/Kernel/Checked.lean"
    reason := "certificate posture merged into Checked residue/proof carrier"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/BoundaryCoverage.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary validation coverage"
    finalPath := "formal/Think/Validation/BraidCoverage.lean"
    reason := "boundary audit content absorbed into active validation coverage"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryCrossing.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryDecomposition.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue decomposition and containment"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/Residues/Containment.lean"
    reason := "decomposition is residue section or containment law"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryDecompositionAudit.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary validation coverage"
    finalPath := "formal/Think/Validation/BraidCoverage.lean"
    reason := "boundary audit content absorbed into active validation coverage"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryDecompositionCertificate.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue decomposition and containment"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/Residues/Containment.lean"
    reason := "decomposition is residue section or containment law"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryDecompositionKernel.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue decomposition and containment"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/Residues/Containment.lean"
    reason := "decomposition is residue section or containment law"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryDecompositionManifest.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary validation coverage"
    finalPath := "formal/Think/Validation/BraidCoverage.lean"
    reason := "boundary audit content absorbed into active validation coverage"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryGate.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "nonclaim and target gate"
    finalPath := "formal/Think/Pipeline/Nonclaim.lean; formal/Think/Targets/Basic.lean"
    reason := "gate/obligation law is non-authoritative pipeline boundary data"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryManifest.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary validation coverage"
    finalPath := "formal/Think/Validation/BraidCoverage.lean"
    reason := "boundary audit content absorbed into active validation coverage"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryObligation.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "nonclaim and target gate"
    finalPath := "formal/Think/Pipeline/Nonclaim.lean; formal/Think/Targets/Basic.lean"
    reason := "gate/obligation law is non-authoritative pipeline boundary data"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/BoundaryOrchestration.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryReceipt.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue ledger receipt"
    finalPath := "formal/Think/Residues/Ledger.lean"
    reason := "receipt semantics belong to active residue ledger"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/BoundaryRegistry.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/Ladder.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "boundary crossing taxonomy"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary crossing law normalized without ThinkMath namespace"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/Root.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "braid import hub"
    finalPath := "deleted"
    reason := "old ThinkMath import hub replaced by active Think aggregators"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/braid/affine_group/AffineGroup.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/affine_move_trait/AffineMoveTrait.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/affine_product_point/AffineProductPoint.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Adapter.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Authority.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Bridge.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Cover.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Event.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/ExplicitFormula.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "Riemann scheduler residue boundary"
    finalPath := "formal/Think/ModularWave/RiemannSchedulerChebyshev.lean; formal/Think/Targets/RH.lean"
    reason := "explicit formula material retained as scheduler/target residue only"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/GRH.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic famous target boundary"
    finalPath := "formal/Think/Targets/RH.lean; formal/Think/Targets/Basic.lean"
    reason := "RH/GRH retained as open/residue target boundary only"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/HardyLittlewood.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "prime asymptotic target boundary"
    finalPath := "formal/Think/Targets/PrimeGaps.lean; formal/Think/Targets/Basic.lean"
    reason := "prime theorem material retained as non-authoritative target context"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/HardyRamanujan.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite-data asymptotic target boundary"
    finalPath := "formal/Think/Targets/FiniteDataAsymptotics.lean; formal/Think/Targets/Basic.lean"
    reason := "partition/asymptotic material retained as target residue context"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Item.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Kind.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/OpenObstruction.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "target and residue status taxonomy"
    finalPath := "formal/Think/Targets/Basic.lean; formal/Think/Residues/Basic.lean"
    reason := "status split into target status and residue status without checked analytic authority"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/PNT.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "prime asymptotic target boundary"
    finalPath := "formal/Think/Targets/PrimeGaps.lean; formal/Think/Targets/Basic.lean"
    reason := "prime theorem material retained as non-authoritative target context"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/RH.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic famous target boundary"
    finalPath := "formal/Think/Targets/RH.lean; formal/Think/Targets/Basic.lean"
    reason := "RH/GRH retained as open/residue target boundary only"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/RamanujanExpansion.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "asymptotic residue boundary"
    finalPath := "formal/Think/Residues/Asymptotic.lean"
    reason := "asymptotic machinery retained as obstruction metadata"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Reduction.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary interface"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Pipeline/BoundaryReport.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter/kind/item law normalized into active boundary and nonclaim modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Sieve.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "sieve target boundary"
    finalPath := "formal/Think/Targets/SieveTheory.lean; formal/Think/Targets/Basic.lean"
    reason := "sieve material retained as residue/nonclaim target context"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Status.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "target and residue status taxonomy"
    finalPath := "formal/Think/Targets/Basic.lean; formal/Think/Residues/Basic.lean"
    reason := "status split into target status and residue status without checked analytic authority"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_boundary/Tauberian.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "asymptotic residue boundary"
    finalPath := "formal/Think/Residues/Asymptotic.lean"
    reason := "asymptotic machinery retained as obstruction metadata"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_compactification/AnalyticCompactification.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic compactification residue"
    finalPath := "formal/Think/Residues/Asymptotic.lean"
    reason := "compactification law retained as asymptotic residue metadata"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_compactification/Atom.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compactification residue atom/status"
    finalPath := "formal/Think/Residues/Basic.lean"
    reason := "atom/status taxonomy merged into residue ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_compactification/Future.lean"
    disposition := MigrationDisposition.deleted_empty_marker
    semanticTarget := "future-slot bookkeeping"
    finalPath := "deleted"
    reason := "future placeholder had no active theorem/residue content beyond existing targets"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/braid/analytic_compactification/Item.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compactification ledger item"
    finalPath := "formal/Think/Residues/Ledger.lean"
    reason := "item taxonomy belongs to residue ledger"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_compactification/Law.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compact containment nonclaim"
    finalPath := "formal/Think/Residues/Containment.lean; formal/Think/Pipeline/Nonclaim.lean"
    reason := "compactification law retained as containment/nonclaim boundary"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/analytic_compactification/Status.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compactification residue atom/status"
    finalPath := "formal/Think/Residues/Basic.lean"
    reason := "atom/status taxonomy merged into residue ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_foundation/AnalyticFoundation.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic foundation ontology"
    finalPath := "formal/Think/Targets/Basic.lean; formal/Think/Residues/Asymptotic.lean"
    reason := "foundation terms retained as target/residue ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_partial_proof/AnalyticPartialProof.lean"
    disposition := MigrationDisposition.refused_overclaim
    semanticTarget := "partial analytic proof overclaim"
    finalPath := "formal/Think/Residues/Containment.lean"
    reason := "partial proof authority refused and retained only as containment residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.refusedOverclaim },
  { sourcePath := "src/lib/braid/analytic_roundtrip/AnalyticRoundTrip.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic roundtrip stabilizer"
    finalPath := "formal/Think/Pipeline/Center/RoundtripStabilizer.lean; formal/Think/Validation/RoundtripStabilizer.lean"
    reason := "roundtrip law retained in active stabilizer modules"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/analytic_theorem_adapter/AnalyticTheoremAdapter.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic theorem adapter nonclaim"
    finalPath := "formal/Think/Pipeline/Authority.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "adapter law retained as authority-boundary guard"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/angle_to_multiplier/AngleToMultiplier.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/classical_normalization/ClassicalNormalization.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "classical normalization law"
    finalPath := "formal/Think/Pipeline/Basic.lean"
    reason := "normalization law retained in pipeline basics"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/curve_angle/CurveAngle.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/embedded_point/EmbeddedPoint.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite construction coverage"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/SourceTree/Coverage.lean"
    reason := "finite construction law retained as section/coverage residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/entry_distance/EntryDistance.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "entry distance weighting"
    finalPath := "formal/Think/Pipeline/Center/WeightedCenter.lean"
    reason := "distance law retained as center weighting data"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/erdos_bertrand_flip/ErdosBertrandFlip.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "prime-gap target residue"
    finalPath := "formal/Think/Targets/PrimeGaps.lean; formal/Think/ResearchSurvey/OpenMentions.lean"
    reason := "Erdos-Bertrand content retained as prime-gap residue/source mention"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/erdos_bertrand_ring/ErdosBertrandRing.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "prime-gap target residue"
    finalPath := "formal/Think/Targets/PrimeGaps.lean; formal/Think/ResearchSurvey/OpenMentions.lean"
    reason := "Erdos-Bertrand content retained as prime-gap residue/source mention"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/field_affine_group/FieldAffineGroup.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "finite braid algebra sketch"
    finalPath := "formal/Think/Pipeline/Center/Braid.lean"
    reason := "unused algebra sketch merged into active braid-center surface when semantically relevant"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/fixed_point_selector/FixedPointSelector.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "fixed-point selector"
    finalPath := "formal/Think/Pipeline/Center/FixedPointLoop.lean"
    reason := "selector law retained in fixed-point loop center module"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/intersection/Intersection.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite construction coverage"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/SourceTree/Coverage.lean"
    reason := "finite construction law retained as section/coverage residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/mathlib_analysis/MathlibAnalysis.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "mathlib availability survey"
    finalPath := "formal/Think/ResearchSurvey/Primitives.lean; formal/Think/Validation/ResearchSurvey.lean"
    reason := "dependency analysis retained as survey primitive metadata"
    theoremAuthorityPosture := TheoremAuthorityPosture.externalSourceMetadata },
  { sourcePath := "src/lib/braid/nonclaim_cover/NonClaimCover.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "nonclaim cover"
    finalPath := "formal/Think/Pipeline/Nonclaim.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "nonclaim cover retained in active nonclaim validation"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/partial_construction/PartialConstruction.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite construction coverage"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/SourceTree/Coverage.lean"
    reason := "finite construction law retained as section/coverage residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/recursive_closure/RecursiveClosure.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite construction coverage"
    finalPath := "formal/Think/Residues/Section.lean; formal/Think/SourceTree/Coverage.lean"
    reason := "finite construction law retained as section/coverage residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/riemann1859/ComprehensiveSurface.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "Riemann modular-wave surface"
    finalPath := "formal/Think/ModularWave/RiemannSchedulerChebyshev.lean; formal/Think/Manuscript/ModularWave.lean"
    reason := "expository atoms converted to modular-wave residue entries"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/spectral_bridge/Adapter.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "L-function lowering adapter"
    finalPath := "formal/Think/ModularWave/LFunctionLowering.lean"
    reason := "adapter retained as lowering residue interface"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/braid/spectral_bridge/Bijection.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite bridge bijection"
    finalPath := "formal/Think/Kernel/Bridge.lean; formal/Think/ModularWave/BridgeSound.lean"
    reason := "bijection data retained as bridge soundness witness"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/spectral_bridge/Fredholm.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite Fredholm witness"
    finalPath := "formal/Think/Manuscript/FredholmWitness.lean"
    reason := "finite spectral/Fredholm witness retained without analytic authority"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/spectral_bridge/NonClaim.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "spectral nonclaim"
    finalPath := "formal/Think/Pipeline/Nonclaim.lean; formal/Think/Validation/TargetNonclaims.lean"
    reason := "spectral overclaim guard retained as nonclaim validation"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/braid/spectral_bridge/Operator.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "finite Fredholm witness"
    finalPath := "formal/Think/Manuscript/FredholmWitness.lean"
    reason := "finite spectral/Fredholm witness retained without analytic authority"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/braid/teorth_analysis/TeorthAnalysis.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "external source survey metadata"
    finalPath := "formal/Think/ResearchSurvey/Corpus.lean"
    reason := "external analysis retained only as corpus metadata"
    theoremAuthorityPosture := TheoremAuthorityPosture.externalSourceMetadata },
  { sourcePath := "src/lib/compact/compact_boundary_report/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compact boundary report"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "compact boundary report retained in active pipeline report module"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/compact/compact_pair_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "compact pair input"
    finalPath := "formal/Think/Poles/Compact.lean"
    reason := "compact pair finite data retained in compact pole module"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/compact/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/compact/shell_compaction/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "shell compaction containment"
    finalPath := "formal/Think/Residues/Containment.lean"
    reason := "shell compaction retained as containment residue law"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/analytic_boundary_report/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline boundary report"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary/error marker retained as boundary report residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/bit_width_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline carrier input"
    finalPath := "formal/Think/Pipeline/Carrier.lean; formal/Think/Pipeline/Basic.lean"
    reason := "finite input/carrier law retained in active pipeline surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/bitmatrix_host/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline carrier input"
    finalPath := "formal/Think/Pipeline/Carrier.lean; formal/Think/Pipeline/Basic.lean"
    reason := "finite input/carrier law retained in active pipeline surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/bitmatrix_host_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline carrier input"
    finalPath := "formal/Think/Pipeline/Carrier.lean; formal/Think/Pipeline/Basic.lean"
    reason := "finite input/carrier law retained in active pipeline surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/deterministic_id_audit/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "source-tree and import audit"
    finalPath := "formal/Think/Validation/SourceTreeCanonical.lean; formal/Think/Validation/ImportAcyclicity.lean"
    reason := "audit content merged into active validation surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/documentation_audit/proof.lean"
    disposition := MigrationDisposition.merged_duplicate
    semanticTarget := "documentation audit marker"
    finalPath := "formal/Think/Validation/ResearchSurvey.lean"
    reason := "documentation audit duplicated active research-survey validation"
    theoremAuthorityPosture := TheoremAuthorityPosture.externalSourceMetadata },
  { sourcePath := "src/lib/pole/finite_continuation_ledger/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue receipt ledger"
    finalPath := "formal/Think/Residues/Ledger.lean"
    reason := "receipt and continuation policy retained in active ledger"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/input_parameter_record/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline carrier input"
    finalPath := "formal/Think/Pipeline/Carrier.lean; formal/Think/Pipeline/Basic.lean"
    reason := "finite input/carrier law retained in active pipeline surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/interface_file_audit/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "source-tree and import audit"
    finalPath := "formal/Think/Validation/SourceTreeCanonical.lean; formal/Think/Validation/ImportAcyclicity.lean"
    reason := "audit content merged into active validation surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/max_index_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline carrier input"
    finalPath := "formal/Think/Pipeline/Carrier.lean; formal/Think/Pipeline/Basic.lean"
    reason := "finite input/carrier law retained in active pipeline surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/module_wiring_audit/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "source-tree and import audit"
    finalPath := "formal/Think/Validation/SourceTreeCanonical.lean; formal/Think/Validation/ImportAcyclicity.lean"
    reason := "audit content merged into active validation surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/output_directory_input/proof.lean"
    disposition := MigrationDisposition.deleted_operational_shim
    semanticTarget := "output directory operational marker"
    finalPath := "deleted"
    reason := "filesystem-output marker carried no formal admissibility law beyond artifact policy"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/pole/polar_surface_bitmatrix_frame/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "polar carrier frame"
    finalPath := "formal/Think/Poles/Carrier.lean"
    reason := "polar frame retained as pole carrier law"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/polar_surface_one_bitmatrix_stream/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "polar trace stream"
    finalPath := "formal/Think/Poles/Trace.lean"
    reason := "pole stream content absorbed into trace pole surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/pole/polar_surface_stream_residue/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "polar stream residue"
    finalPath := "formal/Think/Poles/Boundary.lean; formal/Think/Residues/Trace.lean"
    reason := "stream residue retained as pole boundary/trace residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/pole/receipt_policy_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue receipt ledger"
    finalPath := "formal/Think/Residues/Ledger.lean"
    reason := "receipt and continuation policy retained in active ledger"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/residue_disposition/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue disposition"
    finalPath := "formal/Think/Residues/Basic.lean; formal/Think/Kernel/Residue.lean"
    reason := "residue disposition merged into active residue ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/surface_pole_at_one/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "surface pole request/boundary"
    finalPath := "formal/Think/Poles/Request.lean; formal/Think/Poles/Boundary.lean"
    reason := "surface pole markers retained in active pole ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/surface_pole_marker_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "surface pole request/boundary"
    finalPath := "formal/Think/Poles/Request.lean; formal/Think/Poles/Boundary.lean"
    reason := "surface pole markers retained in active pole ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/theorem_artifact/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "theorem artifact nonclaim"
    finalPath := "formal/Think/Pipeline/Artifact.lean; formal/Think/Pipeline/Nonclaim.lean"
    reason := "artifact policy retained as nonclaim boundary law"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/theorem_artifact_policy_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "theorem artifact nonclaim"
    finalPath := "formal/Think/Pipeline/Artifact.lean; formal/Think/Pipeline/Nonclaim.lean"
    reason := "artifact policy retained as nonclaim boundary law"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/think_interface_error/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "pipeline boundary report"
    finalPath := "formal/Think/Pipeline/BoundaryReport.lean"
    reason := "boundary/error marker retained as boundary report residue"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/pole/traversal_rule_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "source-tree traversal law"
    finalPath := "formal/Think/SourceTree/Placement.lean; formal/Think/SourceTree/PoleAssignment.lean"
    reason := "traversal law belongs to source-tree placement ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/tsv_policy_audit/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "source-tree and import audit"
    finalPath := "formal/Think/Validation/SourceTreeCanonical.lean; formal/Think/Validation/ImportAcyclicity.lean"
    reason := "audit content merged into active validation surface"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/pole/zero_marker_input/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "residue disposition"
    finalPath := "formal/Think/Residues/Basic.lean; formal/Think/Kernel/Residue.lean"
    reason := "residue disposition merged into active residue ontology"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/spectral/level_one/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "level-one finite spectral witness"
    finalPath := "formal/Think/Manuscript/FredholmWitness.lean"
    reason := "finite level-one cover retained as witness, not spectral theorem"
    theoremAuthorityPosture := TheoremAuthorityPosture.finiteWitnessOnly },
  { sourcePath := "src/lib/spectral/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/theorem_path/analytic_boundary/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "analytic boundary report"
    finalPath := "formal/Think/Targets/AnalyticContinuation.lean; formal/Think/Pipeline/BoundaryReport.lean"
    reason := "analytic boundary law retained without target authority transfer"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/theorem_path/artifact_gate/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "artifact gate law"
    finalPath := "formal/Think/Pipeline/Artifact.lean"
    reason := "artifact admissibility law retained in active pipeline artifact module"
    theoremAuthorityPosture := TheoremAuthorityPosture.nonclaimOnly },
  { sourcePath := "src/lib/theorem_path/codex_pairing/proof.lean"
    disposition := MigrationDisposition.deleted_operational_shim
    semanticTarget := "model pairing shim"
    finalPath := "deleted"
    reason := "operational Codex pairing marker carried no formal residue law"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/theorem_path/critical_line/proof.lean"
    disposition := MigrationDisposition.migrated
    semanticTarget := "critical-line target boundary"
    finalPath := "formal/Think/Targets/RH.lean"
    reason := "critical-line content retained as RH residue boundary only"
    theoremAuthorityPosture := TheoremAuthorityPosture.residueOnly },
  { sourcePath := "src/lib/theorem_path/gemma_pairing/proof.lean"
    disposition := MigrationDisposition.deleted_operational_shim
    semanticTarget := "model training shim"
    finalPath := "deleted"
    reason := "model-pairing/training shim did not encode formal theorem or residue law"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/theorem_path/mlx_training/proof.lean"
    disposition := MigrationDisposition.deleted_operational_shim
    semanticTarget := "model training shim"
    finalPath := "deleted"
    reason := "model-pairing/training shim did not encode formal theorem or residue law"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority },
  { sourcePath := "src/lib/theorem_path/proof.lean"
    disposition := MigrationDisposition.deleted_aggregator
    semanticTarget := "root import hub"
    finalPath := "deleted"
    reason := "pure generated import hub after semantic extraction"
    theoremAuthorityPosture := TheoremAuthorityPosture.operationalNoAuthority }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SrcLibLeanMigration/Variantdbaf322c3e23a2c615c20ae8b9960c765fab5f631bbaa84f0c1a3ec78993e96f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SrcLibLeanMigration/Variantdbaf322c3e23a2c615c20ae8b9960c765fab5f631bbaa84f0c1a3ec78993e96f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a18bee6c1132cb4fc6cdcd22591101a8897c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
