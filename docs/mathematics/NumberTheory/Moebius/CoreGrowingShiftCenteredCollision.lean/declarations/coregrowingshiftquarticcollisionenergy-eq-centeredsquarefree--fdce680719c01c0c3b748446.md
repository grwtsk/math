# coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4103af-b221-231f-f9a3-f4322de5d958",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree",
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
  "slug": "coregrowingshiftquarticcollisionenergy-eq-centeredsquarefree--fdce680719c01c0c3b748446",
  "source": {
    "blob": "5fa2a73c532eac6b64535506b833fbf1234f4398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdce680719c01c0c3b748446d472f3b016bb87e72dec910e05105cdff37d40c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4103af-b221-231f-f9a3-f4322de5d958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticCollisionEnergy_eq_centeredSquarefree
    (j : ℕ) :
    coreGrowingShiftQuarticCollisionEnergy j =
      coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy j := by
  unfold coreGrowingShiftQuarticCollisionEnergy
    coreGrowingShiftQuarticCenteredSquarefreeCollisionEnergy
  apply Finset.sum_congr rfl
  intro t _ht
  apply Finset.sum_congr rfl
  intro k _hk
  let h : ℕ := harmonicShiftLower j t + k
  have hh : 0 < h := by
    dsimp [h]
    exact activeQuarticCollisionShift_pos j t k
  calc
    mertensTwoPointQuarticCollisionUpper h (t + 1) =
      mertensTwoPointQuarticCollisionProgression h (t + 1) :=
        mertensTwoPointQuarticCollisionUpper_eq_progression hh
    _ = mertensTwoPointQuarticCenteredCollision h (t + 1) :=
      mertensTwoPointQuarticCollisionProgression_eq_centered h (t + 1)
    _ = mertensTwoPointQuarticCenteredSquarefreeCollision h (t + 1) :=
      mertensTwoPointQuarticCenteredCollision_eq_squarefree h (t + 1)

/-- Source-facing collision-line compensation in the canonical centered
squarefree progression coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftCenteredCollision.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa2a73c532eac6b64535506b833fbf1234f4398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
