# actualZeroFreeMovingCorrection_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96d99a3-f749-8553-3cfb-4b6898577e39",
  "kind": "theorem",
  "lexical_name": "actualZeroFreeMovingCorrection_tendsto_zero",
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
  "slug": "actualzerofreemovingcorrection-tendsto-zero--cd61c0c889f519df96c9d057",
  "source": {
    "blob": "9ddcb44850d4033e0128464c582f9346e602aa2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd61c0c889f519df96c9d057ac6919e323bf360da084b396ce2973eac3696009",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96d99a3-f749-8553-3cfb-4b6898577e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroFreeMovingCorrection_tendsto_zero (a c : ℝ) :
    Tendsto (fun A : ℝ => (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9) / A ^ 8)
      atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ)) := tendsto_inv_atTop_zero
  simpa [div_eq_mul_inv, inv_pow] using
    (hi.pow 8).const_mul (2 * a * 5 ^ 9 / (2 * c - 1) ^ 9)

/-- This method's scalar norm allowance grows; no actual signed contribution is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddcb44850d4033e0128464c582f9346e602aa2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
