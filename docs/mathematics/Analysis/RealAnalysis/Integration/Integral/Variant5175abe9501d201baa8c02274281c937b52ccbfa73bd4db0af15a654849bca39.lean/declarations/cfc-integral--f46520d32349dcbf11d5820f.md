# cfcₙ_integral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab199fe-3ac7-88ea-f50b-262eb60f21c1",
  "kind": "lemma",
  "lexical_name": "cfcₙ_integral'",
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
  "slug": "cfc-integral--f46520d32349dcbf11d5820f",
  "source": {
    "blob": "d2e50a040abe731f9ceaa7a6de1cab4488c8db33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f46520d32349dcbf11d5820fb9916c097df1af09d193b8a4673a9e44f42f4347",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab199fe-3ac7-88ea-f50b-262eb60f21c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_integral' [TopologicalSpace X] [OpensMeasurableSpace X] (f : X → 𝕜 → 𝕜)
    (bound : X → ℝ) (a : A) [SecondCountableTopologyEither X C(quasispectrum 𝕜 a, 𝕜)₀]
    (hf : Continuous (fun x => (quasispectrum 𝕜 a).restrict (f x)).uncurry)
    (hf₂ : ∀ x, f x 0 = 0)
    (hbound : ∀ x, ∀ z ∈ quasispectrum 𝕜 a, ‖f x z‖ ≤ ‖bound x‖)
    (hbound_finite_integral : HasFiniteIntegral bound μ) (ha : p a := by cfc_tac) :
    cfcₙ (fun r => ∫ x, f x r ∂μ) a = ∫ x, cfcₙ (f x) a ∂μ := by
  refine cfcₙ_integral f bound a ?_ hf₂ ?_ hbound hbound_finite_integral
  · exact (continuousOn_iff_continuous_restrict.mpr <| hf.uncurry_left ·)
  · let g := ((↑) : C(quasispectrum 𝕜 a, 𝕜)₀ → C(quasispectrum 𝕜 a, 𝕜))
    refine ((isInducing_iff g).mpr rfl).continuous_iff.mpr ?_
    exact ContinuousMap.curry ⟨_, hf⟩ |>.continuous

end nonunital
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5175abe9501d201baa8c02274281c937b52ccbfa73bd4db0af15a654849bca39.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e50a040abe731f9ceaa7a6de1cab4488c8db33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
