# HasDerivWithinAt.liminf_right_norm_slope_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2fa2c7202438671aff30a60a6ebf5214b64d30a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0202be7d-87b5-3a2d-9b53-77b7518c6cc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f2a5301-9b64-acbc-2f5c-72e6c223bc69",
  "kind": "theorem",
  "lexical_name": "HasDerivWithinAt.liminf_right_norm_slope_le",
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
  "slug": "hasderivwithinat-liminf-right-norm-slope-le--601acb0b741e2c875ad8afbe",
  "source": {
    "blob": "e2fa2c7202438671aff30a60a6ebf5214b64d30a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601acb0b741e2c875ad8afbe474264b5c58d0de6557f932c35a0b18c337062e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f2a5301-9b64-acbc-2f5c-72e6c223bc69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDerivWithinAt.liminf_right_norm_slope_le (hf : HasDerivWithinAt f f' (Ici x) x)
    (hr : ‖f'‖ < r) : ∃ᶠ z in 𝓝[>] x, ‖z - x‖⁻¹ * ‖f z - f x‖ < r :=
  (hf.Ioi_of_Ici.limsup_norm_slope_le hr).frequently
#align has_deriv_within_at.liminf_right_norm_slope_le HasDerivWithinAt.liminf_right_norm_slope_le

/-- If `f` has derivative `f'` within `(x, +∞)` at `x`, then for any `r > ‖f'‖` the ratio
`(‖f z‖ - ‖f x‖) / (z - x)` is frequently less than `r` as `z → x+0`.
In other words, the limit inferior of this ratio as `z` tends to `x+0`
is less than or equal to `‖f'‖`.

See also

* `HasDerivWithinAt.limsup_norm_slope_le` for a stronger version using
  limit superior and any set `s`;
* `HasDerivWithinAt.liminf_right_norm_slope_le` for a stronger version using
  `‖f z - f xp‖` instead of `‖f z‖ - ‖f x‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Slope/Variant5463bdca17221138a8f1acd9dca75ec76fe51d9d56c8b81fdebe2e37de3a531d.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2fa2c7202438671aff30a60a6ebf5214b64d30a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
