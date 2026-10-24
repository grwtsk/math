# tensor_truncation_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d07deed-f329-c179-e6ae-9e28f738081c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4096c66-b690-9509-6a41-e0a1f4227985",
  "kind": "theorem",
  "lexical_name": "tensor_truncation_norm_bound",
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
  "slug": "tensor-truncation-norm-bound--134ca1634586c02680ded30f",
  "source": {
    "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 154,
    "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:134ca1634586c02680ded30fd33aaf6c6aca768852930c676d506edfeeecfd21",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4096c66-b690-9509-6a41-e0a1f4227985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensor_truncation_norm_bound (F : ℝ×ℝ → ℂ) (g : ℝ → ℝ) (K : ℝ)
    (hF : Integrable F) (hg : Integrable g) (hK : 0 ≤ K)
    (hg0 : ∀ t, 0 ≤ g t) (hbound : ∀ p, ‖F p‖ ≤ K*g p.1*g p.2)
    (S : Set ℝ) (hS : MeasurableSet S) :
    ‖(∫ p : ℝ×ℝ, F p)-(∫ p : ℝ×ℝ in S×ˢS, F p)‖ ≤
      2*K*(∫ t : ℝ, g t)*(∫ t : ℝ in Sᶜ, g t) := by
  let outside : ℝ → ℝ := Sᶜ.indicator g
  have ho : Integrable outside := hg.indicator hS.compl
  have hleft := ho.mul_prod hg
  have hright := hg.mul_prod ho
  have hmajor : Integrable (fun p : ℝ×ℝ => K*(outside p.1*g p.2+g p.1*outside p.2)) :=
    (hleft.add hright).const_mul K
  have hdom : ∀ p : ℝ×ℝ,
      ‖(S×ˢS)ᶜ.indicator F p‖ ≤ K*(outside p.1*g p.2+g p.1*outside p.2) := by
    intro p
    have hb := hbound p
    have hn : 0 ≤ K*g p.1*g p.2 := mul_nonneg (mul_nonneg hK (hg0 p.1)) (hg0 p.2)
    by_cases hx : p.1 ∈ S <;> by_cases hy : p.2 ∈ S
    · simp [outside,Set.indicator,hx,hy]
    · simpa [outside,Set.indicator,hx,hy,mul_assoc] using hb
    · simpa [outside,Set.indicator,hx,hy,mul_assoc] using hb
    · simp only [outside,Set.indicator,mem_compl_iff,mem_prod,hx,hy,
        and_false,not_false_eq_true,if_pos] at ⊢
      nlinarith
  have h := norm_integral_le_of_norm_le hmajor (Eventually.of_forall hdom)
  rw [integral_indicator (hS.prod hS).compl, setIntegral_compl (hS.prod hS) hF] at h
  rw [integral_const_mul] at h
  rw [Measure.volume_eq_prod] at h
  rw [integral_add hleft hright, integral_prod_mul, integral_prod_mul] at h
  dsimp only [outside] at h
  rw [integral_indicator hS.compl] at h
  calc
    _ ≤ K*((∫ t : ℝ in Sᶜ, g t)*(∫ t : ℝ, g t)+
      (∫ t : ℝ, g t)*(∫ t : ℝ in Sᶜ, g t)) := h
    _ = _ := by ring

/-- The two omitted frequency rays carry genuine absolute mass O(1/H). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
