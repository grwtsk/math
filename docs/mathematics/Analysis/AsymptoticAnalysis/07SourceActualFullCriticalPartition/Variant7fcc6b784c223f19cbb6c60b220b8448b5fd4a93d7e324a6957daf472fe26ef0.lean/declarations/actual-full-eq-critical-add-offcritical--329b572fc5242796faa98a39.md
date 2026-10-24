# actual_full_eq_critical_add_offcritical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3761bf4b-3010-af1e-3c4e-d9ddef374504",
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
  "slug": "actual-full-eq-critical-add-offcritical--329b572fc5242796faa98a39",
  "source": {
    "blob": "7fd9578be037b2fc69f9c15b77926addd868c1fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant7fcc6b784c223f19cbb6c60b220b8448b5fd4a93d7e324a6957daf472fe26ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329b572fc5242796faa98a3963404c5122e148150180d808bd4b829fab85e399",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant7fcc6b784c223f19cbb6c60b220b8448b5fd4a93d7e324a6957daf472fe26ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3761bf4b-3010-af1e-3c4e-d9ddef374504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

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
  by_cases hρ : (ρ : ℂ).re = 1 / 2 <;>
    simp only [hρ, if_true, if_false, add_zero, zero_add]

/-- Critical positivity is transferred to the COMPLETE actual series, without a gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant7fcc6b784c223f19cbb6c60b220b8448b5fd4a93d7e324a6957daf472fe26ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/07SourceActualFullCriticalPartition/Variant7fcc6b784c223f19cbb6c60b220b8448b5fd4a93d7e324a6957daf472fe26ef0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd9578be037b2fc69f9c15b77926addd868c1fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
