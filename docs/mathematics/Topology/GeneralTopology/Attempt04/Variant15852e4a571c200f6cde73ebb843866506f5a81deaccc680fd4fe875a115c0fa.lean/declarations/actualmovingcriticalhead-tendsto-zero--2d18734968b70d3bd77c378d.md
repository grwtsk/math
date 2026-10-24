# actualMovingCriticalHead_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9994314-f16b-d68c-9189-728d634ca2d2",
  "kind": "theorem",
  "lexical_name": "actualMovingCriticalHead_tendsto_zero",
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
  "slug": "actualmovingcriticalhead-tendsto-zero--2d18734968b70d3bd77c378d",
  "source": {
    "blob": "90508c716e5dd28b2cc45f55b18062c36d54ca68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d18734968b70d3bd77c378d55ca2dda225725878f52a5ebca28b43024307a06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9994314-f16b-d68c-9189-728d634ca2d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMovingCriticalHead_tendsto_zero :
    Tendsto actualMovingCriticalHead atTop (𝓝 0) := by
  have hg := actualCenteredMangoldtLogError_tendsto_zero.comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have hnorm := hg.abs.const_mul (Real.sqrt 7 / 2)
  simp only [abs_zero, mul_zero] at hnorm
  exact squeeze_zero_norm' (by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using
      actualMovingCriticalHead_abs_le hA) hnorm

/-- The exact increment interaction differs from the original covariance by a vanishing head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant15852e4a571c200f6cde73ebb843866506f5a81deaccc680fd4fe875a115c0fa.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90508c716e5dd28b2cc45f55b18062c36d54ca68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
