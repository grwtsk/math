# prime_bound_of_theta_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f24702ba-0d07-5b10-1def-70cb9dbda56c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cd5140a-e1ce-62f7-069c-35f92ae5d459",
  "kind": "theorem",
  "lexical_name": "prime_bound_of_theta_bound",
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
  "slug": "prime-bound-of-theta-bound--7dd29853651fe7c83c742b77",
  "source": {
    "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dd29853651fe7c83c742b772f13bb9993da2d4e1fe1d59f119a8f5b095b3f23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd5140a-e1ce-62f7-069c-35f92ae5d459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_bound_of_theta_bound
    {C : ℝ} {x₀ : ℕ} (hC : 0 ≤ C) (hx₀ : 2 ≤ x₀)
    (hTheta : ∀ x : ℕ, x₀ ≤ x →
      |conductorThreeTheta x| ≤ C * twistedPsiCriticalRate x) :
    ∀ N : ℕ, max x₀ 3 ≤ N →
      |primeCharacterPartialSum N| ≤
        (4 * C + earlyThetaKernelMass x₀) *
          residueDifferenceCriticalRate N := by
  intro N hN
  have hx₀N : x₀ ≤ N := (le_max_left _ _).trans hN
  have h3N : 3 ≤ N := (le_max_right _ _).trans hN
  have h2N : 2 ≤ N := by omega
  have hlog : 0 < Real.log (N : ℝ) :=
    Real.log_pos (by exact_mod_cast (show 1 < N by omega))
  have hlog1 : 1 ≤ Real.log (N : ℝ) := by
    rw [← Real.exp_le_exp, Real.exp_log (by positivity)]
    exact le_trans Real.exp_one_lt_three.le (by exact_mod_cast h3N)
  have hsqrt0 : 0 ≤ Real.sqrt (N : ℝ) := Real.sqrt_nonneg _
  have hRate1 : 1 ≤ residueDifferenceCriticalRate N :=
    one_le_residueDifferenceCriticalRate h3N
  have hEarly0 : 0 ≤ earlyThetaKernelMass x₀ :=
    earlyThetaKernelMass_nonneg x₀
  have hBoundary :
      |conductorThreeTheta N * reciprocalLog N| ≤
        C * residueDifferenceCriticalRate N := by
    calc
      |conductorThreeTheta N * reciprocalLog N| =
          |conductorThreeTheta N| * (Real.log (N : ℝ))⁻¹ := by
        rw [abs_mul]
        unfold reciprocalLog
        rw [abs_inv, abs_of_pos hlog]
      _ ≤ (C * twistedPsiCriticalRate N) *
          (Real.log (N : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_right (hTheta N hx₀N) (inv_nonneg.2 hlog.le)
      _ = C * residueDifferenceCriticalRate N := by
        rw [twistedPsiCriticalRate_eq_residue_mul_log]
        field_simp [hlog.ne']
  have hTailTerm : ∀ n ∈ Finset.Ico x₀ N,
      |conductorThreeTheta n *
        (reciprocalLog n - reciprocalLog (n + 1))| ≤
          C * (Real.sqrt (n : ℝ))⁻¹ := by
    intro n hnMem
    have hx₀n : x₀ ≤ n := (Finset.mem_Ico.1 hnMem).1
    have h2n : 2 ≤ n := hx₀.trans hx₀n
    have hkernel0 := reciprocalLog_sub_nonneg h2n
    rw [abs_mul, abs_of_nonneg hkernel0]
    calc
      |conductorThreeTheta n| *
          (reciprocalLog n - reciprocalLog (n + 1)) ≤
          (C * twistedPsiCriticalRate n) *
            (reciprocalLog n - reciprocalLog (n + 1)) :=
        mul_le_mul_of_nonneg_right (hTheta n hx₀n) hkernel0
      _ = C * (twistedPsiCriticalRate n *
            (reciprocalLog n - reciprocalLog (n + 1))) := by ring
      _ ≤ C * (Real.sqrt (n : ℝ))⁻¹ :=
        mul_le_mul_of_nonneg_left
          (criticalRate_mul_reciprocalKernel_le_invSqrt h2n) hC
  have hTail :
      (∑ n ∈ Finset.Ico x₀ N,
        |conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))|) ≤
        3 * C * Real.sqrt (N : ℝ) := by
    calc
      (∑ n ∈ Finset.Ico x₀ N,
        |conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))|) ≤
          ∑ n ∈ Finset.Ico x₀ N,
            C * (Real.sqrt (n : ℝ))⁻¹ := by
        exact Finset.sum_le_sum hTailTerm
      _ ≤ ∑ n ∈ Finset.Ico 2 N,
            C * (Real.sqrt (n : ℝ))⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg
        · intro n hnMem
          exact Finset.mem_Ico.2
            ⟨hx₀.trans (Finset.mem_Ico.1 hnMem).1,
              (Finset.mem_Ico.1 hnMem).2⟩
        · intro n hnFull hnTail
          exact mul_nonneg hC (inv_nonneg.2 (Real.sqrt_nonneg _))
      _ = C * (∑ n ∈ Finset.Ico 2 N,
            (Real.sqrt (n : ℝ))⁻¹) := by
        rw [Finset.mul_sum]
      _ ≤ C * (3 * Real.sqrt (N : ℝ)) :=
        mul_le_mul_of_nonneg_left (sum_invSqrt_Ico_le h2N) hC
      _ = 3 * C * Real.sqrt (N : ℝ) := by ring
  have hSum :
      |∑ n ∈ Finset.Ico 2 N,
        conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))| ≤
        earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ) := by
    calc
      |∑ n ∈ Finset.Ico 2 N,
        conductorThreeTheta n *
          (reciprocalLog n - reciprocalLog (n + 1))| ≤
          ∑ n ∈ Finset.Ico 2 N,
            |conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| :=
        Finset.abs_sum_le_sum_abs _ _
      _ = earlyThetaKernelMass x₀ +
          ∑ n ∈ Finset.Ico x₀ N,
            |conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| := by
        rw [← Finset.sum_Ico_consecutive _ hx₀ hx₀N]
        congr 1
        unfold earlyThetaKernelMass
        apply Finset.sum_congr rfl
        intro n hnMem
        rw [abs_mul, abs_of_nonneg <|
          reciprocalLog_sub_nonneg (Finset.mem_Ico.1 hnMem).1]
      _ ≤ earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ) :=
        add_le_add (le_refl _) hTail
  rw [primeCharacterPartialSum_eq_inverseAbel h2N]
  calc
    |conductorThreeTheta N * reciprocalLog N +
        ∑ n ∈ Finset.Ico 2 N,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1))| ≤
        |conductorThreeTheta N * reciprocalLog N| +
          |∑ n ∈ Finset.Ico 2 N,
            conductorThreeTheta n *
              (reciprocalLog n - reciprocalLog (n + 1))| :=
      abs_add_le _ _
    _ ≤ C * residueDifferenceCriticalRate N +
        (earlyThetaKernelMass x₀ +
          3 * C * Real.sqrt (N : ℝ)) := add_le_add hBoundary hSum
    _ ≤ (4 * C + earlyThetaKernelMass x₀) *
          residueDifferenceCriticalRate N := by
      have hsqrt_le_rate : Real.sqrt (N : ℝ) ≤
          residueDifferenceCriticalRate N := by
        unfold residueDifferenceCriticalRate
        nlinarith
      have hEarlyAbsorb : earlyThetaKernelMass x₀ ≤
          earlyThetaKernelMass x₀ * residueDifferenceCriticalRate N := by
        nlinarith
      have hTailAbsorb : 3 * C * Real.sqrt (N : ℝ) ≤
          3 * C * residueDifferenceCriticalRate N := by
        exact mul_le_mul_of_nonneg_left hsqrt_le_rate
          (mul_nonneg (by norm_num) hC)
      calc
        C * residueDifferenceCriticalRate N +
            (earlyThetaKernelMass x₀ + 3 * C * Real.sqrt (N : ℝ)) ≤
            C * residueDifferenceCriticalRate N +
              (earlyThetaKernelMass x₀ * residueDifferenceCriticalRate N +
                3 * C * residueDifferenceCriticalRate N) :=
          add_le_add (le_refl _) (add_le_add hEarlyAbsorb hTailAbsorb)
        _ = (4 * C + earlyThetaKernelMass x₀) *
            residueDifferenceCriticalRate N := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba111dcdee7875e51b1b98d5941203e6e28e2a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
