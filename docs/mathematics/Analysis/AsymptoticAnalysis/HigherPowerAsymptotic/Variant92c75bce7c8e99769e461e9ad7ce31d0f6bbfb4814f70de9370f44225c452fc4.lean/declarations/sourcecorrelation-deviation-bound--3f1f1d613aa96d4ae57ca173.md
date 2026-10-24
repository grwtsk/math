# sourceCorrelation_deviation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84adf0b4-73bc-9f10-f3d8-fe71302ebd16",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deviation_bound",
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
  "slug": "sourcecorrelation-deviation-bound--3f1f1d613aa96d4ae57ca173",
  "source": {
    "blob": "d86a63914c1cae8e84787d796f5bd7c5cc25230b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1f1d613aa96d4ae57ca17391aa31b8b1907590b9d75a0495eb9384b49949c6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84adf0b4-73bc-9f10-f3d8-fe71302ebd16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deviation_bound (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  by_cases ht : 0 ≤ t
  · exact sourceCorrelation_deviation_bound_nonneg A t hA ht
  · have h := sourceCorrelation_deviation_bound_nonneg A (-t) hA (by linarith)
    simpa only [sourceCorrelation_even A t, neg_sq] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86a63914c1cae8e84787d796f5bd7c5cc25230b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
