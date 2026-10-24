# actual_periodic_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:432ebb6c-17a5-2427-549b-030577430c06",
  "kind": "theorem",
  "lexical_name": "actual_periodic_size",
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
  "slug": "actual-periodic-size--b56e33928c3a0d850c1c65c8",
  "source": {
    "blob": "5149a9d18c65b6412a4d6139b41b7a742e83c510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56e33928c3a0d850c1c65c8464465fb26f98d5d4595f7a6fe88346960506bef",
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

Occurrence: `result:432ebb6c-17a5-2427-549b-030577430c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_periodic_size {A : ℝ} (hA : 1 ≤ A) :
    (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16 ≤ A ^ 4 / 8 := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hU0 : 0 ≤ (vaughanCutoff A : ℝ) := Nat.cast_nonneg _
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5149a9d18c65b6412a4d6139b41b7a742e83c510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
