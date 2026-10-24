# source_closed_tail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dfbe590-3df9-eba5-ff8d-21b2e75944a9",
  "kind": "theorem",
  "lexical_name": "source_closed_tail_integral",
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
  "slug": "source-closed-tail-integral--25c40502f3fa65c42b4f04c3",
  "source": {
    "blob": "52a9e039e04c410a5f3e82f41978041651b71a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c40502f3fa65c42b4f04c3668f7f574e1bffa120e39fb9e3c4ccaf3f379832",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dfbe590-3df9-eba5-ff8d-21b2e75944a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_closed_tail_integral (A r : ℝ) (hA : 1 ≤ A)
    (hr : r ∈ Set.Icc 1 (Real.exp (2 * A))) :
    (∫ x in 1..Real.exp (2 * A),
      if r ≤ x then deriv (SourceSampling.sourceSamplingKernel A) x else 0) =
      -SourceSampling.sourceSamplingKernel A r := by
  rw [integral_closed_tail _ 1 _ r hr]
  have hi : IntervalIntegrable (deriv (SourceSampling.sourceSamplingKernel A)) volume
      r (Real.exp (2 * A)) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hr.2).mpr
      (MertensTransport.sourceSamplingKernel_derivative_integrableOn A r _ hA
        (lt_of_lt_of_le (by norm_num) hr.1))
  rw [intervalIntegral.integral_deriv_eq_sub ?_ hi,
    MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (Real.exp_pos _) le_rfl,
    zero_sub]
  intro x hx
  rw [Set.uIcc_of_le hr.2] at hx
  exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A x hA
    (lt_of_lt_of_le (by norm_num) (hr.1.trans hx.1))).differentiableAt

/-- Each signed closed-threshold source term is interval integrable before finite interchange. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperHyperbolaRowTransport/Variant65eafc6c648665d4f02fc013a68f4fe6444f84788868cd33f56058e40b5b40eb.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a9e039e04c410a5f3e82f41978041651b71a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
