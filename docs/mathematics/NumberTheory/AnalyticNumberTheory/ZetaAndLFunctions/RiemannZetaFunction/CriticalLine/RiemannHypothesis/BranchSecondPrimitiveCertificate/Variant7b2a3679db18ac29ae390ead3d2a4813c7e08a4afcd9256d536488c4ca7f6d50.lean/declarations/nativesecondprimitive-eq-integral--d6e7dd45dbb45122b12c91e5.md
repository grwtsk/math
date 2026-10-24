# nativeSecondPrimitive_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8921f80-3100-0a99-fa41-e6d5be10db90",
  "kind": "theorem",
  "lexical_name": "nativeSecondPrimitive_eq_integral",
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
  "slug": "nativesecondprimitive-eq-integral--d6e7dd45dbb45122b12c91e5",
  "source": {
    "blob": "ce6f383d1e2429b10d9b048e343499c30ddcfdc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e7dd45dbb45122b12c91e5d0d38167561cb0aa201525d18948f384c2ecc4eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8921f80-3100-0a99-fa41-e6d5be10db90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeSecondPrimitive_eq_integral (A t : ℝ) :
    nativeSecondPrimitive A t = ∫ u in (2 * Real.log A)..t, nativePrimitive A u := by
  have hi := logDensity_intervalIntegrable_all (2 * Real.log A) t
  have hp : AbsolutelyContinuousOnInterval (nativePrimitive A) (2 * Real.log A) t :=
    hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)
  have hl : ContDiff ℝ 1 (fun u : ℝ ↦ t - u) := by fun_prop
  have h := hp.integral_mul_deriv_eq_deriv_mul
    (ContDiffOn.absolutelyContinuousOnInterval hl.contDiffOn)
  have hd : deriv (fun u : ℝ ↦ t - u) = fun _ ↦ (-1 : ℝ) := by
    funext u
    exact ((hasDerivAt_id u).const_sub t).deriv
  rw [hd, sub_self, mul_zero,
    show nativePrimitive A (2 * Real.log A) = 0 by simp [nativePrimitive], zero_mul] at h
  have he : (∫ u in (2 * Real.log A)..t, deriv (nativePrimitive A) u * (t - u)) =
      nativeSecondPrimitive A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hi.ae_hasDerivAt_integral] with u hu hmem
    change deriv (fun x ↦ ∫ v in (2 * Real.log A)..x, logDensity v) u * (t - u) = _
    rw [(hu (uIoc_subset_uIcc hmem) (2 * Real.log A) (by simp)).deriv]
    exact mul_comm _ _
  rw [he] at h
  simp only [mul_neg, mul_one, intervalIntegral.integral_neg, sub_zero, zero_sub] at h
  linarith

/-- Ordinary differentiation of Q recovers P at every reading time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSecondPrimitiveCertificate/Variant7b2a3679db18ac29ae390ead3d2a4813c7e08a4afcd9256d536488c4ca7f6d50.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce6f383d1e2429b10d9b048e343499c30ddcfdc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
