# actual_samples_eq_full_main_add_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d37785d6-aa3d-acbd-f2ae-af2b3f0b9243",
  "kind": "theorem",
  "lexical_name": "actual_samples_eq_full_main_add_error",
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
  "slug": "actual-samples-eq-full-main-add-error--6acabe790630ad757c5d37cf",
  "source": {
    "blob": "0e91a719649692f7edd9dffc3c34184ddcc4edf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variante847374589daf92a32c6d9d734426ff0edbb1d5b67a7598993666ee290b47783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6acabe790630ad757c5d37cfe3a721aa4b32f7951ea5fd4d02440ca5dec3f840",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variante847374589daf92a32c6d9d734426ff0edbb1d5b67a7598993666ee290b47783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d37785d6-aa3d-acbd-f2ae-af2b3f0b9243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_samples_eq_full_main_add_error {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k (n : ℝ)) =
      wholeCubicMainTerm A k + wholeCubicErrorRow A k := by
  have hp : 0 < A := by linarith
  have hk0 : 0 < k := by linarith
  have hq := positive_axis_quadrature (logProfile A k) (logProfile_contDiff hp k)
    (logProfile_hasCompactSupport hp k) (sourceKernelCutoff A)
    (by intro u hu; simp [logProfile, not_lt.mpr hu])
    (fun u hu => logProfile_cutoff_tail (by linarith) hk hu)
  rw [logProfile_positive_integral_zero (by linarith) k, sub_zero] at hq
  have he := actual_whole_error_integrable hA hk0
  have hm := full_model_integrable A k
  have hsum : (fun u => Int.fract u * deriv (logProfile A k) u) =
      (fun u => Int.fract u * cubicLogModelDerivative A k u +
        Int.fract u * (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) := by
    funext u
    ring
  rw [hq, hsum, integral_add hm he, full_model_integral_eq_main]
  rfl

/-- Source reconstruction retains every divisor in the literal disjoint complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variante847374589daf92a32c6d9d734426ff0edbb1d5b67a7598993666ee290b47783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variante847374589daf92a32c6d9d734426ff0edbb1d5b67a7598993666ee290b47783.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e91a719649692f7edd9dffc3c34184ddcc4edf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
