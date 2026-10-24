# actualPeriodicEdgeEndpointMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098759f4-8461-f680-b401-9d560f34eaa3",
  "kind": "theorem",
  "lexical_name": "actualPeriodicEdgeEndpointMass_le",
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
  "slug": "actualperiodicedgeendpointmass-le--04233640e4ad437d37c5c3ee",
  "source": {
    "blob": "5149a9d18c65b6412a4d6139b41b7a742e83c510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 406,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04233640e4ad437d37c5c3eec8adb284494473b6fb0b32d86ab6f7fb1d519734",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098759f4-8461-f680-b401-9d560f34eaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicEdgeEndpointMass_le {A u : ℝ} (hA : 91 ≤ A) (hu : 2 ≤ u) :
    actualPeriodicEdgeEndpointMass A u ≤
      134 * (Real.log 4 + 4 + Real.log 2) * Real.exp A / u ^ 2 := by
  have h := actual_weighted_norm_le hA hu (fun t => actualPeriodicPhysicalCellProfile A t u)
    (profile_time_continuous (by linarith : 0 < A) u)
  unfold actualPeriodicEdgeEndpointMass
  apply h.trans
  calc
    _ ≤ 2 * (Real.log 4 + 4 + Real.log 2) * (A ^ 4 / 8) *
        (536 * Real.exp A / (A ^ 4 * u ^ 2)) :=
      mul_le_mul_of_nonneg_left (actualPeriodicProfile_time_norm_le hA hu) (by positivity)
    _ = _ := by field_simp; ring

/-- The full transported derivative, with every lower jet retained, has its edge budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5149a9d18c65b6412a4d6139b41b7a742e83c510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
