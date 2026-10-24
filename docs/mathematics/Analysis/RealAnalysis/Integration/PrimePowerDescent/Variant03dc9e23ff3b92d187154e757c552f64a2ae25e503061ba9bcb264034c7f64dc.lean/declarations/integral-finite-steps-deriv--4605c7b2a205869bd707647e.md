# integral_finite_steps_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd099a8b-2278-7adb-614b-4a8bbe8b566b",
  "kind": "theorem",
  "lexical_name": "integral_finite_steps_deriv",
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
  "slug": "integral-finite-steps-deriv--4605c7b2a205869bd707647e",
  "source": {
    "blob": "b4174728642f2a3265b1e27be9f7854589bfa9f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4605c7b2a205869bd707647ed2792c40db65b380e8c21f03e4ef4195bfd443ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd099a8b-2278-7adb-614b-4a8bbe8b566b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_finite_steps_deriv (a b : ℝ) (S : Finset ℕ)
    (threshold weight : ℕ → ℝ) (hthreshold : ∀ n ∈ S, a ≤ threshold n ∧ threshold n ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in a..b, ∑ n ∈ S,
        weight n * (if threshold n ≤ t then deriv F t else 0)) =
      ∑ n ∈ S, weight n * (F b - F (threshold n)) := by
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul, integral_closed_step_deriv a b (threshold n)
      (hthreshold n hn).1 (hthreshold n hn).2 F hF]
  · intro n _
    exact (intervalIntegrable_closed_step a b (threshold n) (deriv F)
      (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul (weight n)

/-- Multiplication by any test value preserves the complete step representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant03dc9e23ff3b92d187154e757c552f64a2ae25e503061ba9bcb264034c7f64dc.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4174728642f2a3265b1e27be9f7854589bfa9f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
