# rectangleIntegral_logDeriv_completedLSym_eq_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce166829-8700-aeb5-e1b8-a6378c78ff72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e3f2f15-210b-e0ed-599b-6db4659d33a7",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral_logDeriv_completedLSym_eq_halfContour",
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
  "slug": "rectangleintegral-logderiv-completedlsym-eq-halfcontour--843462c600fd58f2f26e09d5",
  "source": {
    "blob": "593eaa2bea3a05cdd7384cc7689a231513b63e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 200,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:843462c600fd58f2f26e09d5238c4d560af80cf6ea13dd1f42a72e443fce1ce9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3f2f15-210b-e0ed-599b-6db4659d33a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral_logDeriv_completedLSym_eq_halfContour (hq : 1 < q)
    (hprim : χ.IsPrimitive) {T₁ T₂ : ℝ}
    (hg1 : ∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T₁) (hg2 : ∀ ρ, IsNontrivialZeroL χ ρ → ρ.im ≠ T₂) :
    RectangleIntegral (logDeriv (completedLSym χ)) (-1 + T₁ * I) (2 + T₂ * I)
      = 2 * I * ((Zeta23.RvM.halfContour (logDeriv (completedLSym χ)) T₁ T₂).im : ℂ) := by
  have hre1 : (-1 + T₁ * I).re = -1 := by simp
  have him1 : (-1 + T₁ * I).im = T₁ := by simp
  have hre2 : (2 + T₂ * I : ℂ).re = 2 := by simp
  have him2 : (2 + T₂ * I : ℂ).im = T₂ := by simp
  simp only [RectangleIntegral, HIntegral, VIntegral, hre1, him1, hre2, him2, smul_eq_mul,
    Complex.ofReal_neg, Complex.ofReal_one, Complex.ofReal_ofNat]
  rw [horizontal_foldChi hq hprim hg1, horizontal_foldChi hq hprim hg2, vertical_foldChi hq hprim T₁ T₂]
  simp only [Zeta23.RvM.halfContour, Complex.add_im, Complex.sub_im, Complex.mul_I_im]
  generalize (∫ σ in (1 / 2 : ℝ)..2, logDeriv (completedLSym χ) (σ + T₁ * I)) = A₁
  generalize (∫ σ in (1 / 2 : ℝ)..2, logDeriv (completedLSym χ) (σ + T₂ * I)) = A₂
  generalize (∫ t in T₁..T₂, logDeriv (completedLSym χ) (2 + t * I)) = B
  have e1 : 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * B - I * -conj B
      = 2 * I * (A₁.im : ℂ) - 2 * I * (A₂.im : ℂ) + I * (B + conj B) := by ring
  rw [e1, Complex.add_conj]
  push_cast
  ring

/-- **N_χ(T₁,T₂) = (1/π)·Im ∫_L Λ_sym'/Λ_sym** for good heights T₁ ≤ T₂ of any sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variante507df99c23df94399c00d6ed8442552ba4ed9a8ae31cd2a3a9ed6d36482719f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593eaa2bea3a05cdd7384cc7689a231513b63e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
