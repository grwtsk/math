# finite_convolution_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8b25cf2e31dc96c2dd2bcb584f24b609188a42a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f6ddf61-b6e2-a04c-77dd-0bad3b88aa1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c009ea6d-2068-164b-7a9e-89ee6fa83b12",
  "kind": "theorem",
  "lexical_name": "finite_convolution_sum",
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
  "slug": "finite-convolution-sum--7d6f5944699ec17c22f32e0e",
  "source": {
    "blob": "e8b25cf2e31dc96c2dd2bcb584f24b609188a42a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6f5944699ec17c22f32e0ea304c444df9014d2d0809263091b068eebf88065",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c009ea6d-2068-164b-7a9e-89ee6fa83b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_convolution_sum (N : ℕ) (f g : ArithmeticFunction ℝ) (w : ℕ → ℝ)
    (hw : ∀ n, N < n → w n = 0) :
    (∑ n ∈ Finset.Icc 1 N, (f*g) n * w n) =
      ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, f a * g b * w (a*b) := by
  classical
  simp_rw [ArithmeticFunction.mul_apply, Finset.sum_mul]
  rw [Finset.sum_sigma', ← Finset.sum_product']
  let S := (Finset.Icc 1 N ×ˢ Finset.Icc 1 N).filter (fun ab : ℕ × ℕ ↦ ab.1*ab.2 ≤ N)
  calc
    _ = ∑ ab ∈ S, f ab.1 * g ab.2 * w (ab.1*ab.2) := by
      apply Finset.sum_bij (fun a _ ↦ a.2)
      · rintro ⟨n, a, b⟩ hn
        obtain ⟨hn, hab⟩ := Finset.mem_sigma.mp hn
        obtain ⟨hab, hn0⟩ := Nat.mem_divisorsAntidiagonal.mp hab
        have ha : 0 < a := Nat.pos_of_ne_zero (left_ne_zero_of_mul (hab ▸ hn0))
        have hb : 0 < b := Nat.pos_of_ne_zero (right_ne_zero_of_mul (hab ▸ hn0))
        have haN : a ≤ N := (Nat.le_mul_of_pos_right a hb).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        have hbN : b ≤ N := (Nat.le_mul_of_pos_left b ha).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        exact Finset.mem_filter.mpr ⟨Finset.mem_product.mpr
          ⟨Finset.mem_Icc.mpr ⟨ha, haN⟩, Finset.mem_Icc.mpr ⟨hb, hbN⟩⟩,
          hab ▸ (Finset.mem_Icc.mp hn).2⟩
      · rintro ⟨n, ab⟩ hn ⟨m, cd⟩ hm heq
        have hn' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1
        have hm' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hm).2).1
        dsimp only at heq hn' hm'
        have hnm : n = m := by rw [← hn', ← hm', heq]
        cases hnm
        cases heq
        rfl
      · rintro ⟨a,b⟩ hab
        obtain ⟨hab, hN⟩ := Finset.mem_filter.mp hab
        obtain ⟨ha,hb⟩ := Finset.mem_product.mp hab
        have hp : 0 < a*b := Nat.mul_pos (Finset.mem_Icc.mp ha).1 (Finset.mem_Icc.mp hb).1
        refine ⟨⟨a*b,(a,b)⟩, Finset.mem_sigma.mpr ⟨Finset.mem_Icc.mpr ⟨hp,hN⟩,
          Nat.mem_divisorsAntidiagonal.mpr ⟨rfl,hp.ne'⟩⟩, rfl⟩
      · rintro ⟨n, a, b⟩ hn
        rw [(Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1]
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro ab hab hn
      have hcut : N < ab.1*ab.2 := by
        by_contra h
        exact hn (Finset.mem_filter.mpr ⟨hab, by omega⟩)
      rw [hw _ hcut, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b25cf2e31dc96c2dd2bcb584f24b609188a42a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
