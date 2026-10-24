# tendsto_of_integral_tendsto_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef0842abcf7734be280787239cc750ce5b4d7f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 868,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63955345-6d01-7db6-c604-32b02658fe90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b88f8d61-d806-f268-c194-ba9d5b387f46",
  "kind": "lemma",
  "lexical_name": "tendsto_of_integral_tendsto_of_antitone",
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
  "slug": "tendsto-of-integral-tendsto-of-antitone--313bbef459be9f75bfb5515b",
  "source": {
    "blob": "ef0842abcf7734be280787239cc750ce5b4d7f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 868,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313bbef459be9f75bfb5515ba996957419a22e082ce36f1599fe6c23793af2a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b88f8d61-d806-f268-c194-ba9d5b387f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_integral_tendsto_of_antitone {μ : Measure α} {f : ℕ → α → ℝ} {F : α → ℝ}
    (hf_int : ∀ n, Integrable (f n) μ) (hF_int : Integrable F μ)
    (hf_tendsto : Tendsto (fun i ↦ ∫ a, f i a ∂μ) atTop (𝓝 (∫ a, F a ∂μ)))
    (hf_mono : ∀ᵐ a ∂μ, Antitone (fun i ↦ f i a))
    (hf_bound : ∀ᵐ a ∂μ, ∀ i, F a ≤ f i a) :
    ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F a)) := by
  let f' : ℕ → α → ℝ := fun i a ↦ - f i a
  let F' : α → ℝ := fun a ↦ - F a
  suffices ∀ᵐ a ∂μ, Tendsto (fun i ↦ f' i a) atTop (𝓝 (F' a)) by
    filter_upwards [this] with a ha_tendsto
    convert ha_tendsto.neg
    · simp [f']
    · simp [F']
  refine tendsto_of_integral_tendsto_of_monotone (fun n ↦ (hf_int n).neg) hF_int.neg ?_ ?_ ?_
  · convert hf_tendsto.neg
    · rw [integral_neg]
    · rw [integral_neg]
  · filter_upwards [hf_mono] with a ha i j hij
    simp [f', ha hij]
  · filter_upwards [hf_bound] with a ha i
    simp [f', F', ha i]

section NormedAddCommGroup

variable {H : Type*} [NormedAddCommGroup H]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant4583e59e05a1749f65257653da431a3a3895aab370c67e2e7bae464c07d83fed.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef0842abcf7734be280787239cc750ce5b4d7f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
