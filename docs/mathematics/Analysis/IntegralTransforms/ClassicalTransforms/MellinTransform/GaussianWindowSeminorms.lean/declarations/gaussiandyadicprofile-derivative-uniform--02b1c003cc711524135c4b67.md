# gaussianDyadicProfile_derivative_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c58814c-eb21-1a9e-931c-e021d918c2de",
  "kind": "lemma",
  "lexical_name": "gaussianDyadicProfile_derivative_uniform",
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
  "slug": "gaussiandyadicprofile-derivative-uniform--02b1c003cc711524135c4b67",
  "source": {
    "blob": "175c2dbaec5eef024237b0a26332ccd62b3c6250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 86,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02b1c003cc711524135c4b67517d0cfaa77acf789e8012fc492c640fafbac950",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c58814c-eb21-1a9e-931c-e021d918c2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianDyadicProfile_derivative_uniform (a : ℝ) (n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,0<Z→∀j : ℕ,∀y∈Set.Icc (1/2:ℝ) 2,
      ‖iteratedDeriv n (gaussianDyadicProfile Z j) y‖≤C*(((2:ℝ)^j/Z)^(-a)) := by
  choose B hB hbound using fun i : ℕ=>gaussianLog_scaled_derivative_bound a i
  let A (i : ℕ) := SchwartzMap.seminorm ℝ 0 i gaussianFixedSchwartz
  let C := ∑i∈Finset.range (n+1),(n.choose i:ℝ)*A i*B (n-i)
  have hA (i : ℕ) : 0≤A i := by exact apply_nonneg _ _
  have hC : 0≤C := Finset.sum_nonneg (fun i _=>mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (hA i)) (hB _).le)
  refine ⟨C+1,by positivity,?_⟩
  intro Z hZ j y hy
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  have hy0 : 0<y := by linarith [hy.1]
  rw [gaussianDyadicProfile_factor,iteratedDeriv_fun_mul (n := n)
    (gaussianFixedWindow_contDiff.contDiffAt.of_le (by exact_mod_cast (le_top : (n : ℕ∞) ≤ ⊤)))
    ((gaussianProfile_scaled_smooth _ hr y hy0).of_le (by exact_mod_cast (le_top : (n : ℕ∞) ≤ ⊤)))]
  calc
    _ ≤ ∑i∈Finset.range (n+1),‖(n.choose i:ℂ)*iteratedDeriv i gaussianFixedWindow y*
        iteratedDeriv (n-i) (fun x : ℝ=>gaussianMellinProfile (((2:ℝ)^j/Z)*x)) y‖ := norm_sum_le _ _
    _ ≤ ∑i∈Finset.range (n+1),((n.choose i:ℝ)*A i)*(B (n-i)*(((2:ℝ)^j/Z)^(-a))) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul,norm_mul,Complex.norm_natCast]
      have hfixed : ‖iteratedDeriv i gaussianFixedWindow y‖≤A i := by
        have hh := SchwartzMap.le_seminorm' ℝ 0 i gaussianFixedSchwartz y
        simp only [pow_zero,one_mul] at hh
        exact hh
      exact mul_le_mul (mul_le_mul_of_nonneg_left hfixed (Nat.cast_nonneg _))
        (hbound _ _ hr y hy) (norm_nonneg _) (mul_nonneg (Nat.cast_nonneg _) (hA i))
    _ = C*(((2:ℝ)^j/Z)^(-a)) := by simp only [C,Finset.sum_mul]; apply Finset.sum_congr rfl; intros; ring
    _ ≤ (C+1)*(((2:ℝ)^j/Z)^(-a)) := by nlinarith [Real.rpow_pos_of_pos hr (-a)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `175c2dbaec5eef024237b0a26332ccd62b3c6250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
