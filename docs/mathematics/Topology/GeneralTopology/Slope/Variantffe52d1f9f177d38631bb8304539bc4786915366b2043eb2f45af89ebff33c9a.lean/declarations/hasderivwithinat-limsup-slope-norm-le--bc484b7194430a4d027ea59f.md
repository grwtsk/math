# HasDerivWithinAt.limsup_slope_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c7d7950-2fb6-7635-9a2a-d35af2160c97",
  "kind": "theorem",
  "lexical_name": "HasDerivWithinAt.limsup_slope_norm_le",
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
  "slug": "hasderivwithinat-limsup-slope-norm-le--bc484b7194430a4d027ea59f",
  "source": {
    "blob": "379585a1ff78c666b0e0b68f37f83d60e417e80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc484b7194430a4d027ea59f5f0f96c90b92b86f2d7cd1e3690c9c0a2bc41be7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c7d7950-2fb6-7635-9a2a-d35af2160c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDerivWithinAt.limsup_slope_norm_le (hf : HasDerivWithinAt f f' s x) (hr : ‖f'‖ < r) :
    ∀ᶠ z in 𝓝[s] x, ‖z - x‖⁻¹ * (‖f z‖ - ‖f x‖) < r := by
  apply (hf.limsup_norm_slope_le hr).mono
  intro z hz
  refine' lt_of_le_of_lt (mul_le_mul_of_nonneg_left (norm_sub_norm_le _ _) _) hz
  exact inv_nonneg.2 (norm_nonneg _)
#align has_deriv_within_at.limsup_slope_norm_le HasDerivWithinAt.limsup_slope_norm_le

/-- If `f` has derivative `f'` within `(x, +∞)` at `x`, then for any `r > ‖f'‖` the ratio
`‖f z - f x‖ / ‖z - x‖` is frequently less than `r` as `z → x+0`.
In other words, the limit inferior of this ratio as `z` tends to `x+0`
is less than or equal to `‖f'‖`. See also `HasDerivWithinAt.limsup_norm_slope_le`
for a stronger version using limit superior and any set `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Slope/Variantffe52d1f9f177d38631bb8304539bc4786915366b2043eb2f45af89ebff33c9a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379585a1ff78c666b0e0b68f37f83d60e417e80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
