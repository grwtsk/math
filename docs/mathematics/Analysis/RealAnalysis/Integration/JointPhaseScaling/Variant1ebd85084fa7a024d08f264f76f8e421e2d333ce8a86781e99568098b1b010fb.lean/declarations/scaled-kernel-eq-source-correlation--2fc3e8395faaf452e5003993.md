# scaled_kernel_eq_source_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19905f0e-1bbe-8239-54c6-0f8380676885",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b77bac1e-4b9b-f175-4c7e-09779060e98f",
  "kind": "theorem",
  "lexical_name": "scaled_kernel_eq_source_correlation",
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
  "slug": "scaled-kernel-eq-source-correlation--2fc3e8395faaf452e5003993",
  "source": {
    "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fc3e8395faaf452e500399357a2eebcdb59b9dea1cd6744c284eace12c908e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b77bac1e-4b9b-f175-4c7e-09779060e98f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_kernel_eq_source_correlation (A s : ℝ) (hA : 1 ≤ A) :
    scaledKernel A s = sourceCorrelation explicitSecondDerivative A (A * s) := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  have heq : (fun u : ℝ ↦ Real.cos (u * s) * rescaledDensity A u) =
      fun u ↦ (Real.cos ((u / A) * (A * s)) * spectralDensity A (u / A)) / A := by
    funext u
    rw [show (u / A) * (A * s) = u * s by field_simp]
    unfold rescaledDensity
    ring
  unfold scaledKernel
  rw [heq, integral_div,
    Measure.integral_comp_div (fun ξ : ℝ ↦ Real.cos (ξ * (A * s)) * spectralDensity A ξ) A,
    abs_of_pos hpos, smul_eq_mul,
    ← sourceCorrelation_eq_integral_cos A (A * s) hA]
  field_simp

/-- Exact finite fixed-kernel decomposition; the coefficients still depend on the radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa21fdfce150b1b9d9bbea5757ea05d4c04189ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
