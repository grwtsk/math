# fourier_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:454d74f3-41be-7967-5868-522dafae128b",
  "kind": "theorem",
  "lexical_name": "fourier_reflection",
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
  "slug": "fourier-reflection--fe0f2a2bec11e7ce03b8510d",
  "source": {
    "blob": "91f90151cb778ac9ad0b9b942fb91990f85338ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 154,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0f2a2bec11e7ce03b8510d6f4fbb82e83e83865db3c4cc315b3d4b390be6ee",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:454d74f3-41be-7967-5868-522dafae128b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_reflection (f : ComplexL2) : 𝓕 (reflection f) = reflection (𝓕 f) := by
  let P := fun f : ComplexL2 => 𝓕 (reflection f) = reflection (𝓕 f)
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp reflection.continuous)
      (reflection.continuous.comp (Lp.fourierTransformₗᵢ ℝ ℂ).continuous)
  intro φ
  change 𝓕 (reflection (φ.toLp 2)) = reflection (𝓕 (φ.toLp 2))
  rw [reflection_toLp, SchwartzMap.toLp_fourier_eq, SchwartzMap.toLp_fourier_eq,
    reflection_toLp]
  congr 1
  ext ξ
  change 𝓕 ((φ : ℝ → ℂ) ∘ (LinearIsometryEquiv.neg ℝ)) ξ =
    𝓕 (φ : ℝ → ℂ) ((LinearIsometryEquiv.neg ℝ) ξ)
  exact Real.fourier_comp_linearIsometry (LinearIsometryEquiv.neg ℝ) φ ξ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f90151cb778ac9ad0b9b942fb91990f85338ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
