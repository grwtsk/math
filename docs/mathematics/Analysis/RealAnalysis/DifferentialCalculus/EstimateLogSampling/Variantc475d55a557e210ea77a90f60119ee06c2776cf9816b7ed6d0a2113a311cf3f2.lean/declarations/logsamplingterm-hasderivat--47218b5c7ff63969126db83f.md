# logSamplingTerm_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:990e5d2c-8c98-0b76-c426-aab694d65d9c",
  "kind": "theorem",
  "lexical_name": "logSamplingTerm_hasDerivAt",
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
  "slug": "logsamplingterm-hasderivat--47218b5c7ff63969126db83f",
  "source": {
    "blob": "fd54b69fbbe298800ec0b96464df15a4773f8f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47218b5c7ff63969126db83fcfd56f29e766e5ae271b6b471b38bcf14366604c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:990e5d2c-8c98-0b76-c426-aab694d65d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSamplingTerm_hasDerivAt
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x u : ℝ} (hx : 0 < x) (hu : 0 < u) :
    HasDerivAt (logSamplingTerm F x)
      (logSamplingDerivative F x u) u := by
  have hlog :
      HasDerivAt Real.log u⁻¹ u :=
    Real.hasDerivAt_log (ne_of_gt hu)
  have hshift :
      HasDerivAt
        (fun v : ℝ => Real.log x + Real.log v)
        u⁻¹ u :=
    (hasDerivAt_const u (Real.log x)).add hlog
  have hnegdiv :
      HasDerivAt
        (fun v : ℝ =>
          -(Real.log x + Real.log v) / 2)
        (-u⁻¹ / 2) u :=
    hshift.neg.div_const 2
  have hexp :
      HasDerivAt
        (fun v : ℝ =>
          Real.exp (-(Real.log x + Real.log v) / 2))
        (Real.exp (-(Real.log x + Real.log u) / 2) *
          (-u⁻¹ / 2)) u :=
    hnegdiv.exp
  have hF' :
      HasDerivAt F
        (deriv F (Real.log x + Real.log u))
        (Real.log x + Real.log u) :=
    (hF.differentiable (by norm_num)
      (Real.log x + Real.log u)).hasDerivAt
  have hcomp :=
    hF'.comp u hshift
  have h :=
    hlog.mul (hexp.mul hcomp)
  convert h using 1
  · rfl
  · unfold logSamplingDerivative
    field_simp [ne_of_gt hu]
    ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd54b69fbbe298800ec0b96464df15a4773f8f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
