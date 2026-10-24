# jointMangoldtErrorWork_eq_actual_bilinear_profiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fc49997-8a41-c20f-7488-a00490d6c8ae",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_actual_bilinear_profiles",
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
  "slug": "jointmangoldterrorwork-eq-actual-bilinear-profiles--cbaadc1c6db6601b5a7baf84",
  "source": {
    "blob": "695e97c18ecfe370fb7aa4078ca1c329765a2c58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 608,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbaadc1c6db6601b5a7baf84907191c484008afed05979d13f825638f0e880e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fc49997-8a41-c20f-7488-a00490d6c8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_actual_bilinear_profiles (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
    let X0 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * q (v - t)
    let X1 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * deriv q (v - t)
    let Y0 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), q (v + Real.log u) / (u * Real.sqrt u))
    let Y1 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), deriv q (v + Real.log u) /
        (u * Real.sqrt u))
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v : ℝ, X1 v * Y1 v) + (1 / 4 : ℝ) * (∫ v : ℝ, X0 v * Y0 v) := by
  dsimp only
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
    exact_mod_cast hk0
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (U : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; dsimp only [U]; omega : 0 < U)
  have hlb : Real.log (U : ℝ) ≤ Real.log (N : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast hUN)
  have hd (t : ℝ) : deriv (SourceJointMangoldtWork.jointMangoldtTestProfile A) t =
      ∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)) := by
    have h : HasDerivAt (fun t : ℝ => ∑ k ∈ s,
        B k * (sourceColumn A (k : ℝ) t - sourceColumn A ((k : ℝ) + 1) t))
        (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
          sourceColumnTimeDeriv A t ((k : ℝ) + 1))) t := by
      apply HasDerivAt.fun_sum
      intro k _
      exact ((sourceColumn_hasDerivAt hp (k : ℝ) t).sub
        (sourceColumn_hasDerivAt hp ((k : ℝ) + 1) t)).const_mul (B k)
    have he : SourceJointMangoldtWork.jointMangoldtTestProfile A =
        fun x => ∑ k ∈ s, B k *
          (sourceColumn A (k : ℝ) x - sourceColumn A ((k : ℝ) + 1) x) := by
      funext x
      simp only [SourceJointMangoldtWork.jointMangoldtTestProfile,
        sourceColumn, U, N, s, B, Nat.cast_add, Nat.cast_one]
    rw [he]
    exact h.deriv
  unfold SourceJointMangoldtWork.jointMangoldtErrorWork
  simp_rw [hd]
  exact finite_signed_column_work_factorization hp hlb s B hpos

/-- The original Mangoldt time row starts at log U, including its lower boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695e97c18ecfe370fb7aa4078ca1c329765a2c58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
