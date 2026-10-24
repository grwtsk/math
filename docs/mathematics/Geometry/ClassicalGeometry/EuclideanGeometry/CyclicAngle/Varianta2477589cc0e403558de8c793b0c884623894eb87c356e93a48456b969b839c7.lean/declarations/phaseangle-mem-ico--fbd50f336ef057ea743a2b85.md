# phaseAngle_mem_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7caca580-fdcd-e601-2b41-293150a0c2b4",
  "kind": "theorem",
  "lexical_name": "phaseAngle_mem_Ico",
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
  "slug": "phaseangle-mem-ico--fbd50f336ef057ea743a2b85",
  "source": {
    "blob": "d40a21e9a36852d7c0b6996a393ce60aafc34c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd50f336ef057ea743a2b8501d07f7bb0f3377d6f2575069a7b57a766ad9495",
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

Occurrence: `result:7caca580-fdcd-e601-2b41-293150a0c2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem phaseAngle_mem_Ico (t : NormalizedPhase) :
    phaseAngle t.value ∈ Set.Ico (0 : ℝ) (2 * Real.pi) := by
  constructor
  · exact mul_nonneg Real.two_pi_pos.le t.nonnegative
  · simpa only [phaseAngle, mul_one] using
      (mul_lt_mul_of_pos_left t.lt_one Real.two_pi_pos)

/-! ## Exact theorems: the signed `Real.Angle.toReal` coordinate cut -/

/--
On the first closed half-turn, the signed representative chosen by
`Real.Angle.toReal` is the nonnegative radian lift itself.  The endpoint is
included because `toReal` uses the interval `(-π, π]`, so the half-turn is
represented by `π`, not `-π`.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40a21e9a36852d7c0b6996a393ce60aafc34c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
