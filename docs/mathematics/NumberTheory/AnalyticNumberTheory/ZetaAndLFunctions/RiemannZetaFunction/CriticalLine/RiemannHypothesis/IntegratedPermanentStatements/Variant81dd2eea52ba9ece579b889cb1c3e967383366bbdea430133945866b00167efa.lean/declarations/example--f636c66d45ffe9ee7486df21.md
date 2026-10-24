# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f7e484f24b4f5d4650284bd44140194821a6b56fd294ed246f610b062d3f6fb",
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
  "slug": "example--f636c66d45ffe9ee7486df21",
  "source": {
    "blob": "57d0a02ba71cddb01ca78d975a944ca42fd4ca0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1629,
    "line": 1603,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant81dd2eea52ba9ece579b889cb1c3e967383366bbdea430133945866b00167efa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f636c66d45ffe9ee7486df215ff0ec980c3ee7bc6daf36db846a3ffbf2d4709b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant81dd2eea52ba9ece579b889cb1c3e967383366bbdea430133945866b00167efa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f7e484f24b4f5d4650284bd44140194821a6b56fd294ed246f610b062d3f6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1603–1629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (p : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) :
    PrimeSupportedBlock.primeSupportedBlock A (insert p P) =
      PrimeSupportedBlock.primeSupportedBlock A P -
        2 * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g p then 1 else 0) *
            rectangularContribution P g ((⌊Real.exp A⌋₊ / g) / p) (⌊Real.exp A⌋₊ / g)
              (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  primeSupportedBlock_insert A P p hP hp hpP

end PrimeInsertionStatements


namespace SourceRealThetaIntegrationStatements
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaKernel
open FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative
open FormalResearch.RiemannHypothesis.SourceComparison.KernelVariation
open FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open InnerPrimitiveTransport
open CorrelationSecondDerivative CorrelationThirdDerivative SamplingSecondDerivative
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant81dd2eea52ba9ece579b889cb1c3e967383366bbdea430133945866b00167efa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant81dd2eea52ba9ece579b889cb1c3e967383366bbdea430133945866b00167efa.lean#L1603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d0a02ba71cddb01ca78d975a944ca42fd4ca0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
