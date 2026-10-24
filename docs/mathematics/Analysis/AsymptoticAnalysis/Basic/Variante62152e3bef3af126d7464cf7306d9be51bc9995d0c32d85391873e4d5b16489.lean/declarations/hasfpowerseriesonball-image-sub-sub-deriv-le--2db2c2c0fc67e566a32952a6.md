# HasFPowerSeriesOnBall.image_sub_sub_deriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd0a45f0-80ee-000a-9b84-717628b795cd",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesOnBall.image_sub_sub_deriv_le",
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
  "slug": "hasfpowerseriesonball-image-sub-sub-deriv-le--2db2c2c0fc67e566a32952a6",
  "source": {
    "blob": "f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 802,
    "line": 791,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2db2c2c0fc67e566a32952a6dd33b0dee03509f264612bb82aad8c9d776f5faf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd0a45f0-80ee-000a-9b84-717628b795cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–802.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesOnBall.image_sub_sub_deriv_le (hf : HasFPowerSeriesOnBall f p x r)
    (hr : r' < r) :
    ∃ C, ∀ (y) (_ : y ∈ EMetric.ball x r') (z) (_ : z ∈ EMetric.ball x r'),
      ‖f y - f z - p 1 fun _ => y - z‖ ≤ C * max ‖y - x‖ ‖z - x‖ * ‖y - z‖ := by
  simpa only [isBigO_principal, mul_assoc, norm_mul, norm_norm, Prod.forall, EMetric.mem_ball,
    Prod.edist_eq, max_lt_iff, and_imp, @forall_swap (_ < _) E] using
    hf.isBigO_image_sub_image_sub_deriv_principal hr
#align has_fpower_series_on_ball.image_sub_sub_deriv_le HasFPowerSeriesOnBall.image_sub_sub_deriv_le

/-- If `f` has formal power series `∑ n, pₙ` at `x`, then
`f y - f z - p 1 (fun _ ↦ y - z) = O(‖(y, z) - (x, x)‖ * ‖y - z‖)` as `(y, z) → (x, x)`.
In particular, `f` is strictly differentiable at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante62152e3bef3af126d7464cf7306d9be51bc9995d0c32d85391873e4d5b16489.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42d3dce53c84fc9f0fbd5e05ecccdb6b8f44796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
