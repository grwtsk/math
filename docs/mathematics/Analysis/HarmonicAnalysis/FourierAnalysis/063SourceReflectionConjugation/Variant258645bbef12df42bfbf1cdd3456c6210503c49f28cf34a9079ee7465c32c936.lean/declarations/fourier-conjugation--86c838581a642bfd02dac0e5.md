# fourier_conjugation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e9baf01-b597-022f-091e-dca0f6ce1700",
  "kind": "theorem",
  "lexical_name": "fourier_conjugation",
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
  "slug": "fourier-conjugation--86c838581a642bfd02dac0e5",
  "source": {
    "blob": "5b40bfe343750aeb2bd8f6a6b61acbb67cd8cf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/063SourceReflectionConjugation/Variant258645bbef12df42bfbf1cdd3456c6210503c49f28cf34a9079ee7465c32c936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c838581a642bfd02dac0e5380fca978b0cdc77c4fc478d6f34ccc0a5cb79cd",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/063SourceReflectionConjugation/Variant258645bbef12df42bfbf1cdd3456c6210503c49f28cf34a9079ee7465c32c936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e9baf01-b597-022f-091e-dca0f6ce1700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_conjugation (f : ComplexL2) :
    𝓕 (conjugation f) = reflection (conjugation (𝓕 f)) := by
  let P := fun f : ComplexL2 =>
    𝓕 (conjugation f) = reflection (conjugation (𝓕 f))
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp conjugation.continuous)
      (reflection.continuous.comp (conjugation.continuous.comp
        (Lp.fourierTransformₗᵢ ℝ ℂ).continuous))
  intro φ
  change 𝓕 (conjugation (φ.toLp 2)) = reflection (conjugation (𝓕 (φ.toLp 2)))
  rw [conjugation_toLp,SchwartzMap.toLp_fourier_eq,SchwartzMap.toLp_fourier_eq]
  apply Lp.ext
  filter_upwards [SchwartzMap.coeFn_toLp
      (𝓕 (φ.postcompCLM (Complex.conjCLE : ℂ →L[ℝ] ℂ))) 2,
    reflection_coe_ae (conjugation ((𝓕 φ).toLp 2)),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (conjugation_coe_ae ((𝓕 φ).toLp 2)),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (SchwartzMap.coeFn_toLp (𝓕 φ) 2 (volume : Measure ℝ))] with ξ h1 h2 h3 h4
  change conjugation ((𝓕 φ).toLp 2) (-ξ) = conj (((𝓕 φ).toLp 2) (-ξ)) at h3
  change ((𝓕 φ).toLp 2) (-ξ) = (𝓕 φ) (-ξ) at h4
  rw [h1,h2,h3,h4]
  exact fourier_conjugation_function φ ξ


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/063SourceReflectionConjugation/Variant258645bbef12df42bfbf1cdd3456c6210503c49f28cf34a9079ee7465c32c936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/063SourceReflectionConjugation/Variant258645bbef12df42bfbf1cdd3456c6210503c49f28cf34a9079ee7465c32c936.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b40bfe343750aeb2bd8f6a6b61acbb67cd8cf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
