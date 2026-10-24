# logHalfDensity_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b12787e4-2961-85f4-2eab-e76eaccce9ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13cb9a0e-6c86-1b19-5824-ef64d11b9fd9",
  "kind": "theorem",
  "lexical_name": "logHalfDensity_integrableOn",
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
  "slug": "loghalfdensity-integrableon--c3a4da1845632db2f0b1f745",
  "source": {
    "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a4da1845632db2f0b1f74586a44ce0103d1b857f1fb42c07265a4158d5d209",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13cb9a0e-6c86-1b19-5824-ef64d11b9fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logHalfDensity_integrableOn :
    IntegrableOn logHalfDensity (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by
    rw [logHalfDensity_integral]
    norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c7b4cd04c51b8e46062599a379f6c6613880cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
