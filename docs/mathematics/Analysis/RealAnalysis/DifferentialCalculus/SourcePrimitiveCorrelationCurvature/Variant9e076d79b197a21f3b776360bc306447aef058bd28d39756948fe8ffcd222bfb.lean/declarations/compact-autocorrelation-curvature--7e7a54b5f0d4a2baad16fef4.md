# compact_autocorrelation_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e8bd311-5e9e-426d-1b84-9cd6484e59a7",
  "kind": "theorem",
  "lexical_name": "compact_autocorrelation_curvature",
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
  "slug": "compact-autocorrelation-curvature--7e7a54b5f0d4a2baad16fef4",
  "source": {
    "blob": "8b5f70251cc04d008ef571f95fa7a88236287f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7a54b5f0d4a2baad16fef4485037d45bcde1f56d9b3fa25ea1e4c2e6d0fff8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e8bd311-5e9e-426d-1b84-9cd6484e59a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem compact_autocorrelation_curvature {f : ℝ → ℝ}
    (hf : ContDiff ℝ 1 f) (hs : HasCompactSupport f) (t : ℝ) :
    Integrable (fun x : ℝ => deriv f x * deriv f (x - t)) ∧
      deriv (deriv (fun s : ℝ => ∫ x : ℝ, f x * f (x - s))) t =
        -(∫ x : ℝ, deriv f x * deriv f (x - t)) := by
  have hr : HasCompactSupport (fun x : ℝ => f (-x)) :=
    hs.comp_homeomorph (Homeomorph.neg ℝ)
  have hfr : ContDiff ℝ 1 (fun x : ℝ => f (-x)) := hf.comp contDiff_neg
  have hif : Integrable (deriv f) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  have hprod : Integrable (fun x : ℝ => deriv f x * deriv f (x - t)) :=
    ((hf.continuous_deriv (by norm_num)).mul
      ((hf.continuous_deriv (by norm_num)).comp
        (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
      hs.deriv.mul_right
  have hrefl : deriv (fun x : ℝ => f (-x)) =
      fun x : ℝ => -deriv f (-x) := by
    funext x
    have h := (hf.differentiable (by norm_num) (-x)).hasDerivAt
    have hn : HasDerivAt (fun y : ℝ => f (-y)) (-deriv f (-x)) x := by
      convert h.comp x (hasDerivAt_neg x) using 1 <;> first | rfl | simp
    exact hn.deriv
  refine ⟨hprod, ?_⟩
  rw [compact_autocorrelation_deriv_eq_convolution hf hs]
  have h := hr.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    hif.locallyIntegrable hfr t
  simpa only [hrefl, convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul,
    neg_sub, mul_neg, integral_neg] using h.deriv

/-- The actual normalized primitive's second correlation derivative retains the minus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveCorrelationCurvature/Variant9e076d79b197a21f3b776360bc306447aef058bd28d39756948fe8ffcd222bfb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5f70251cc04d008ef571f95fa7a88236287f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
