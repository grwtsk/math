# actual_centered_Mangoldt_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0d197d7-1b18-8987-cdb2-c0d5b233de42",
  "kind": "theorem",
  "lexical_name": "actual_centered_Mangoldt_error_abs_le",
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
  "slug": "actual-centered-mangoldt-error-abs-le--e511ea9a6d33f18edcf4c3b1",
  "source": {
    "blob": "a6f6c515272f1e0668e2398d064d223e2106b244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e511ea9a6d33f18edcf4c3b1b099099cea105f4e410b25575f544eb0e6b8b688",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d197d7-1b18-8987-cdb2-c0d5b233de42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_Mangoldt_error_abs_le (t : ℝ) (ht : 0 ≤ t) :
    |mangoldtLogError t + Real.eulerMascheroniConstant| ≤
      Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have he := mangoldtLogError_abs_le t ht
  have hg0 : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hg := Real.eulerMascheroniConstant_lt_two_thirds
  have h := abs_add_le (mangoldtLogError t) Real.eulerMascheroniConstant
  rw [abs_of_nonneg hg0] at h
  linarith only [he, hg, h]

/-- Actual source normalization gives a positive early derivative on a growing log interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6f6c515272f1e0668e2398d064d223e2106b244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
