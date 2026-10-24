# fourierIntegral_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47b533c4-409a-78a4-a5bd-6e7619acbc89",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_continuous",
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
  "slug": "fourierintegral-continuous--e978a821ac8152a99353d648",
  "source": {
    "blob": "4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 172,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e978a821ac8152a99353d6489518cc8a55e75b6bf874b8bc80b512b67e6cc465",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b533c4-409a-78a4-a5bd-6e7619acbc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_continuous [TopologicalSpace.FirstCountableTopology W] (he : Continuous e)
    (hL : Continuous fun p : V × W => L p.1 p.2) {f : V → E} (hf : Integrable f μ) :
    Continuous (fourierIntegral e μ L f) := by
  apply continuous_of_dominated
  · exact fun w => ((fourier_integral_convergent_iff he hL w).mp hf).1
  · refine' fun w => ae_of_all _ fun v => _
    · exact fun v => ‖f v‖
    · rw [norm_smul, Complex.norm_eq_abs, abs_coe_circle, one_mul]
  · exact hf.norm
  · rw [continuous_induced_rng] at he
    refine' ae_of_all _ fun v => (he.comp (continuous_ofAdd.comp _)).smul continuous_const
    refine' (hL.comp (continuous_prod_mk.mpr ⟨continuous_const, continuous_id⟩)).neg
#align vector_fourier.fourier_integral_continuous VectorFourier.fourierIntegral_continuous

end Continuous

end VectorFourier

/-! ## Fourier theory for functions on `𝕜` -/


namespace Fourier

variable {𝕜 : Type*} [CommRing 𝕜] [MeasurableSpace 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace ℂ E]

section Defs

variable [CompleteSpace E]

/-- The Fourier transform integral for `f : 𝕜 → E`, with respect to the measure `μ` and additive
character `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
