# actualSecondProfile_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:881e9ba1-348c-cb57-c907-0fe3014484b6",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_eq_indicator",
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
  "slug": "actualsecondprofile-eq-indicator--d28d46274709fed9364263ad",
  "source": {
    "blob": "afe278b119066d3a3d33c4f93f3829a0f62ffa6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variant40a084c5a80dd2a616ac0a51f7663903514960f35ed67833b2fc7d0a5bb95340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28d46274709fed9364263adaee918fde7e205f7a8c18411f565f3e5a2df33f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variant40a084c5a80dd2a616ac0a51f7663903514960f35ed67833b2fc7d0a5bb95340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:881e9ba1-348c-cb57-c907-0fe3014484b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_eq_indicator (A : ℝ) (hA : 0 < A) :
    actualSecondProfile A = (Icc (-A) A).indicator (normalizedInteriorSecond A) := by
  funext x
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, actualSecondProfile_eq_interior A x hA hx]
  · rw [indicator_of_notMem hx]
    have hxu : x / A ∉ Icc (-1 : ℝ) 1 := (scaled_unit_interval_iff A x hA).not.mpr hx
    simp [actualSecondProfile, unitSecondEnergyProfile, indicator_of_notMem hxu]

/-- The actual weak profile is genuinely integrable before any test-function identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variant40a084c5a80dd2a616ac0a51f7663903514960f35ed67833b2fc7d0a5bb95340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variant40a084c5a80dd2a616ac0a51f7663903514960f35ed67833b2fc7d0a5bb95340.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe278b119066d3a3d33c4f93f3829a0f62ffa6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
