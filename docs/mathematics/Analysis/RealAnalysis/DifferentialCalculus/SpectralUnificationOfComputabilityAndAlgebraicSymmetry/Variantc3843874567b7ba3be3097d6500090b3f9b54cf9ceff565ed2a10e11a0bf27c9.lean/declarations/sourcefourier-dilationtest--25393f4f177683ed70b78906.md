# sourceFourier_dilationTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed967c31-b28f-6607-7474-28c43b3a0e56",
  "kind": "theorem",
  "lexical_name": "sourceFourier_dilationTest",
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
  "slug": "sourcefourier-dilationtest--25393f4f177683ed70b78906",
  "source": {
    "blob": "c25ff0b4eda501229532c83da1d30fc82fa6948c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25393f4f177683ed70b789064d4a613a0d44440148965f5f4cba17593e2a546a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed967c31-b28f-6607-7474-28c43b3a0e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_dilationTest (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (dilationTest explicitSecondDerivative A) ξ =
      -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ := by
  have hpos : 0 < A := by linarith
  have hf : Integrable (fun x ↦ (scaledBump A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (scaledBump_integrable A hpos)
  have hg : Integrable (fun x ↦ (explicitSecondDerivative A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (explicitSecondDerivative_integrable A)
  have hmul (f : ℝ → ℂ) (hi : Integrable f) :
      Integrable (fun x ↦ f x * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
    apply hi.mul_bdd (c := 1) (by fun_prop)
    filter_upwards [] with x
    simp [Complex.norm_exp]
  unfold sourceFourier dilationTest
  simp_rw [Complex.ofReal_sub, Complex.ofReal_div, Complex.ofReal_ofNat,
    sub_mul, div_mul_eq_mul_div]
  rw [integral_sub (hmul _ hg) ((hmul _ hf).div_const 4), integral_div]
  change sourceFourier (explicitSecondDerivative A) ξ -
    sourceFourier (scaledBump A) ξ / 4 = _
  rw [explicitSecondDerivative_fourier A ξ hA]
  change -(ξ : ℂ) ^ 2 * sourceFourier (scaledBump A) ξ -
    sourceFourier (scaledBump A) ξ / 4 =
    -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ
  ring

/-- The Fourier identity retains exactly the repository normalization `√Z_A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25ff0b4eda501229532c83da1d30fc82fa6948c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
