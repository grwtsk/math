# horizontal_foldChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46f2324b-679a-6ee9-08a9-35046a584eab",
  "kind": "lemma",
  "lexical_name": "horizontal_foldChi",
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
  "slug": "horizontal-foldchi--827ce49a5581ede97af83396",
  "source": {
    "blob": "84c70d1e4b5f80d1277d1af74612d069d085396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:827ce49a5581ede97af8339667daf5b14f2aac89ed0d3eab1a244f2bdf5aaa9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46f2324b-679a-6ee9-08a9-35046a584eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma horizontal_foldChi (hq : 1 < q) (hprim : χ.IsPrimitive) {T : ℝ}
    (hgood : ∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T) :
    ∫ σ in (-1 : ℝ)..2, logDeriv (completedLSym χ) (σ + T * I)
      = 2 * I * ((∫ σ in (1 / 2 : ℝ)..2, logDeriv (completedLSym χ) (σ + T * I)).im : ℂ) := by
  set F := logDeriv (completedLSym χ) with hF
  have hcont : Continuous fun σ : ℝ => F (σ + T * I) := by
    refine continuous_iff_continuousAt.mpr fun σ => ?_
    have h := continuousAt_logDeriv_completedLSym hq hprim (s := σ + T * I) (by simpa using hgood)
    exact ContinuousAt.comp (f := fun σ : ℝ => (σ : ℂ) + T * I) h (by fun_prop)
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hcont.intervalIntegrable (μ := volume) (-1) (1 / 2))
    (hcont.intervalIntegrable (μ := volume) (1 / 2) 2)
  rw [← hsplit]
  set A := ∫ σ in (1 / 2 : ℝ)..2, F (σ + T * I) with hA
  have hleft : ∫ σ in (-1 : ℝ)..(1 / 2), F (σ + T * I) = -conj A := by
    have hsub := intervalIntegral.integral_comp_sub_left (f := fun x : ℝ => F (x + T * I))
      (a := (1 / 2 : ℝ)) (b := 2) (1 : ℝ)
    norm_num at hsub
    rw [← hsub, hA, ← intervalIntegral_conj, ← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro x _
    have key := logDeriv_completedLSym_one_sub_conj hq hprim (x + T * I)
    have e : (1 : ℂ) - conj ((x : ℂ) + T * I) = 1 - (x : ℂ) + T * I := by
      simp [Complex.ext_iff]
    simp only [hF] at key ⊢
    rw [← e, key]
  rw [hleft, neg_add_eq_sub, Complex.sub_conj]
  push_cast
  ring

/-- Vertical fold: ∫_{T₁}^{T₂} F(−1+it)dt = −conj ∫_{T₁}^{T₂} F(2+it)dt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c70d1e4b5f80d1277d1af74612d069d085396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
