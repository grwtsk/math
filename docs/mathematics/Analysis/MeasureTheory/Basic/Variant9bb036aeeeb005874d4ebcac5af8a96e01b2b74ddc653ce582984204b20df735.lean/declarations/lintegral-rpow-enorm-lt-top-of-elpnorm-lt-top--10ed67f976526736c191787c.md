# lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d59c4c92-3a5c-f953-7ed3-f6d9f936e4e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:051014a7-48ec-1f6b-7911-b98f6d84e3bb",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top",
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
  "slug": "lintegral-rpow-enorm-lt-top-of-elpnorm-lt-top--10ed67f976526736c191787c",
  "source": {
    "blob": "db81327ad7a9cc78cdb2684da7668ca57deea373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ed67f976526736c191787cd1f0983846b5bf9098468ef4a238df6b2cff1047",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051014a7-48ec-1f6b-7911-b98f6d84e3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_enorm_lt_top_of_eLpNorm_lt_top
    {f : α → ε} (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    (hfp : eLpNorm f p μ < ∞) :
    ∫⁻ a, ‖f a‖ₑ ^ p.toReal ∂μ < ∞ := by
  apply lintegral_rpow_enorm_lt_top_of_eLpNorm'_lt_top
  · exact ENNReal.toReal_pos hp_ne_zero hp_ne_top
  · simpa [eLpNorm_eq_eLpNorm' hp_ne_zero hp_ne_top (aestronglyMeasurable_of_eLpNorm_ne_top hfp.ne)]
      using hfp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9bb036aeeeb005874d4ebcac5af8a96e01b2b74ddc653ce582984204b20df735.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db81327ad7a9cc78cdb2684da7668ca57deea373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
