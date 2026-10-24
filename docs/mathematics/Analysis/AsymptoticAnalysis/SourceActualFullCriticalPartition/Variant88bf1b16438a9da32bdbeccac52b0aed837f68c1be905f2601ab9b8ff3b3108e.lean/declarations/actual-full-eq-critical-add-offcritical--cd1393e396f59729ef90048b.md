# actual_full_eq_critical_add_offcritical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49122319-1727-b204-1e05-668846d1e84f",
  "kind": "theorem",
  "lexical_name": "actual_full_eq_critical_add_offcritical",
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
  "slug": "actual-full-eq-critical-add-offcritical--cd1393e396f59729ef90048b",
  "source": {
    "blob": "6a8d5981c4b59f5e61ee74e8914b6c1ad8e089ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variant88bf1b16438a9da32bdbeccac52b0aed837f68c1be905f2601ab9b8ff3b3108e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd1393e396f59729ef90048b47e5059b7113486435634177a2c7ab3d57b0994c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variant88bf1b16438a9da32bdbeccac52b0aed837f68c1be905f2601ab9b8ff3b3108e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49122319-1727-b204-1e05-668846d1e84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_eq_critical_add_offcritical (A : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A =
      actualFullCriticalContribution A + actualFullOffcriticalContribution A := by
  unfold actualFullCriticalContribution actualFullOffcriticalContribution
  rw [← (critical_summable A hA).tsum_add (offcritical_summable A hA)]
  unfold actualFullZeroContribution
  apply tsum_congr
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2 <;> simp [hρ]

/-- Critical positivity is transferred to the COMPLETE actual series, without a gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variant88bf1b16438a9da32bdbeccac52b0aed837f68c1be905f2601ab9b8ff3b3108e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variant88bf1b16438a9da32bdbeccac52b0aed837f68c1be905f2601ab9b8ff3b3108e.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8d5981c4b59f5e61ee74e8914b6c1ad8e089ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
