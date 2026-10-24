# exp_half_mul_leftSampleSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9868b22cc9b1dde138db3ac534dba2295824724c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fd003cc-7e22-db74-5f9e-fff0da3f313c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92df3032-6b3b-80a6-b905-24833d302f6d",
  "kind": "theorem",
  "lexical_name": "exp_half_mul_leftSampleSum",
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
  "slug": "exp-half-mul-leftsamplesum--90e01238793a9e04cfb2c5e7",
  "source": {
    "blob": "9868b22cc9b1dde138db3ac534dba2295824724c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e01238793a9e04cfb2c5e7c8ed619f944459162d070e071864153624b3ff2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92df3032-6b3b-80a6-b905-24833d302f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_half_mul_leftSampleSum (F : ℝ → ℝ) (N : ℕ) (s : ℝ) :
    Real.exp (s / 2) * leftSampleSum (logSamplingTerm F (Real.exp s)) N =
      ∑ k ∈ Finset.Icc 1 N,
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) * F (s + Real.log (k : ℝ)) := by
  unfold leftSampleSum
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hk).1)
  have he : Real.exp (s / 2) * Real.exp (-(s + Real.log (k : ℝ)) / 2) =
      (Real.sqrt (k : ℝ))⁻¹ := by
    rw [← Real.exp_add]
    calc
      _ = Real.exp (-Real.log (k : ℝ) / 2) := by congr 1; ring
      _ = _ := exp_neg_log_half_eq_inv_sqrt hkpos
  simp only [logSamplingTerm, Real.log_exp]
  calc
    _ = Real.log (k : ℝ) *
        (Real.exp (s / 2) * Real.exp (-(s + Real.log (k : ℝ)) / 2)) *
          F (s + Real.log (k : ℝ)) := by ring
    _ = _ := by rw [he]; ring

/-- The unchanged kernel is a finite sum of translates of the literal correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9868b22cc9b1dde138db3ac534dba2295824724c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
