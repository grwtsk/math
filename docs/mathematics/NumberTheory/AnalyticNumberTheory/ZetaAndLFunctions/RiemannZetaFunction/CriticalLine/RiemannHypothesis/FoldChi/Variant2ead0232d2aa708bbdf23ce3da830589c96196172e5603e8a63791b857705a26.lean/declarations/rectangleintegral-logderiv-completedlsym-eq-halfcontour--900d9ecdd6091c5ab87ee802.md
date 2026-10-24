# rectangleIntegral_logDeriv_completedLSym_eq_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fc26f16-ba9d-a4e1-b478-c0def100c01d",
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
  "slug": "rectangleintegral-logderiv-completedlsym-eq-halfcontour--900d9ecdd6091c5ab87ee802",
  "source": {
    "blob": "84c70d1e4b5f80d1277d1af74612d069d085396a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:900d9ecdd6091c5ab87ee802e6025b961d292d172059c9c9db28fbfbd2a4aace",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc26f16-ba9d-a4e1-b478-c0def100c01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–230.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FoldChi/Variant2ead0232d2aa708bbdf23ce3da830589c96196172e5603e8a63791b857705a26.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c70d1e4b5f80d1277d1af74612d069d085396a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
