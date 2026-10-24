# source_riesz_exact_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c31a916-7a74-5d5d-1de0-2d339599382d",
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
  "slug": "source-riesz-exact-comparison--ab280bf1878beffcbdaab269",
  "source": {
    "blob": "1bf9eb0e63164dce124d859c6bea8f9ca0edc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 592,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab280bf1878beffcbdaab269fd8309c100bf99064e978dd2fde7f430e83e4107",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c31a916-7a74-5d5d-1de0-2d339599382d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–642.

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

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction SourceBoundaryArithmetic BoundaryRieszKernel
open SourceLaplaceDetection
open scoped BigOperators
noncomputable section

/-- The rational half-line transform paired with the same shifted zeta logarithmic derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf9eb0e63164dce124d859c6bea8f9ca0edc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
