# arg_eq_nhds_of_re_neg_of_im_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e90168af-a0e9-4c75-6169-2ae2747d0914",
  "kind": "theorem",
  "lexical_name": "arg_eq_nhds_of_re_neg_of_im_pos",
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
  "slug": "arg-eq-nhds-of-re-neg-of-im-pos--0f58e45760c45bd8b56f2663",
  "source": {
    "blob": "54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 565,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f58e45760c45bd8b56f26636db05151571e7edb270d3720e71b4677e150ec57",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90168af-a0e9-4c75-6169-2ae2747d0914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_eq_nhds_of_re_neg_of_im_pos (hx_re : x.re < 0) (hx_im : 0 < x.im) :
    arg =ᶠ[𝓝 x] fun x => Real.arcsin ((-x).im / ‖x‖) + π := by
  suffices h_forall_nhds : ∀ᶠ y : ℂ in 𝓝 x, y.re < 0 ∧ 0 < y.im from
    h_forall_nhds.mono fun y hy => arg_of_re_neg_of_im_nonneg hy.1 hy.2.le
  refine IsOpen.eventually_mem ?_ (⟨hx_re, hx_im⟩ : x.re < 0 ∧ 0 < x.im)
  exact
    IsOpen.and (isOpen_lt continuous_re continuous_zero) (isOpen_lt continuous_zero continuous_im)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
