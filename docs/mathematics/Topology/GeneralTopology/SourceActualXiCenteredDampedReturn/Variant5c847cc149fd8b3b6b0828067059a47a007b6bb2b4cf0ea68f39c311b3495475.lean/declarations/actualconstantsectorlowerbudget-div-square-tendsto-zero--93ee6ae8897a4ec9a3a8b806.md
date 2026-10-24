# actualConstantSectorLowerBudget_div_square_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba963d23-7d59-d77f-05b0-8ff88c390012",
  "kind": "theorem",
  "lexical_name": "actualConstantSectorLowerBudget_div_square_tendsto_zero",
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
  "slug": "actualconstantsectorlowerbudget-div-square-tendsto-zero--93ee6ae8897a4ec9a3a8b806",
  "source": {
    "blob": "b27fc819065b5fb07075ed71f97960f4dda3eb2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ee6ae8897a4ec9a3a8b806cfe6f94c8cb5c61c7dd8cdc1c78d6aa726ee026e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba963d23-7d59-d77f-05b0-8ff88c390012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualConstantSectorLowerBudget_div_square_tendsto_zero (q : ℝ) :
    Tendsto (fun A : ℝ => actualConstantSectorLowerBudget q / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
  have h := ((tendsto_inv_atTop_zero :
    Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ))).pow 2).const_mul
      (actualConstantSectorLowerBudget q)
  simpa only [inv_pow, div_eq_mul_inv, zero_pow (by norm_num : 2 ≠ 0), mul_zero] using h

/-- The exact centered actual return is asymptotically equal to the original actual tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b27fc819065b5fb07075ed71f97960f4dda3eb2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
