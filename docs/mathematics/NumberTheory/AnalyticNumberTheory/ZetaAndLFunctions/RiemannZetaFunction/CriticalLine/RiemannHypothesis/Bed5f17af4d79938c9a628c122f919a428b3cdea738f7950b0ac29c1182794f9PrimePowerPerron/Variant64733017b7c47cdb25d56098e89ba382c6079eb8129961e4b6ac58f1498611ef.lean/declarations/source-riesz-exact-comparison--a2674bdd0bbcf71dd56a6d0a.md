# source_riesz_exact_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61677bb9-66ea-5da0-5a4c-14a480683083",
  "kind": "theorem",
  "lexical_name": "source_riesz_exact_comparison",
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
  "slug": "source-riesz-exact-comparison--a2674bdd0bbcf71dd56a6d0a",
  "source": {
    "blob": "1854fbca38a1d1b225ae32313b730feded31b0e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9PrimePowerPerron/Variant64733017b7c47cdb25d56098e89ba382c6079eb8129961e4b6ac58f1498611ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2674bdd0bbcf71dd56a6d0a45211bc404f6b5582e2e0cdb5d4fb94d4366f8b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9PrimePowerPerron/Variant64733017b7c47cdb25d56098e89ba382c6079eb8129961e4b6ac58f1498611ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61677bb9-66ea-5da0-5a4c-14a480683083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_riesz_exact_comparison (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    (A : ℂ) ^ 9 * sourceLaplace A z =
      Complex.exp (2 * (A : ℂ) * z) * boundaryRieszTransform A z +
        Complex.exp (-2 * (A : ℂ) * z) * boundaryRieszTransform A (-z) -
          294912 * (z ^ 2 - 1 / 4) ^ 2 *
            ZeroSideTargets.transformPolynomial ((A : ℂ) * z) *
            ZeroSideTargets.transformPolynomial (-(A : ℂ) * z) /
              ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8 * z ^ 18) := by
  have hAr : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hAr
  have hZ : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  rw [source_laplace_eq_bump_square A (by linarith) z,
    bump_laplace_endpoint_formula _ (mul_ne_zero hAc hz),
    boundary_riesz_transform_eq_source_polynomial A hAr z hz,
    boundary_riesz_transform_eq_source_polynomial A hAr (-z) (neg_ne_zero.mpr hz)]
  have hp : Complex.exp ((A : ℂ) * z) ^ 2 = Complex.exp (2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hm : Complex.exp (-((A : ℂ) * z)) ^ 2 = Complex.exp (-2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hpm : Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z)) = 1 := by
    rw [← Complex.exp_add]
    simp
  have he (p m : ℂ) :
      (Complex.exp ((A : ℂ) * z) * p - Complex.exp (-((A : ℂ) * z)) * m) ^ 2 =
        Complex.exp (2 * (A : ℂ) * z) * p ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) * m ^ 2 - 2 * p * m := by
    calc _ = Complex.exp ((A : ℂ) * z) ^ 2 * p ^ 2 +
        Complex.exp (-((A : ℂ) * z)) ^ 2 * m ^ 2 -
          2 * (Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z))) * p * m := by ring
      _ = _ := by rw [hp, hm, hpm]; ring
  rw [mul_pow, he]
  unfold ZeroSideTargets.transformPolynomial
  field_simp
  ring
end FormalResearch.RiemannHypothesis.PrimePowerPerron
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9PrimePowerPerron/Variant64733017b7c47cdb25d56098e89ba382c6079eb8129961e4b6ac58f1498611ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9PrimePowerPerron/Variant64733017b7c47cdb25d56098e89ba382c6079eb8129961e4b6ac58f1498611ef.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1854fbca38a1d1b225ae32313b730feded31b0e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
