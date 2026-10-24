# integrableOn_cfcₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9aa0b71bc717306a181859d8c33df4da41437b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d24d127246b4307887fb7355376d852534c06d9317eaac50797e85c5c9d3f1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c26edb77-5437-cb58-dac3-d2d001b5eaaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65428dd3-f2eb-da02-b663-93ca2e2e0bd2",
  "kind": "lemma",
  "lexical_name": "integrableOn_cfcₙ",
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
  "slug": "integrableon-cfc--3e04a7b954b971c386941432",
  "source": {
    "blob": "ae9aa0b71bc717306a181859d8c33df4da41437b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant1d24d127246b4307887fb7355376d852534c06d9317eaac50797e85c5c9d3f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e04a7b954b971c3869414320a37922efd7ccd752aba5e02eb758ade6ab62bc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant1d24d127246b4307887fb7355376d852534c06d9317eaac50797e85c5c9d3f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65428dd3-f2eb-da02-b663-93ca2e2e0bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableOn_cfcₙ [TopologicalSpace X] [OpensMeasurableSpace X] {s : Set X}
    (hs : MeasurableSet s) (f : X → 𝕜 → 𝕜) (bound : X → ℝ) (a : A)
    [SecondCountableTopologyEither X C(quasispectrum 𝕜 a, 𝕜)]
    (hf : ContinuousOn (uncurry f) (s ×ˢ quasispectrum 𝕜 a))
    (f_zero : ∀ᵐ x ∂(μ.restrict s), f x 0 = 0)
    (bound_ge : ∀ᵐ x ∂(μ.restrict s), ∀ z ∈ quasispectrum 𝕜 a, ‖f x z‖ ≤ bound x)
    (bound_int : HasFiniteIntegral bound (μ.restrict s)) (ha : p a := by cfc_tac) :
    IntegrableOn (fun x => cfcₙ (f x) a) s μ := by
  refine integrableOn_cfcₙ' _ _ ⟨?_, ?_⟩ ha
  · exact aeStronglyMeasurable_restrict_mkD_restrict_of_uncurry hs _ _ hf f_zero
  · refine hasFiniteIntegral_mkD_restrict_of_bound f _ ?_ f_zero bound bound_int bound_ge
    exact ae_restrict_of_forall_mem hs fun x hx ↦
      hf.comp (Continuous.prodMk_right x).continuousOn fun _ hz ↦ ⟨hx, hz⟩

open Set in
/-- The continuous functional calculus commutes with integration.
For a version with stronger assumptions which in practice are often easier to verify, see
`cfcₙ_integral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant1d24d127246b4307887fb7355376d852534c06d9317eaac50797e85c5c9d3f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant1d24d127246b4307887fb7355376d852534c06d9317eaac50797e85c5c9d3f1c.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9aa0b71bc717306a181859d8c33df4da41437b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
