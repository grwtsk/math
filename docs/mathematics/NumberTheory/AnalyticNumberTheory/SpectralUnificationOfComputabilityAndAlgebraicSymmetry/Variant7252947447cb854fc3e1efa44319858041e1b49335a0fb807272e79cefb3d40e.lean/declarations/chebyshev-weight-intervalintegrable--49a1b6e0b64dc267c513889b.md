# chebyshev_weight_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da83ffa1-8916-9e1c-a647-6c92cbf996c0",
  "kind": "theorem",
  "lexical_name": "chebyshev_weight_intervalIntegrable",
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
  "slug": "chebyshev-weight-intervalintegrable--49a1b6e0b64dc267c513889b",
  "source": {
    "blob": "45348fe9b2d6106809e2d7eb0e595f9bfaedc762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a1b6e0b64dc267c513889b41686fc7340e94f5a814e247f9c6aa43905ed63d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da83ffa1-8916-9e1c-a647-6c92cbf996c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_weight_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun x ↦ chebyshevError x * deriv (criticalWeight A) x)
      volume 2 (Real.exp (2*A)) := by
  have hi : IntervalIntegrable (fun t ↦
      ((fun x ↦ chebyshevError x * deriv (criticalWeight A) x) ∘ Real.exp) t * Real.exp t)
      volume lowerEndpoint (2*A) := by
    apply (chebyshev_log_intervalIntegrable A hA).congr
    intro t _
    exact (critical_chebyshev_exp_integrand A t (by linarith)).symm
  have h := (intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp)
    (g := fun x ↦ chebyshevError x * deriv (criticalWeight A) x)
    (a := lowerEndpoint) (b := 2*A) Real.continuous_exp.continuousOn
    (fun t _ ↦ Real.hasDerivAt_exp t) (fun t _ ↦ (Real.exp_pos t).le)).mp hi
  simpa only [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)] using h

/-- One monotone substitution, after both finite integrability gates have checked. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45348fe9b2d6106809e2d7eb0e595f9bfaedc762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
