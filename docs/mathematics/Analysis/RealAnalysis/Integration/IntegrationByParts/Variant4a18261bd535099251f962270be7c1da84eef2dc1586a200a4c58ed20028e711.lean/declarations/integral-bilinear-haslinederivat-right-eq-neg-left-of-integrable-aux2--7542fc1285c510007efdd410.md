# integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6a0f024-a67e-e659-ea97-977b58414603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cddf6d70-fb64-f140-6e5e-015ce9d5c194",
  "kind": "lemma",
  "lexical_name": "integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2",
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
  "slug": "integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable-aux2--7542fc1285c510007efdd410",
  "source": {
    "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7542fc1285c510007efdd410f9dd424317ea783e8d12ac2967f35d85c1b00df0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cddf6d70-fb64-f140-6e5e-015ce9d5c194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2
    [FiniteDimensional ℝ E] {μ : Measure (E × ℝ)} [IsAddHaarMeasure μ]
    {f f' : E × ℝ → F} {g g' : E × ℝ → G} {B : F →L[ℝ] G →L[ℝ] W}
    (hf'g : Integrable (fun x ↦ B (f' x) (g x)) μ)
    (hfg' : Integrable (fun x ↦ B (f x) (g' x)) μ)
    (hfg : Integrable (fun x ↦ B (f x) (g x)) μ)
    (hf : ∀ x, HasLineDerivAt ℝ f (f' x) x (0, 1)) (hg : ∀ x, HasLineDerivAt ℝ g (g' x) x (0, 1)) :
    ∫ x, B (f x) (g' x) ∂μ = - ∫ x, B (f' x) (g x) ∂μ := by
  let ν : Measure E := addHaar
  have A : ν.prod volume = (addHaarScalarFactor (ν.prod volume) μ) • μ :=
    isAddLeftInvariant_eq_smul _ _
  have Hf'g : Integrable (fun x ↦ B (f' x) (g x)) (ν.prod volume) := by
    rw [A]; exact hf'g.smul_measure_nnreal
  have Hfg' : Integrable (fun x ↦ B (f x) (g' x)) (ν.prod volume) := by
    rw [A]; exact hfg'.smul_measure_nnreal
  have Hfg : Integrable (fun x ↦ B (f x) (g x)) (ν.prod volume) := by
    rw [A]; exact hfg.smul_measure_nnreal
  rw [isAddLeftInvariant_eq_smul μ (ν.prod volume)]
  simp [integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux1 Hf'g Hfg' Hfg hf hg]

variable [FiniteDimensional ℝ E] [IsAddHaarMeasure μ]

/-- **Integration by parts for line derivatives**
Version with a general bilinear form `B`.
If `B f g` is integrable, as well as `B f' g` and `B f g'` where `f'` and `g'` are derivatives
of `f` and `g` in a given direction `v`, then `∫ B f g' = - ∫ B f' g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a682b2461766e00d3d9b98dd4b3428cdc7bae98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
