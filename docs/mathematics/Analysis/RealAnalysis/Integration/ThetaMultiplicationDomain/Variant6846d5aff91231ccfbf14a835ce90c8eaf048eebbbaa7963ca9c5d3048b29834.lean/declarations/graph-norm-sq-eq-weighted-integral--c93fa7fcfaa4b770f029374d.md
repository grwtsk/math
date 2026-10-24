# graph_norm_sq_eq_weighted_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87585080-ed71-58b3-9af3-4ae3c6a26503",
  "kind": "theorem",
  "lexical_name": "graph_norm_sq_eq_weighted_integral",
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
  "slug": "graph-norm-sq-eq-weighted-integral--c93fa7fcfaa4b770f029374d",
  "source": {
    "blob": "9bdd203d57057601f12400f8cc7cb0700af798fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93fa7fcfaa4b770f029374dfff755e59194f8ff909f147723a6ac7648b0ed7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87585080-ed71-58b3-9af3-4ae3c6a26503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graph_norm_sq_eq_weighted_integral (f : coordinateDomain μ) :
    ‖(f : Lp ℂ 2 μ)‖ ^ 2 + ‖coordinateMultiplication μ f‖ ^ 2 =
      ∫ x, (1 + x ^ 2) * ‖(f : Lp ℂ 2 μ) x‖ ^ 2 ∂μ := by
  have hi := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable
    (f : Lp ℂ 2 μ))).mp (Lp.memLp (f : Lp ℂ 2 μ))
  have hm := (memLp_two_iff_integrable_sq_norm f.property.1).mp f.property
  rw [norm_sq_eq_integral, norm_sq_eq_integral]
  have he : (∫ x, ‖(coordinateMultiplication μ f) x‖ ^ 2 ∂μ) =
      ∫ x, ‖(x : ℂ) * (f : Lp ℂ 2 μ) x‖ ^ 2 ∂μ := by
    apply integral_congr_ae
    filter_upwards [coordinateMultiplication_apply_ae μ f] with x hx
    rw [hx]
  rw [he, ← integral_add hi hm]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs]
    ring

/-- The graph domain is exactly finite (1+x²)-weighted square integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdd203d57057601f12400f8cc7cb0700af798fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
