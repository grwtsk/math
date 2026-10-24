# actualAdjointColumnPrimitive_sub_criticalMain_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea904ea5-d7f4-b1ad-6075-629f10a64496",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_sub_criticalMain_eq",
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
  "slug": "actualadjointcolumnprimitive-sub-criticalmain-eq--f78738d62a4f10c5cfb0f055",
  "source": {
    "blob": "160385ef5a18a7e891dc7f1bd817dcd0d4b154a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Varianta0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f78738d62a4f10c5cfb0f055f679ea42ac950b7e865cea7af9ab425509192d4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Varianta0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea904ea5-d7f4-b1ad-6075-629f10a64496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_sub_criticalMain_eq {A : ℝ} (hA : 1 ≤ A) :
    actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) -
      actualCriticalColumnTraceMain A =
        -2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
          (actualCenteredHalfUpperDefect A - actualCenteredColumnTerminalTrace A) := by
  rw [actualAdjointColumnPrimitive_at_lower_closed_inventory hA]
  unfold actualCriticalColumnTraceMain actualCenteredHalfUpperDefect
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualCenteredHalfUpperDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Varianta0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Varianta0e07a5da2b54ae5f2dc5dce24b9003a40768c5f9669d5d670895fe7ed02528e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `160385ef5a18a7e891dc7f1bd817dcd0d4b154a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
