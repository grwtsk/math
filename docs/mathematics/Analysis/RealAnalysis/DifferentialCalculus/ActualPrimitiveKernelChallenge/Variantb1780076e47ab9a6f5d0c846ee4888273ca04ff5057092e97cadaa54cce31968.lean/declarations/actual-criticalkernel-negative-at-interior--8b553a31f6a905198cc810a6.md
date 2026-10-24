# actual_criticalKernel_negative_at_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "875a11f84615d242f01a5c23cbd4ed1b97ebe00c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1780076e47ab9a6f5d0c846ee4888273ca04ff5057092e97cadaa54cce31968.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b41878f-25aa-b70e-ff4e-a8209a0d9ee6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b981c538-4526-f141-77cc-639e1ea0050d",
  "kind": "theorem",
  "lexical_name": "actual_criticalKernel_negative_at_interior",
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
  "slug": "actual-criticalkernel-negative-at-interior--8b553a31f6a905198cc810a6",
  "source": {
    "blob": "875a11f84615d242f01a5c23cbd4ed1b97ebe00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallenge/Variantb1780076e47ab9a6f5d0c846ee4888273ca04ff5057092e97cadaa54cce31968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b553a31f6a905198cc810a64362df57a3223a4187e2ff13b4182c539c960397",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallenge/Variantb1780076e47ab9a6f5d0c846ee4888273ca04ff5057092e97cadaa54cce31968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b981c538-4526-f141-77cc-639e1ea0050d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalKernel_negative_at_interior (A : ℝ) (hA : 1 ≤ A) :
    ∃ t ∈ Ioo (0 : ℝ) (2 * A), criticalKernel A t < 0 := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (criticalPrimeTest A)
    (by linarith : (0 : ℝ) < 2 * A) hf.continuous.continuousOn
    (hf.differentiable (by norm_num)).differentiableOn
  rw [criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA] at hd
  have hneg : deriv (criticalPrimeTest A) t < 0 := by
    rw [hd]
    exact div_neg_of_neg_of_pos (by norm_num) (by linarith)
  rw [criticalPrimeTest_deriv A t hp] at hneg
  have hnegk : Real.exp (t / 2) * criticalKernel A t < 0 := by
    simpa only [criticalKernel, add_comm] using hneg
  refine ⟨t, ht, ?_⟩
  nlinarith [Real.exp_pos (t / 2), hnegk]

/-- The actual primitive work kernel has both signs at interior points at every scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallenge/Variantb1780076e47ab9a6f5d0c846ee4888273ca04ff5057092e97cadaa54cce31968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallenge/Variantb1780076e47ab9a6f5d0c846ee4888273ca04ff5057092e97cadaa54cce31968.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875a11f84615d242f01a5c23cbd4ed1b97ebe00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
