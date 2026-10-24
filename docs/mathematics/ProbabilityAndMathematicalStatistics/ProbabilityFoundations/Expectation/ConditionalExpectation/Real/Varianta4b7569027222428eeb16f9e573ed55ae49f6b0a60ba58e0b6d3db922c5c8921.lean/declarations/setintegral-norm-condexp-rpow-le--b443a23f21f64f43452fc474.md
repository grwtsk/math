# setIntegral_norm_condExp_rpow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94756599-9171-bbf4-5539-429032d77f74",
  "kind": "theorem",
  "lexical_name": "setIntegral_norm_condExp_rpow_le",
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
  "slug": "setintegral-norm-condexp-rpow-le--b443a23f21f64f43452fc474",
  "source": {
    "blob": "2faccd3760ea9e89ba12318c38af1e476d192eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 219,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b443a23f21f64f43452fc474a0d1a735078fb6d2a1d622b0b3cfb62fe9b5bc40",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94756599-9171-bbf4-5539-429032d77f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_norm_condExp_rpow_le {p : ℝ} (hp : 1 ≤ p) {f : α → E} {s : Set α}
    (hs : MeasurableSet[m] s) (hf : Integrable (‖f ·‖ ^ p) μ) :
    ∫ x in s, ‖μ[f | m] x‖ ^ p ∂μ ≤ ∫ x in s, ‖f x‖ ^ p ∂μ := by
  have hp' : p ≠ 0 := by linarith
  by_cases! hm : ¬ m ≤ m0
  · simpa [condExp_of_not_le hm, hp'] using integral_nonneg (fun x => by positivity)
  by_cases! hsig : ¬ SigmaFinite (μ.trim hm)
  · simpa [condExp_of_not_sigmaFinite hm hsig, hp'] using integral_nonneg (fun x => by positivity)
  calc
  _ ≤ ∫ x in s, μ[(fun x => ‖f x‖ ^ p) | m] x ∂μ := by
    refine integral_mono_of_nonneg ?_ ?_ ?_
    · filter_upwards with a using by positivity
    · exact integrable_condExp.congr (condExp_restrict_ae_eq_restrict hm hs hf)
    · exact ae_restrict_le (Integrable.norm_condExp_rpow_le hp hf)
  _ ≤ _ := by
    apply setIntegral_condExp_le_of_ae_nonneg hs
    filter_upwards with ω using by positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2faccd3760ea9e89ba12318c38af1e476d192eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
