# gaussianDyadicSchwartz_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49f46d7-716f-70d2-8d40-e3773244e9fd",
  "kind": "theorem",
  "lexical_name": "gaussianDyadicSchwartz_seminorm",
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
  "slug": "gaussiandyadicschwartz-seminorm--c5da1606e3a043086308fbc9",
  "source": {
    "blob": "175c2dbaec5eef024237b0a26332ccd62b3c6250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 117,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5da1606e3a043086308fbc90fbb284fc21d21ff1bf18076665a3112f6f8ed90",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49f46d7-716f-70d2-8d40-e3773244e9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianDyadicSchwartz_seminorm (a : ℝ) (k n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      SchwartzMap.seminorm ℝ k n (gaussianDyadicSchwartz Z hZ j)≤C*(((2:ℝ)^j/Z)^(-a)) := by
  obtain ⟨B,hB,hbound⟩ := gaussianDyadicProfile_derivative_uniform a n
  refine ⟨(2:ℝ)^k*B,by positivity,?_⟩
  intro Z hZ j
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  apply SchwartzMap.seminorm_le_bound' ℝ k n _ (by positivity)
  intro y
  change |y|^k*‖iteratedDeriv n (gaussianDyadicProfile Z j) y‖≤_
  by_cases hy : y∈Set.Icc (1/2:ℝ) 2
  · have habs : |y|≤2 := by rw [abs_of_nonneg (by linarith [hy.1])]; exact hy.2
    calc
      _ ≤ (2:ℝ)^k*(B*(((2:ℝ)^j/Z)^(-a))) :=
        mul_le_mul (pow_le_pow_left₀ (abs_nonneg _) habs k) (hbound Z hZ j y hy)
          (norm_nonneg _) (by positivity)
      _ = _ := by ring
  · rw [gaussianDyadicProfile_derivative_outside Z j n y hy,norm_zero,mul_zero]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175c2dbaec5eef024237b0a26332ccd62b3c6250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
