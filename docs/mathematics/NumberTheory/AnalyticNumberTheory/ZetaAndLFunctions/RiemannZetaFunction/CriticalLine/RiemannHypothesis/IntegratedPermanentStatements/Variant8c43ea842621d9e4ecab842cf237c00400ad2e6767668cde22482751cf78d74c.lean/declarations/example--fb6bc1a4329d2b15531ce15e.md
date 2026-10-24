# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17cd5a13240835dac83bae09e8ae4e267117f72c77d770518c27efeea76b0531",
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
  "slug": "example--fb6bc1a4329d2b15531ce15e",
  "source": {
    "blob": "bd14a4123a5f6d5db3df013d82d6ea7f25988703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3060,
    "line": 3030,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb6bc1a4329d2b15531ce15eeeb075de93d0261439ffc7ad7fbee44ef672b1f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17cd5a13240835dac83bae09e8ae4e267117f72c77d770518c27efeea76b0531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3030–3060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) (hG : 8 ≤ ⌊Real.exp A⌋₊ / max u v) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    |RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) -
        FiniteDensityInsertion.twoDensityFactor * RatioClassVariation.classMean A u v| ≤
      ((7 * Real.sqrt 2 / 12) *
        (1 / (Nat.sqrt leftCutoff : ℝ) + 1 / (Nat.sqrt rightCutoff : ℝ))) *
        (ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)) +
      (Real.sqrt 2 / 2) * (|b| + |c|) *
        ((KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
          ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)) :=
  classMean_two_insertions_error_le A u v hA hu hv hodd hG

end
end WeightedClassInsertionExactStatements

namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean#L3030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd14a4123a5f6d5db3df013d82d6ea7f25988703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
