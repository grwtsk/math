# rectangleIntegral_logDeriv_completedZeta_eq_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ffac60c4659efa429b8d07d54b13c30acc5c845",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81786903-1354-0dc2-779f-790b3590b02a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64cd58c0-99fe-88ab-2cea-81c62e7da5a6",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral_logDeriv_completedZeta_eq_halfContour",
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
  "slug": "rectangleintegral-logderiv-completedzeta-eq-halfcontour--15474eb5001f2b89a28a76ca",
  "source": {
    "blob": "5ffac60c4659efa429b8d07d54b13c30acc5c845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15474eb5001f2b89a28a76ca9f79fb626004b797f8c166f57e07153cc89ca6ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64cd58c0-99fe-88ab-2cea-81c62e7da5a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral_logDeriv_completedZeta_eq_halfContour {T₁ T₂ : ℝ} (h1 : 1 ≤ T₁)
    (h12 : T₁ < T₂) (hg1 : GoodHeight T₁) (hg2 : GoodHeight T₂) :
    RectangleIntegral (logDeriv completedRiemannZeta) (-1 + T₁ * I) (2 + T₂ * I)
      = 2 * I * ((halfContour (logDeriv completedRiemannZeta) T₁ T₂).im : ℂ) := by
  have hre1 : (-1 + T₁ * I).re = -1 := by simp
  have him1 : (-1 + T₁ * I).im = T₁ := by simp
  have hre2 : (2 + T₂ * I : ℂ).re = 2 := by simp
  have him2 : (2 + T₂ * I : ℂ).im = T₂ := by simp
  simp only [RectangleIntegral, HIntegral, VIntegral, hre1, him1, hre2, him2, smul_eq_mul,
    Complex.ofReal_neg, Complex.ofReal_one, Complex.ofReal_ofNat]
  rw [horizontal_fold h1 hg1, horizontal_fold (by linarith) hg2, vertical_fold h1 h12.le]
  simp only [halfContour, Complex.add_im, Complex.sub_im, Complex.mul_I_im]
  generalize (∫ σ in (1 / 2 : ℝ)..2, logDeriv completedRiemannZeta (σ + T₁ * I)) = A₁
  generalize (∫ σ in (1 / 2 : ℝ)..2, logDeriv completedRiemannZeta (σ + T₂ * I)) = A₂
  generalize (∫ t in T₁..T₂, logDeriv completedRiemannZeta (2 + t * I)) = B
  have e1 : 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * B - I * -starRingEnd ℂ B
      = 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * (B + starRingEnd ℂ B) := by ring
  rw [e1, Complex.add_conj]
  push_cast
  ring

/-- **N(T₁,T₂) = (1/π)·Im ∫_L Λ'/Λ** for good heights 1 ≤ T₁ < T₂ (this is MainTerm.lean's
N_eq_halfContour_completedZeta). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fold/Variant2f1ba3640d30c967327bb0aff86832bdb1d327fe9ee810ae40bd96c55e12131a.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ffac60c4659efa429b8d07d54b13c30acc5c845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
