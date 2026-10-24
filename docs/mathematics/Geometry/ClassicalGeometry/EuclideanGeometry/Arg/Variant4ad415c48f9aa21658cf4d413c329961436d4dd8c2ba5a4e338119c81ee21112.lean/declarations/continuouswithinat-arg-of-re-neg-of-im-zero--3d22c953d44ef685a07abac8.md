# continuousWithinAt_arg_of_re_neg_of_im_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bd97dd0-b596-22b9-c630-da676945c25f",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_arg_of_re_neg_of_im_zero",
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
  "slug": "continuouswithinat-arg-of-re-neg-of-im-zero--3d22c953d44ef685a07abac8",
  "source": {
    "blob": "e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 582,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d22c953d44ef685a07abac8b3c8b759bef096d8718de75a35ab298340e70581",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bd97dd0-b596-22b9-c630-da676945c25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_arg_of_re_neg_of_im_zero {z : ℂ} (hre : z.re < 0) (him : z.im = 0) :
    ContinuousWithinAt arg { z : ℂ | 0 ≤ z.im } z := by
  have : arg =ᶠ[𝓝[{ z : ℂ | 0 ≤ z.im }] z] fun x => Real.arcsin ((-x).im / abs x) + π := by
    have : ∀ᶠ x : ℂ in 𝓝 z, x.re < 0 := continuous_re.tendsto z (gt_mem_nhds hre)
    filter_upwards [self_mem_nhdsWithin (s := { z : ℂ | 0 ≤ z.im }),
      mem_nhdsWithin_of_mem_nhds this] with _ him hre
    rw [arg, if_neg hre.not_le, if_pos him]
  refine' ContinuousWithinAt.congr_of_eventuallyEq _ this _
  · refine'
      (Real.continuousAt_arcsin.comp_continuousWithinAt
            ((continuous_im.continuousAt.comp_continuousWithinAt continuousWithinAt_neg).div
              continuous_abs.continuousWithinAt _)).add
        tendsto_const_nhds
    lift z to ℝ using him
    simpa using hre.ne
  · rw [arg, if_neg hre.not_le, if_pos him.ge]
#align complex.continuous_within_at_arg_of_re_neg_of_im_zero Complex.continuousWithinAt_arg_of_re_neg_of_im_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant4ad415c48f9aa21658cf4d413c329961436d4dd8c2ba5a4e338119c81ee21112.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b724a5695ccbff3bee2b92c43adb9ed80fa7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
