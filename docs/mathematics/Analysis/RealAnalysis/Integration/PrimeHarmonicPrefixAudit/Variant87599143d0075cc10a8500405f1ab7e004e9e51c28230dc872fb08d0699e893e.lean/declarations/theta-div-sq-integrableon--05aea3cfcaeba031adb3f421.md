# theta_div_sq_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:670c898d-d627-77be-adab-f88714b58834",
  "kind": "theorem",
  "lexical_name": "theta_div_sq_integrableOn",
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
  "slug": "theta-div-sq-integrableon--05aea3cfcaeba031adb3f421",
  "source": {
    "blob": "6b6c60e5e99a997fd8bbe50ab8cbc60681faf208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05aea3cfcaeba031adb3f421d8079d26279e0081a60bdc121d6e268e91dcd96b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:670c898d-d627-77be-adab-f88714b58834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_div_sq_integrableOn (x : ℝ) :
    IntegrableOn (fun t : ℝ => Chebyshev.theta t / t ^ 2) (Icc 1 x) := by
  have hc : ContinuousOn (fun t : ℝ => (t ^ 2)⁻¹) (Icc 1 x) := by
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    exact ((continuousAt_id.pow 2).inv₀ (pow_ne_zero _ ht0)).continuousWithinAt
  have h := integrableOn_mul_sum_Icc primeWeight (m := 0) (by norm_num : (0 : ℝ) ≤ 1)
    hc.integrableOn_Icc
  apply h.congr_fun _ measurableSet_Icc
  intro t _
  dsimp only
  rw [primeWeight_prefix]
  ring

/-- Exact finite Abel summation includes the original closed-right endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6c60e5e99a997fd8bbe50ab8cbc60681faf208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
