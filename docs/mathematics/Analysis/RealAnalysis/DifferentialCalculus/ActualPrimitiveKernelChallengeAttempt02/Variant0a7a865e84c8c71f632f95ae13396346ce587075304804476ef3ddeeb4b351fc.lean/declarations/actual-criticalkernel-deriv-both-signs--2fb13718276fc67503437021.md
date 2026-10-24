# actual_criticalKernel_deriv_both_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bc2c9d9-afe4-d121-f84e-875760eb9199",
  "kind": "theorem",
  "lexical_name": "actual_criticalKernel_deriv_both_signs",
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
  "slug": "actual-criticalkernel-deriv-both-signs--2fb13718276fc67503437021",
  "source": {
    "blob": "69dc447bae9dc67d77bd220aef81e269149f5702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant0a7a865e84c8c71f632f95ae13396346ce587075304804476ef3ddeeb4b351fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fb13718276fc675034370219abfff29e345691db896ae6ffe249075f976fbcb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant0a7a865e84c8c71f632f95ae13396346ce587075304804476ef3ddeeb4b351fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bc2c9d9-afe4-d121-f84e-875760eb9199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalKernel_deriv_both_signs (A : ℝ) (hA : 1 ≤ A) :
    (∃ t ∈ Ioo (0 : ℝ) (2 * A), deriv (criticalKernel A) t < 0) ∧
      (∃ t ∈ Ioo (0 : ℝ) (2 * A), 0 < deriv (criticalKernel A) t) := by
  have hp : 0 < A := by linarith
  obtain ⟨s, hs, hks⟩ := actual_criticalKernel_negative_at_interior A hA
  have hk := criticalKernel_contDiff A hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (criticalKernel A) hs.1
    hk.continuous.continuousOn (hk.differentiable (by norm_num)).differentiableOn
  obtain ⟨u, hu, he⟩ := exists_deriv_eq_slope (criticalKernel A) hs.2
    hk.continuous.continuousOn (hk.differentiable (by norm_num)).differentiableOn
  constructor
  · refine ⟨t, ⟨ht.1, ht.2.trans hs.2⟩, ?_⟩
    rw [hd, actual_criticalKernel_at_zero A hA]
    exact div_neg_of_neg_of_pos (by linarith) (by linarith [hs.1])
  · refine ⟨u, ⟨hs.1.trans hu.1, hu.2⟩, ?_⟩
    rw [he, criticalKernel_at_upper A hA]
    exact div_pos (by linarith) (sub_pos.mpr hs.2)

/-- Retain the exact proved energy coefficient instead of its coarse 65/3 bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant0a7a865e84c8c71f632f95ae13396346ce587075304804476ef3ddeeb4b351fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant0a7a865e84c8c71f632f95ae13396346ce587075304804476ef3ddeeb4b351fc.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dc447bae9dc67d77bd220aef81e269149f5702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
