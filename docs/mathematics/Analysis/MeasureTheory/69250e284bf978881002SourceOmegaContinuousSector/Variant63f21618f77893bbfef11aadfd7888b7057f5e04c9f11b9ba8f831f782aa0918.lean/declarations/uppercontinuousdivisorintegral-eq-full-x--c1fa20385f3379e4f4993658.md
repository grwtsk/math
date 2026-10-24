# upperContinuousDivisorIntegral_eq_full_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad0a481-01e1-af3c-99bb-1e91865d8212",
  "kind": "theorem",
  "lexical_name": "upperContinuousDivisorIntegral_eq_full_x",
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
  "slug": "uppercontinuousdivisorintegral-eq-full-x--c1fa20385f3379e4f4993658",
  "source": {
    "blob": "92e6e08a80abd9bd954ff7b836119fe574e43fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1fa20385f3379e4f4993658a75069242768229f1ffcc205a24166307a673e11",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad0a481-01e1-af3c-99bb-1e91865d8212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperContinuousDivisorIntegral_eq_full_x {A d : ℝ} (hA : 1 ≤ A) (hd : 0 < d) :
    upperContinuousDivisorIntegral A d =
      (1 / d) * ∫ x in Ioi d, continuousDivisorIntegrand A d x := by
  have _hi := continuousDivisorIntegrand_integrable hA hd
  unfold upperContinuousDivisorIntegral
  have he : (∫ u in Ioi (1 : ℝ), logProfile A d u) =
      ∫ u in Ioi (1 : ℝ), continuousDivisorIntegrand A d (d * u) := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro u hu
    exact logProfile_eq_continuousDivisorIntegrand_mul A hd (zero_lt_one.trans hu)
  rw [he, integral_comp_mul_left_Ioi (continuousDivisorIntegrand A d) 1 hd]
  simp only [mul_one, smul_eq_mul, one_div]

/-- The literal finite upper endpoint and interval orientation are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variant63f21618f77893bbfef11aadfd7888b7057f5e04c9f11b9ba8f831f782aa0918.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e6e08a80abd9bd954ff7b836119fe574e43fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
