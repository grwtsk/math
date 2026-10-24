# endpointScale_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c09bccda-30d6-6ec5-7907-eba8cfd92c33",
  "kind": "theorem",
  "lexical_name": "endpointScale_antitone",
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
  "slug": "endpointscale-antitone--925a1348b99a621e0cd35514",
  "source": {
    "blob": "5a105478dc0633168bea871d952c04311c116aa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualSharpZeroTail/Variantbda02c0910c904a04410077963bc67842b7ac843f2ce65d5cc8bc2f15f1ca2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:925a1348b99a621e0cd355144e948b3eaeb01ee51e420cc1649aeccfcae7e788",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualSharpZeroTail/Variantbda02c0910c904a04410077963bc67842b7ac843f2ce65d5cc8bc2f15f1ca2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09bccda-30d6-6ec5-7907-eba8cfd92c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointScale_antitone {v w : ℝ} (hv : 0 < v) (hvw : v ≤ w) :
    endpointScale w ≤ endpointScale v := by
  have h1 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10) hv hvw
  have h2 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 45)
    (pow_pos hv 2) (pow_le_pow_left₀ hv.le hvw 2)
  have h3 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 105)
    (pow_pos hv 3) (pow_le_pow_left₀ hv.le hvw 3)
  have h4 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 105)
    (pow_pos hv 4) (pow_le_pow_left₀ hv.le hvw 4)
  unfold endpointScale
  linarith

/-- A genuine lower height improves the entire endpoint jet train without deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualSharpZeroTail/Variantbda02c0910c904a04410077963bc67842b7ac843f2ce65d5cc8bc2f15f1ca2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualSharpZeroTail/Variantbda02c0910c904a04410077963bc67842b7ac843f2ce65d5cc8bc2f15f1ca2c6.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a105478dc0633168bea871d952c04311c116aa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
