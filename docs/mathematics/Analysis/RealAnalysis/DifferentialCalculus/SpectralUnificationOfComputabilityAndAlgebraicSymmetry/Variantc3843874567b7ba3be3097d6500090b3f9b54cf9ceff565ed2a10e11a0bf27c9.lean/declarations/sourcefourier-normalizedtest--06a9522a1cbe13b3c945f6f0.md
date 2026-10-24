# sourceFourier_normalizedTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db596e23-e94c-7344-494c-929259b3bd3f",
  "kind": "theorem",
  "lexical_name": "sourceFourier_normalizedTest",
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
  "slug": "sourcefourier-normalizedtest--06a9522a1cbe13b3c945f6f0",
  "source": {
    "blob": "c25ff0b4eda501229532c83da1d30fc82fa6948c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06a9522a1cbe13b3c945f6f029aad24cbd7efca6fe4031113f90c38598023716",
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

Occurrence: `result:db596e23-e94c-7344-494c-929259b3bd3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_normalizedTest (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (normalizedTest explicitSecondDerivative A) ξ =
      -((ξ : ℂ) ^ 2 + 1 / 4) * sourceFourier (scaledBump A) ξ /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedTest sourceFourier
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  rw [integral_div]
  change sourceFourier (dilationTest explicitSecondDerivative A) ξ / _ = _
  rw [sourceFourier_dilationTest A ξ hA]
  rfl

/-- The same source differential operator supplies both the real-frequency
factorization and the two real exponential cancellations. No complex-frequency
extension of the Fourier transform is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25ff0b4eda501229532c83da1d30fc82fa6948c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
