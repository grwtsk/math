# cfcₙ_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adbd53206d1803e0d70d8a876f0b20e63fa31777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b95ad8d-898a-90e3-59ef-9820b98db3ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ccfd468-9ff1-347b-f261-67e5989c5146",
  "kind": "lemma",
  "lexical_name": "cfcₙ_integral",
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
  "slug": "cfc-integral--7dca5705e657f768f8457e1e",
  "source": {
    "blob": "adbd53206d1803e0d70d8a876f0b20e63fa31777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dca5705e657f768f8457e1e0a92a866d7c7b0282b3bd35a77aefd8ef43add3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ccfd468-9ff1-347b-f261-67e5989c5146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_integral [TopologicalSpace X] [OpensMeasurableSpace X] (f : X → 𝕜 → 𝕜)
    (bound : X → ℝ) (a : A) [SecondCountableTopologyEither X C(quasispectrum 𝕜 a, 𝕜)₀]
    (hf₁ : ∀ x, ContinuousOn (f x) (quasispectrum 𝕜 a))
    (hf₂ : ∀ x, f x 0 = 0)
    (hf₃ : Continuous (fun x ↦ (⟨⟨_, hf₁ x |>.restrict⟩, hf₂ x⟩ : C(quasispectrum 𝕜 a, 𝕜)₀)))
    (hbound : ∀ x, ∀ z ∈ quasispectrum 𝕜 a, ‖f x z‖ ≤ ‖bound x‖)
    (hbound_finite_integral : HasFiniteIntegral bound μ) (ha : p a := by cfc_tac) :
    cfcₙ (fun r => ∫ x, f x r ∂μ) a = ∫ x, cfcₙ (f x) a ∂μ := by
  let fc : X → C(quasispectrum 𝕜 a, 𝕜)₀ := fun x => ⟨⟨_, (hf₁ x).restrict⟩, hf₂ x⟩
  have fc_integrable : Integrable fc μ := by
    refine ⟨hf₃.aestronglyMeasurable, ?_⟩
    refine hbound_finite_integral.mono <| .of_forall fun x ↦ ?_
    change ‖(fc x : C(quasispectrum  𝕜 a, 𝕜))‖ ≤ ‖bound x‖
    rw [ContinuousMap.norm_le _ (norm_nonneg (bound x))]
    exact fun z ↦ hbound x z.1 z.2
  have h_int_fc : (quasispectrum 𝕜 a).restrict (∫ x, f x · ∂μ) = ∫ x, fc x ∂μ := by
    ext; simp [integral_apply fc_integrable, fc]
  have hcont₂ : ContinuousOn (fun r => ∫ x, f x r ∂μ) (quasispectrum 𝕜 a) := by
    rw [continuousOn_iff_continuous_restrict]
    convert map_continuous (∫ x, fc x ∂μ)
  rw [integral_congr_ae (.of_forall fun _ ↦ cfcₙ_apply ..), cfcₙ_apply ..,
    cfcₙHom_integral _ _ fc_integrable]
  congr

/-- The non-unital continuous functional calculus commutes with integration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbd53206d1803e0d70d8a876f0b20e63fa31777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
