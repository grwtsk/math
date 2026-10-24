# actual_logProfile_upper_cubic_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:631dc33d-94fb-44ad-82e2-f8eab30de8a5",
  "kind": "theorem",
  "lexical_name": "actual_logProfile_upper_cubic_sampling",
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
  "slug": "actual-logprofile-upper-cubic-sampling--0b4e6223d87e76b5304f4f96",
  "source": {
    "blob": "c3a09d51603f63b3973d4ddf327961680d26a312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b4e6223d87e76b5304f4f964d845e4086b10dfc449d275eae3701919f4bd5b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631dc33d-94fb-44ad-82e2-f8eab30de8a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logProfile_upper_cubic_sampling {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) =
      (∫ u in Ioi (1 : ℝ), logProfile A k u) + cubicSignedUpperModelRow A k +
        cubicCenteredLogErrorRow A k := by
  have ha := centered_deriv_upper_integrable (logProfile A k)
    (logProfile_contDiff (by linarith : 0 < A) k)
    (logProfile_hasCompactSupport (by linarith : 0 < A) k)
  have hm := cubic_signed_upper_model_row_integrable hA (by linarith : 0 < k)
  have hd : cubicCenteredLogErrorRow A k =
      (∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv (logProfile A k) u) -
        cubicSignedUpperModelRow A k := by
    unfold cubicCenteredLogErrorRow cubicSignedUpperModelRow
    simp_rw [mul_sub]
    rw [integral_sub ha hm]
  have hq := actual_logProfile_upper_centered_quadrature (by linarith : 1 ≤ A) hk
  linarith only [hd, hq]

/-- Full actual short divisor sampling identity with the signed error summed before estimation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a09d51603f63b3973d4ddf327961680d26a312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
