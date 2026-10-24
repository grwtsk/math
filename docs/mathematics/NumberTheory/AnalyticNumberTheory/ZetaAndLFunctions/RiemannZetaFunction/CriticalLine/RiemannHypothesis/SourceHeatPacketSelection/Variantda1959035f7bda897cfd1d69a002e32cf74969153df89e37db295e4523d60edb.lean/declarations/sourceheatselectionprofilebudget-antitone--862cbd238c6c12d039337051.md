# sourceHeatSelectionProfileBudget_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:594e0ec1-fff8-54e2-70b0-f351fbbde7df",
  "kind": "theorem",
  "lexical_name": "sourceHeatSelectionProfileBudget_antitone",
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
  "slug": "sourceheatselectionprofilebudget-antitone--862cbd238c6c12d039337051",
  "source": {
    "blob": "7cee5931f6a009592ff635ab6fa46977689f0906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variantda1959035f7bda897cfd1d69a002e32cf74969153df89e37db295e4523d60edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:862cbd238c6c12d039337051ec8dcdca1fed1bc963bb5418abc1383503cb9854",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variantda1959035f7bda897cfd1d69a002e32cf74969153df89e37db295e4523d60edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:594e0ec1-fff8-54e2-70b0-f351fbbde7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceHeatSelectionProfileBudget_antitone (A tau : ℝ) (N : ℕ)
    {selected extended : ℕ → Finset ℚ}
    (hextend : ∀ j ∈ Finset.range (N + 1), selected j ⊆ extended j) :
    sourceHeatSelectionProfileBudget A tau N extended ≤
      sourceHeatSelectionProfileBudget A tau N selected := by
  unfold sourceHeatSelectionProfileBudget
  apply Finset.sum_le_sum
  intro j hj
  exact mul_le_mul_of_nonneg_left
    (sourceGroupedOmittedProfileBudget_antitone A (2 * j + 3) (hextend j hj))
    (abs_nonneg _)

/-- Nonnegative heat time gives a nonnegative sharp absolute Taylor budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variantda1959035f7bda897cfd1d69a002e32cf74969153df89e37db295e4523d60edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketSelection/Variantda1959035f7bda897cfd1d69a002e32cf74969153df89e37db295e4523d60edb.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cee5931f6a009592ff635ab6fa46977689f0906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
