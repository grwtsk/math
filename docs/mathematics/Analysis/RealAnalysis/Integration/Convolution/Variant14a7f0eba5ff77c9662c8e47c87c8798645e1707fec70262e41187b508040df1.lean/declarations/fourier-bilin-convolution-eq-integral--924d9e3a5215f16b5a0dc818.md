# fourier_bilin_convolution_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b260e1-c05f-830b-696c-fef9c043a1c2",
  "kind": "theorem",
  "lexical_name": "fourier_bilin_convolution_eq_integral",
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
  "slug": "fourier-bilin-convolution-eq-integral--924d9e3a5215f16b5a0dc818",
  "source": {
    "blob": "709b9f4654406ded9c96187d706c4a34883585c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924d9e3a5215f16b5a0dc818c4203d1b6f1258e275e8d47eaae81d729b1a8884",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b260e1-c05f-830b-696c-fef9c043a1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_bilin_convolution_eq_integral (B : F₁ →L[𝕜] F₂ →L[𝕜] F₃) {f₁ : E → F₁} {f₂ : E → F₂}
    (hf₁ : Integrable f₁) (hf₂ : Integrable f₂) (ξ : E) :
    𝓕 (f₁ ⋆[B] f₂) ξ = ∫ y, ∫ x, 𝐞 (-inner ℝ (y + x) ξ) • B (f₁ x) (f₂ y) := calc
  _ = 𝓕 (f₂ ⋆[B.flip] f₁) ξ := by
    rw [convolution_flip]
  _ = ∫ x, 𝐞 (-inner ℝ x ξ) • ∫ y, B (f₁ (x - y)) (f₂ y) := by rfl
  _ = ∫ x, ∫ y, 𝐞 (-inner ℝ x ξ) • B (f₁ (x - y)) (f₂ y) := by
    congr
    ext x
    simp_rw [Circle.smul_def, integral_smul]
  _ = ∫ y, ∫ x, 𝐞 (-inner ℝ x ξ) • B (f₁ (x - y)) (f₂ y) := by
    refine integral_integral_swap ?_
    have hB := hf₂.convolution_integrand B.flip hf₁
    refine hB.mono ?_ ?_
    · exact continuous_fourierChar.comp (by fun_prop) |>.aestronglyMeasurable.smul
        hB.aestronglyMeasurable
    · filter_upwards with ⟨x, y⟩ using by simp
  _ = ∫ y, ∫ x, 𝐞 (-inner ℝ (y + x) ξ) • B (f₁ x) (f₂ y) := by
    congr
    ext y
    -- Linear change of variables
    convert! integral_sub_right_eq_self _ y (μ := volume)
    congr
    simp

variable [CompleteSpace F₁] [CompleteSpace F₂] [CompleteSpace F₃]
  [NormedSpace ℂ F₁] [NormedSpace ℂ F₂]

open ContinuousLinearMap

/-- The Fourier transform of the convolution is given by the bilinear map applied to the Fourier
transform of the individual functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `709b9f4654406ded9c96187d706c4a34883585c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
