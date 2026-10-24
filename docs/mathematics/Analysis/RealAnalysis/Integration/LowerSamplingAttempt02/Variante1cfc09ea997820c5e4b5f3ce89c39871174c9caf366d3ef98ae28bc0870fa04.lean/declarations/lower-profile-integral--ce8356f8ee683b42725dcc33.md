# lower_profile_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e5def7e-7356-8c50-1805-74d15055bef9",
  "kind": "theorem",
  "lexical_name": "lower_profile_integral",
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
  "slug": "lower-profile-integral--ce8356f8ee683b42725dcc33",
  "source": {
    "blob": "772181eb2901580d5ca4c86870f4cf7b895c78f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt02/Variante1cfc09ea997820c5e4b5f3ce89c39871174c9caf366d3ef98ae28bc0870fa04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8356f8ee683b42725dcc3362d1669fce2ede9fd39b72aaf69ac577e066d9e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt02/Variante1cfc09ea997820c5e4b5f3ce89c39871174c9caf366d3ef98ae28bc0870fa04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5def7e-7356-8c50-1805-74d15055bef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_profile_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, plainProfile A 1 u) = -criticalContinuousMoment A := by
  have hi := (plainProfile_integrable (by linarith : 0 < A) 1).integrableOn
    (s := Ioi (0 : ℝ))
  have ht := (plainProfile_integrable (by linarith : 0 < A) 1).integrableOn
    (s := Ioi (1 : ℝ))
  have hs := intervalIntegral.integral_interval_add_Ioi hi ht
  rw [plainProfile_positive_integral_zero hA 1, upper_profile_integral hA] at hs
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt02/Variante1cfc09ea997820c5e4b5f3ce89c39871174c9caf366d3ef98ae28bc0870fa04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt02/Variante1cfc09ea997820c5e4b5f3ce89c39871174c9caf366d3ef98ae28bc0870fa04.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `772181eb2901580d5ca4c86870f4cf7b895c78f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
