# continuousAt_arg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1edc2004-d6ee-d435-73b4-2958753adc62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b3bf755-4ad7-9168-99f7-396d4afc7b6b",
  "kind": "theorem",
  "lexical_name": "continuousAt_arg",
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
  "slug": "continuousat-arg--29221c3ef3414d07c86850b4",
  "source": {
    "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 534,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29221c3ef3414d07c86850b47b2acaa52356199efe577de271a61aca8ce08f25",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b3bf755-4ad7-9168-99f7-396d4afc7b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_arg (h : 0 < x.re ∨ x.im ≠ 0) : ContinuousAt arg x := by
  have h₀ : abs x ≠ 0 := by
    rw [abs.ne_zero_iff]
    rintro rfl
    simp at h
  rw [← lt_or_lt_iff_ne] at h
  rcases h with (hx_re | hx_im | hx_im)
  exacts [(Real.continuousAt_arcsin.comp
          (continuous_im.continuousAt.div continuous_abs.continuousAt h₀)).congr
      (arg_eq_nhds_of_re_pos hx_re).symm,
    (Real.continuous_arccos.continuousAt.comp
            (continuous_re.continuousAt.div continuous_abs.continuousAt h₀)).neg.congr
      (arg_eq_nhds_of_im_neg hx_im).symm,
    (Real.continuous_arccos.continuousAt.comp
          (continuous_re.continuousAt.div continuous_abs.continuousAt h₀)).congr
      (arg_eq_nhds_of_im_pos hx_im).symm]
#align complex.continuous_at_arg Complex.continuousAt_arg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b330a88367a3f32e3f4e8c2e6224f3931fe9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
