# rectangleIntegral_eq_halfContour_of_fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29a5022721d4c466f23a8bb07e519816e03e05cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6395afb2-f18b-bbb1-e7e8-bde97e6e410d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:512da7fa-2bab-565b-4df9-6b690560d2c0",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral_eq_halfContour_of_fold",
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
  "slug": "rectangleintegral-eq-halfcontour-of-fold--0a912d613658b5f40fabb367",
  "source": {
    "blob": "29a5022721d4c466f23a8bb07e519816e03e05cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a912d613658b5f40fabb367b240226c7f2dfa2eb329cd3c8e8e22f0c52997dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512da7fa-2bab-565b-4df9-6b690560d2c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral_eq_halfContour_of_fold
    (hc₁ : Continuous fun σ : ℝ => F (σ + T₁ * I)) (hc₂ : Continuous fun σ : ℝ => F (σ + T₂ * I))
    (hf₁ : ∀ x ∈ uIcc (1 / 2 : ℝ) 2, F (1 - conj ((x : ℂ) + T₁ * I)) = -conj (F ((x : ℂ) + T₁ * I)))
    (hf₂ : ∀ x ∈ uIcc (1 / 2 : ℝ) 2, F (1 - conj ((x : ℂ) + T₂ * I)) = -conj (F ((x : ℂ) + T₂ * I)))
    (hfv : ∀ t ∈ uIcc T₁ T₂, F (1 - conj ((2 : ℂ) + t * I)) = -conj (F ((2 : ℂ) + t * I))) :
    RectangleIntegral F (-1 + T₁ * I) (2 + T₂ * I) = 2 * I * ((halfContour F T₁ T₂).im : ℂ) := by
  have hre1 : (-1 + T₁ * I).re = -1 := by simp
  have him1 : (-1 + T₁ * I).im = T₁ := by simp
  have hre2 : (2 + T₂ * I : ℂ).re = 2 := by simp
  have him2 : (2 + T₂ * I : ℂ).im = T₂ := by simp
  simp only [RectangleIntegral, HIntegral, VIntegral, hre1, him1, hre2, him2, smul_eq_mul,
    Complex.ofReal_neg, Complex.ofReal_one, Complex.ofReal_ofNat]
  rw [horizontal_fold_of T₁ hc₁ hf₁, horizontal_fold_of T₂ hc₂ hf₂, vertical_fold_of hfv]
  simp only [Zeta23.RvM.halfContour, Complex.add_im, Complex.sub_im, Complex.mul_I_im]
  generalize (∫ σ in (1 / 2 : ℝ)..2, F (σ + T₁ * I)) = A₁
  generalize (∫ σ in (1 / 2 : ℝ)..2, F (σ + T₂ * I)) = A₂
  generalize (∫ t in T₁..T₂, F (2 + t * I)) = B
  have e1 : 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * B - I * -starRingEnd ℂ B
      = 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * (B + starRingEnd ℂ B) := by ring
  rw [e1, Complex.add_conj]
  push_cast
  ring

/-- from (1/2πi)∮F = N and the fold: N = (1/π)·Im halfContour F. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a5022721d4c466f23a8bb07e519816e03e05cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
