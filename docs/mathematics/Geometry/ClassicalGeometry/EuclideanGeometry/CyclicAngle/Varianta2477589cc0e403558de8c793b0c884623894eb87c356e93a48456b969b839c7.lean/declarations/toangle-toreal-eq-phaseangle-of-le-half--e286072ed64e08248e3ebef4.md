# toAngle_toReal_eq_phaseAngle_of_le_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f3204cc-196a-4d5a-59b7-aedb910b3d3d",
  "kind": "theorem",
  "lexical_name": "toAngle_toReal_eq_phaseAngle_of_le_half",
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
  "slug": "toangle-toreal-eq-phaseangle-of-le-half--e286072ed64e08248e3ebef4",
  "source": {
    "blob": "d40a21e9a36852d7c0b6996a393ce60aafc34c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e286072ed64e08248e3ebef4a51edd3bd64af88bb6f211613ba43e1f9cbfff19",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3204cc-196a-4d5a-59b7-aedb910b3d3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAngle_toReal_eq_phaseAngle_of_le_half (t : NormalizedPhase)
    (ht : t.value ≤ (1 / 2 : ℝ)) :
    (toAngle t).toReal = phaseAngle t.value := by
  unfold toAngle turnsToAngle
  apply Real.Angle.toReal_coe_eq_self_iff.2
  constructor
  · have hnonnegative : 0 ≤ phaseAngle t.value :=
      mul_nonneg Real.two_pi_pos.le t.nonnegative
    linarith [Real.pi_pos]
  · unfold phaseAngle
    calc
      2 * Real.pi * t.value ≤ 2 * Real.pi * (1 / 2 : ℝ) :=
        mul_le_mul_of_nonneg_left ht Real.two_pi_pos.le
      _ = Real.pi := by ring

/--
On the open second half-turn, the signed representative chosen by
`Real.Angle.toReal` is the canonical nonnegative radian lift minus `2π`.
Together with `toAngle_toReal_eq_phaseAngle_of_le_half`, this exhausts every
`NormalizedPhase`, whose stored value is always strictly below `1`.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40a21e9a36852d7c0b6996a393ce60aafc34c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
