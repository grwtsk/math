# actualShortSquareBaseline_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4104dfef-2709-c431-59c3-e0e759352f41",
  "kind": "theorem",
  "lexical_name": "actualShortSquareBaseline_le",
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
  "slug": "actualshortsquarebaseline-le--3b14a2ab1ff4abea91fcdd86",
  "source": {
    "blob": "c6584b0191c45fd6d5fda3d090724d3f799cfefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b14a2ab1ff4abea91fcdd867d12c7843f8e62018714f4bfbf17058174053c21",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4104dfef-2709-c431-59c3-e0e759352f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortSquareBaseline_le {A : ℝ} (hA : 1 ≤ A) :
    actualShortSquareBaseline A ≤ A * (Real.log (vaughanCutoff A : ℝ) + Real.log 4 + 4) := by
  have hp : 0 < A := by linarith
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hb := (weightedMangoldt_sub_log_bounds (vaughanCutoff A) hU).2
  have hpref : weightedMangoldt (vaughanCutoff A) ≤
      Real.log (vaughanCutoff A : ℝ) + Real.log 4 + 4 := by linarith
  have hsub : (∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / n) ≤
      weightedMangoldt (vaughanCutoff A) := by
    unfold weightedMangoldt
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro n hn
      obtain ⟨hn2, hnU⟩ := Finset.mem_Icc.mp hn
      exact Finset.mem_Ioc.mpr ⟨by omega, hnU⟩
    · intro n _ _
      exact div_nonneg vonMangoldt_nonneg (Nat.cast_nonneg _)
  unfold actualShortSquareBaseline finiteMangoldtBaseline
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), A * ((vonMangoldt n : ℝ) / n) := by
      apply Finset.sum_le_sum
      intro n hn
      have hnN : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
      have hnR : 0 < (n : ℝ) := by exact_mod_cast hnN
      have hnA : (n : ℝ) ≤ A ^ 2 :=
        (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hn).2).trans
          (Nat.floor_le (sq_nonneg A))
      have hsA : Real.sqrt (n : ℝ) ≤ A :=
        (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
      rw [coefficient_eq hnN]
      have heq : (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) =
          Real.sqrt (n : ℝ) * ((vonMangoldt n : ℝ) / n) := by
        rw [show Real.sqrt (n : ℝ) * ((vonMangoldt n : ℝ) / n) =
          (vonMangoldt n : ℝ) * (Real.sqrt (n : ℝ) / n) by ring,
          Real.sqrt_div_self']
        ring
      rw [heq]
      exact mul_le_mul_of_nonneg_right hsA (div_nonneg vonMangoldt_nonneg hnR.le)
    _ = A * ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / n := by
      rw [Finset.mul_sum]
    _ ≤ A * weightedMangoldt (vaughanCutoff A) :=
      mul_le_mul_of_nonneg_left hsub hp.le
    _ ≤ _ := mul_le_mul_of_nonneg_left hpref hp.le

/-- The actual short square sum has an explicit vanishing budget before any long compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variantfb0ba6f940b9f2d0b76cf03f3d978c48d029e056628df426d1489cd44d165d8a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6584b0191c45fd6d5fda3d090724d3f799cfefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
