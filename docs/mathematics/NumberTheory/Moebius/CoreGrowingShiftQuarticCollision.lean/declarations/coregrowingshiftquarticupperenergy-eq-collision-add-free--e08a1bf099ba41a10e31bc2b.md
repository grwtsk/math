# coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:143468f7-38b8-1cab-263a-65a9c28543e2",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free",
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
  "slug": "coregrowingshiftquarticupperenergy-eq-collision-add-free--e08a1bf099ba41a10e31bc2b",
  "source": {
    "blob": "78447c27a530ef64b83c0f353944c82a9606eb56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 248,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08a1bf099ba41a10e31bc2b197d4ca3b9f923001432a849ccf65c634ab18c5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:143468f7-38b8-1cab-263a-65a9c28543e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free
    (j : ℕ) :
    coreGrowingShiftQuarticUpperEnergy j =
      coreGrowingShiftQuarticCollisionEnergy j +
        coreGrowingShiftQuarticCollisionFreeEnergy j := by
  unfold coreGrowingShiftQuarticUpperEnergy
    coreGrowingShiftQuarticCollisionEnergy
    coreGrowingShiftQuarticCollisionFreeEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticUpperTriangle
          (harmonicShiftLower j t + k) (t + 1)) =
      ∑ t ∈ coreLongDeepDepths j,
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          (mertensTwoPointQuarticCollisionUpper
              (harmonicShiftLower j t + k) (t + 1) +
            mertensTwoPointQuarticCollisionFreeUpper
              (harmonicShiftLower j t + k) (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t _ht
      apply Finset.sum_congr rfl
      intro k _hk
      exact
        mertensTwoPointQuarticUpperTriangle_eq_collision_add_free
          (harmonicShiftLower j t + k) (t + 1)
    _ = ∑ t ∈ coreLongDeepDepths j,
        ((∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticCollisionUpper
              (harmonicShiftLower j t + k) (t + 1)) +
          (∑ k ∈ Finset.range (harmonicShiftCount j t),
            mertensTwoPointQuarticCollisionFreeUpper
              (harmonicShiftLower j t + k) (t + 1))) := by
      apply Finset.sum_congr rfl
      intro t _ht
      rw [Finset.sum_add_distrib]
    _ = _ := by
      rw [Finset.sum_add_distrib]

/-- Exact complete separation of the signed quartic off-diagonal packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78447c27a530ef64b83c0f353944c82a9606eb56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
