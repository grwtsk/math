# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:404bb38f15e628732f86e33427e7d001fa7ef4c7f9ddc4a49054c57a5d7e9107",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--3bce01edac1c72d461840436",
  "source": {
    "blob": "f200b34464b8db232078688f0830057723bb1854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6665,
    "line": 6653,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variante91c35696166f988d0c6b78440f19bd78226ec2b8c1ceaa94ed34eea2b302944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bce01edac1c72d46184043647b9970539813a0b2f10c8368cf22e29d74fc663",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variante91c35696166f988d0c6b78440f19bd78226ec2b8c1ceaa94ed34eea2b302944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:404bb38f15e628732f86e33427e7d001fa7ef4c7f9ddc4a49054c57a5d7e9107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6653–6665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (α : ℝ) : scalarController α =
    ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector := rfl

end SourceScalarControllerLiteral


namespace FiniteControllerEnergyLiteral
open MeasureTheory Set
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator ExponentialCovariance FixedLaplaceContinuation
open FixedSourceKernel FormalResearch.RiemannHypothesis.SourceComparison.FiniteControllerEnergy
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variante91c35696166f988d0c6b78440f19bd78226ec2b8c1ceaa94ed34eea2b302944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variante91c35696166f988d0c6b78440f19bd78226ec2b8c1ceaa94ed34eea2b302944.lean#L6653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f200b34464b8db232078688f0830057723bb1854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
