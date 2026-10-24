# tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a45ffd6-a549-1c1e-e25d-d33a281721e5",
  "kind": "theorem",
  "lexical_name": "tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero",
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
  "slug": "tendsto-log-nhdswithin-im-neg-of-re-neg-of-im-zero--c252082c744ac064dee9c748",
  "source": {
    "blob": "40d9bf67fa360d69a9eab0cc9cea2fbe7418a534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c252082c744ac064dee9c74888540ab1843dd3da0db124533c3c97bd8c76b383",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a45ffd6-a549-1c1e-e25d-d33a281721e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_nhdsWithin_im_neg_of_re_neg_of_im_zero {z : ℂ} (hre : z.re < 0)
    (him : z.im = 0) : Tendsto log (𝓝[{ z : ℂ | z.im < 0 }] z) (𝓝 <| Real.log ‖z‖ - π * I) := by
  convert
    (continuous_ofReal.continuousAt.comp_continuousWithinAt
            (continuous_norm.continuousWithinAt.log _)).tendsto.add
      (((continuous_ofReal.tendsto _).comp <|
            tendsto_arg_nhdsWithin_im_neg_of_re_neg_of_im_zero hre him).mul
        tendsto_const_nhds) using 1
  · simp [sub_eq_add_neg]
  · lift z to ℝ using him
    simpa using hre.ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d9bf67fa360d69a9eab0cc9cea2fbe7418a534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
