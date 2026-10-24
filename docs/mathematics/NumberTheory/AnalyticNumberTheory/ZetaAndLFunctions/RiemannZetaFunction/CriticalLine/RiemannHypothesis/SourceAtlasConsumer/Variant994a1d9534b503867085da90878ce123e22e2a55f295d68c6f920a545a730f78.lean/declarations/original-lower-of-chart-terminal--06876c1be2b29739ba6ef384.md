# original_lower_of_chart_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4a0036e-acbc-f02d-147b-c682e182a367",
  "kind": "theorem",
  "lexical_name": "original_lower_of_chart_terminal",
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
  "slug": "original-lower-of-chart-terminal--06876c1be2b29739ba6ef384",
  "source": {
    "blob": "a72a6c4b8bfe1c5ad8d2f5f77bbdf5d3365f969b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAtlasConsumer/Variant994a1d9534b503867085da90878ce123e22e2a55f295d68c6f920a545a730f78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06876c1be2b29739ba6ef384c0b66aa05d08d4aa97a8c1aafbdd5c58e18d35fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAtlasConsumer/Variant994a1d9534b503867085da90878ce123e22e2a55f295d68c6f920a545a730f78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4a0036e-acbc-f02d-147b-c682e182a367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_chart_terminal (R B : ℝ) (hR : 1 ≤ R)
    (hchart : ∀ s : SmallCoordinate, s.1 ≤ (R ^ 2)⁻¹ →
      smallRepresentation.recover .fullTerminal s ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (SourceKapitzaReconstruction.originalPrefixFloor R)
        (SourcePairing.archimedeanMultiplier 0 + 2 - 2 * B -
          2 * SourceKapitzaReconstruction.continuousDefect R) ≤
        SourcePairing.sourceQuadraticValue Realization.explicitSecondDerivative A := by
  apply original_lower_of_corrected_terminal R B hR
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have ht := (native_full_terminal_tail_budget_iff R B hR).mpr hchart A hRA
  have he : combinedTerminalWork A + totalQuadraticWork A = terminalCost A :=
    combinedTerminal_eq_corrected A hA
  rwa [← he]

/-- No target estimate, source profile or cutoff is changed by this consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAtlasConsumer/Variant994a1d9534b503867085da90878ce123e22e2a55f295d68c6f920a545a730f78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAtlasConsumer/Variant994a1d9534b503867085da90878ce123e22e2a55f295d68c6f920a545a730f78.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72a6c4b8bfe1c5ad8d2f5f77bbdf5d3365f969b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
