# integral_abs_logSamplingDerivative_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01fcbe47-4dcb-db90-e34a-c08e727fc80c",
  "kind": "theorem",
  "lexical_name": "integral_abs_logSamplingDerivative_le",
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
  "slug": "integral-abs-logsamplingderivative-le--03ed902e4ef952060e8ff18a",
  "source": {
    "blob": "b731145a40ced265e038f6be1d0a97c672a4d0a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Varianta0ffdf8af7b24ccb6b1d01f5bff8fac24cf5926d29dadaaceecc11fd81950964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ed902e4ef952060e8ff18ab80dd1fe599ac29f8e8312a35926e8d609edfa6e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Varianta0ffdf8af7b24ccb6b1d01f5bff8fac24cf5926d29dadaaceecc11fd81950964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01fcbe47-4dcb-db90-e34a-c08e727fc80c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_logSamplingDerivative_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1) :
    (∫ u in Ioi (1 : ℝ),
      |logSamplingDerivative F x u|) ≤
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) := by
  have hmaj :=
    logSamplingDerivativeMajorant_integrableOn x B0 B1
  have hcont :=
    logSamplingDerivative_continuousOn_Ioi_one hF hx
  have hmeas :
      AEStronglyMeasurable
        (logSamplingDerivative F x)
        (volume.restrict (Ioi (1 : ℝ))) :=
    hcont.aestronglyMeasurable measurableSet_Ioi
  have hder :
      IntegrableOn
        (logSamplingDerivative F x)
        (Ioi (1 : ℝ)) := by
    refine Integrable.mono' hmaj hmeas ?_
    exact
      (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun u hu => by
          rw [Real.norm_eq_abs]
          exact abs_logSamplingDerivative_le
            hx (le_of_lt hu) hB)
  calc
    (∫ u in Ioi (1 : ℝ),
      |logSamplingDerivative F x u|) ≤
        ∫ u in Ioi (1 : ℝ),
          logSamplingDerivativeMajorant x B0 B1 u := by
      refine setIntegral_mono_ae_restrict hder.norm hmaj ?_
      exact
        (ae_restrict_iff' measurableSet_Ioi).2
          (Eventually.of_forall fun u hu =>
            abs_logSamplingDerivative_le
              hx (le_of_lt hu) hB)
    _ =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) :=
      logSamplingDerivativeMajorant_integral x B0 B1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Varianta0ffdf8af7b24ccb6b1d01f5bff8fac24cf5926d29dadaaceecc11fd81950964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Varianta0ffdf8af7b24ccb6b1d01f5bff8fac24cf5926d29dadaaceecc11fd81950964.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b731145a40ced265e038f6be1d0a97c672a4d0a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
