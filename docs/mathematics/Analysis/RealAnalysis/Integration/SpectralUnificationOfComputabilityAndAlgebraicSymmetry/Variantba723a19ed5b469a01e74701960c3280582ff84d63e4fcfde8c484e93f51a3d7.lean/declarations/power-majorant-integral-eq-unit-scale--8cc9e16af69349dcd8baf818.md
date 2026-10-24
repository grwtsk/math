# power_majorant_integral_eq_unit_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bf426e43bcc95f0523e1454832c2f0206dd575d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68a2a963-6b9f-11c1-8df5-d9f0af044f6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2a9f0e3-db3b-7d1c-ed66-400b3d864a72",
  "kind": "theorem",
  "lexical_name": "power_majorant_integral_eq_unit_scale",
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
  "slug": "power-majorant-integral-eq-unit-scale--8cc9e16af69349dcd8baf818",
  "source": {
    "blob": "0bf426e43bcc95f0523e1454832c2f0206dd575d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc9e16af69349dcd8baf81815514e3915a60068a44ce7dcdf651629e808c51a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2a9f0e3-db3b-7d1c-ed66-400b3d864a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem power_majorant_integral_eq_unit_scale (A θ : ℝ) (L : ℝ → ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A θ L t) =
      A * ∫ y in lowerEndpoint / A..2, Real.exp ((θ - 1 / 2) * (A * y)) * L (Real.exp (A * y)) *
        |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
  have h := intervalIntegral.smul_integral_comp_mul_left
    (a := lowerEndpoint / A) (b := (2 : ℝ)) (powerErrorMajorant A θ L) A
  rw [mul_div_cancel₀ lowerEndpoint hA.ne', show A * 2 = 2 * A by ring] at h
  simp only [smul_eq_mul] at h
  rw [← h]
  congr 1
  apply intervalIntegral.integral_congr
  intro y _
  dsimp only [powerErrorMajorant]
  rw [mul_div_cancel_left₀ y hA.ne']

/-- At the critical exponent the exponential disappears but the exact scale factor remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantba723a19ed5b469a01e74701960c3280582ff84d63e4fcfde8c484e93f51a3d7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf426e43bcc95f0523e1454832c2f0206dd575d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
