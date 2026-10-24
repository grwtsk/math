# actualCriticalUpperColumnTrace_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e360096f-76af-f70e-f235-661974edd779",
  "kind": "theorem",
  "lexical_name": "actualCriticalUpperColumnTrace_tendsto_zero",
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
  "slug": "actualcriticaluppercolumntrace-tendsto-zero--804718a4a804f2488a20a8bc",
  "source": {
    "blob": "8ee0ea0ecbd710a847ea3086033dac7c30653189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant8f843badf9fbcdc794167c55c364a9d725b193c7f1a74aed2ef0fb0ad5354438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804718a4a804f2488a20a8bc1ad875a620c150e862ead0414bd7be52b08755ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant8f843badf9fbcdc794167c55c364a9d725b193c7f1a74aed2ef0fb0ad5354438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e360096f-76af-f70e-f235-661974edd779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalUpperColumnTrace_tendsto_zero :
    Tendsto actualCriticalUpperColumnTrace atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  have he : Tendsto (fun A : ℝ => actualCriticalUpperColumnConstant / A ^ 4)
      atTop (𝓝 (0 : ℝ)) := by
    have h := ((tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).pow 4).const_mul
        actualCriticalUpperColumnConstant
    simpa only [inv_pow, div_eq_mul_inv, zero_pow (by norm_num : 4 ≠ 0), mul_zero] using h
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact actualCriticalUpperColumnTrace_abs_le hA

/-- The full adjusted interior is asymptotic to negative original work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant8f843badf9fbcdc794167c55c364a9d725b193c7f1a74aed2ef0fb0ad5354438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variant8f843badf9fbcdc794167c55c364a9d725b193c7f1a74aed2ef0fb0ad5354438.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ee0ea0ecbd710a847ea3086033dac7c30653189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
