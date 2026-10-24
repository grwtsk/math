# signed_short_sampling_correction_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6c2dbec-42d5-3dd5-6d4d-2a3e10ad0f34",
  "kind": "theorem",
  "lexical_name": "signed_short_sampling_correction_abs_le",
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
  "slug": "signed-short-sampling-correction-abs-le--2055b2e60e25d0aaca6baa32",
  "source": {
    "blob": "fa224aad1fe3d249647cefff38f2c0ab6c16aa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2055b2e60e25d0aaca6baa32027ccda241088cd0e45a6cf3daa568063b2fae91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6c2dbec-42d5-3dd5-6d4d-2a3e10ad0f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_short_sampling_correction_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |signedShortSamplingCorrection A| ≤ shortSamplingBudget := by
  have hl := actual_shortLog_uniform_error A hA
  have hp := actual_shortPlain_uniform_error A hA
  unfold signedShortSamplingCorrection shortLogSamplingError shortPlainSamplingError
    shortSamplingBudget
  exact (abs_sub _ _).trans (add_le_add hl hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa224aad1fe3d249647cefff38f2c0ab6c16aa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
