# fourierIntegral_comp_add_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b29e68-0302-458d-9385-d1e878e91ee8",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_comp_add_right",
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
  "slug": "fourierintegral-comp-add-right--dc02d6c4214b75d2606487be",
  "source": {
    "blob": "4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 108,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc02d6c4214b75d2606487be7e6fdeb93cae63fd29f7bee618ecd4f9633ddeb1",
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

Occurrence: `result:14b29e68-0302-458d-9385-d1e878e91ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_comp_add_right [MeasurableAdd V] (e : Multiplicative 𝕜 →* 𝕊) (μ : Measure V)
    [μ.IsAddRightInvariant] (L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜) (f : V → E) (v₀ : V) :
    fourierIntegral e μ L (f ∘ fun v => v + v₀) =
      fun w => e[L v₀ w] • fourierIntegral e μ L f w := by
  ext1 w
  dsimp only [fourierIntegral, Function.comp_apply]
  conv in L _ => rw [← add_sub_cancel v v₀]
  rw [integral_add_right_eq_self fun v : V => e[-L (v - v₀) w] • f v]
  dsimp only
  rw [← integral_smul]
  congr 1 with v
  rw [← smul_assoc, smul_eq_mul, ← Submonoid.coe_mul, ← e.map_mul, ← ofAdd_add, ←
    LinearMap.neg_apply, ← sub_eq_add_neg, ← LinearMap.sub_apply, LinearMap.map_sub, neg_sub]
#align vector_fourier.fourier_integral_comp_add_right VectorFourier.fourierIntegral_comp_add_right

end Defs

section Continuous

/- In this section we assume 𝕜, V, W have topologies, and L, e are continuous (but f needn't be).
   This is used to ensure that `e [-L v w]` is (ae strongly) measurable. We could get away with
   imposing only a measurable-space structure on 𝕜 (it doesn't have to be the Borel sigma-algebra of
   a topology); but it seems hard to imagine cases where this extra generality would be useful, and
   allowing it would complicate matters in the most important use cases.
-/
variable [TopologicalSpace 𝕜] [TopologicalRing 𝕜] [TopologicalSpace V] [BorelSpace V]
  [TopologicalSpace W] {e : Multiplicative 𝕜 →* 𝕊} {μ : Measure V} {L : V →ₗ[𝕜] W →ₗ[𝕜] 𝕜}

/-- For any `w`, the Fourier integral is convergent iff `f` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb9a52ca6ddbadbec884ccaf7a8a14c51c0efb3bd88bbae65648ad168de8b8004.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea99a82ef6d9f40b9a88d891fbd4440ef38fc70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
