# source_fourier_scaled_bump

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
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26ed391-c427-7995-b74c-c04fcc855bf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bd0221e-0675-5d8a-60f5-2ee9bf355fb8",
  "kind": "theorem",
  "lexical_name": "source_fourier_scaled_bump",
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
  "slug": "source-fourier-scaled-bump--f9538e05c2c7a2daec8e4640",
  "source": {
    "blob": "fa21fdfce150b1b9d9bbea5757ea05d4c04189ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9538e05c2c7a2daec8e4640c8492bf73a6bb5775d9d8990a0b799c3f2e22ef8",
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

Occurrence: `result:3bd0221e-0675-5d8a-60f5-2ee9bf355fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_fourier_scaled_bump (A ξ : ℝ) (hA : 0 < A) :
    sourceFourier (scaledBump A) ξ =
      (Real.sqrt A : ℂ) * sourceFourier sourceBump (A * ξ) := by
  have hne : A ≠ 0 := ne_of_gt hA
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hne
  have hphase (x : ℝ) :
      Complex.I * (ξ : ℂ) * (x : ℂ) =
        Complex.I * ((A * ξ : ℝ) : ℂ) * ((x / A : ℝ) : ℂ) := by
    push_cast
    field_simp [hAc]
  unfold sourceFourier scaledBump
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div, hphase]
  rw [integral_div,
    Measure.integral_comp_div (fun x : ℝ ↦ (sourceBump x : ℂ) *
      Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (x : ℂ))) A,
    abs_of_pos hA, Complex.real_smul]
  rw [mul_div_right_comm, ← Complex.ofReal_div, Real.div_sqrt]

/-- The rescaled actual source density, including its change-of-variable Jacobian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variant1ebd85084fa7a024d08f264f76f8e421e2d333ce8a86781e99568098b1b010fb.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa21fdfce150b1b9d9bbea5757ea05d4c04189ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
