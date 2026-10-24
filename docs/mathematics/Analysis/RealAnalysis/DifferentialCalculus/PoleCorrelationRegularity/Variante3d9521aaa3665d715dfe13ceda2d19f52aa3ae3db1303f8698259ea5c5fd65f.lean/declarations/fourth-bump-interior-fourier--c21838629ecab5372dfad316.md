# fourth_bump_interior_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87579b0c-4955-a59a-0086-7a6729f72908",
  "kind": "theorem",
  "lexical_name": "fourth_bump_interior_fourier",
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
  "slug": "fourth-bump-interior-fourier--c21838629ecab5372dfad316",
  "source": {
    "blob": "940c5d71709e76b0932d44688cef08e036426a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c21838629ecab5372dfad316fc93bc26d2445e0d645f8cb8d74cbfff6c5179ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87579b0c-4955-a59a-0086-7a6729f72908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourth_bump_interior_fourier (ξ : ℝ) :
    sourceFourier ((Icc (-1 : ℝ) 1).indicator fourthBumpInterior) ξ =
      (ξ : ℂ) ^ 4 * sourceFourier sourceBump ξ := by
  have h0 := source_fourier_indicator_deriv_of_endpoints_zero
    (bumpInterior 1) (firstInterior 1) (-1) 1 ξ (by norm_num)
    (bumpInterior_continuous 1) (firstInterior_continuous 1) (bumpInterior_hasDerivAt 1)
    ((bumpInterior_endpoints 1 (by norm_num)).1)
    ((bumpInterior_endpoints 1 (by norm_num)).2)
  have h1 := source_fourier_indicator_deriv_of_endpoints_zero
    (firstInterior 1) (secondInterior 1) (-1) 1 ξ (by norm_num)
    (firstInterior_continuous 1) (secondInterior_continuous 1) (firstInterior_hasDerivAt 1)
    ((firstInterior_endpoints 1 (by norm_num)).1)
    ((firstInterior_endpoints 1 (by norm_num)).2)
  have h2 := source_fourier_indicator_deriv_of_endpoints_zero
    (secondInterior 1) (thirdInterior 1) (-1) 1 ξ (by norm_num)
    (secondInterior_continuous 1) (by unfold thirdInterior; fun_prop)
    (secondInterior_hasDerivAt 1)
    ((secondInterior_endpoints 1 (by norm_num)).1)
    ((secondInterior_endpoints 1 (by norm_num)).2)
  have h3 := source_fourier_indicator_deriv_of_endpoints_zero
    (thirdInterior 1) fourthBumpInterior (-1) 1 ξ (by norm_num)
    (by unfold thirdInterior; fun_prop) (by unfold fourthBumpInterior; fun_prop)
    third_bump_interior_has_deriv_at
    ((thirdInterior_endpoints 1 (by norm_num)).1)
    ((thirdInterior_endpoints 1 (by norm_num)).2)
  have hb : (Icc (-1 : ℝ) 1).indicator (bumpInterior 1) = sourceBump := by
    rw [← scaledBump_eq_indicator 1 (by norm_num)]
    funext x
    simp [scaledBump]
  rw [hb] at h0
  rw [h3, h2, h1, h0]
  calc
    _ = (Complex.I * Complex.I) ^ 2 * (ξ : ℂ) ^ 4 * sourceFourier sourceBump ξ := by ring
    _ = _ := by rw [Complex.I_mul_I]; ring

/-- The actual fixed bump has an integrable degree-eight Fourier moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940c5d71709e76b0932d44688cef08e036426a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
