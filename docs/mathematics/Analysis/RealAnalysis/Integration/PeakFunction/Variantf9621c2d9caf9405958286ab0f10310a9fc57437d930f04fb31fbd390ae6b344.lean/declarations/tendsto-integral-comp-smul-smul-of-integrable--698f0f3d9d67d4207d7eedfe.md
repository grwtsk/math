# tendsto_integral_comp_smul_smul_of_integrable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa78b05d-7fbb-3717-7302-b8cb1976eeae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb3c6339-d0dc-bda9-6b22-7db604483525",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_comp_smul_smul_of_integrable'",
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
  "slug": "tendsto-integral-comp-smul-smul-of-integrable--698f0f3d9d67d4207d7eedfe",
  "source": {
    "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 449,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:698f0f3d9d67d4207d7eedfee1985d46056b3dd180fc1c15e3afc4571ee1d873",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb3c6339-d0dc-bda9-6b22-7db604483525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_comp_smul_smul_of_integrable'
    {φ : F → ℝ} (hφ : ∀ x, 0 ≤ φ x) (h'φ : ∫ x, φ x ∂μ = 1)
    (h : Tendsto (fun x ↦ ‖x‖ ^ finrank ℝ F * φ x) (cobounded F) (𝓝 0))
    {g : F → E} {x₀ : F} (hg : Integrable g μ) (h'g : ContinuousAt g x₀) :
    Tendsto (fun (c : ℝ) ↦ ∫ x, (c ^ (finrank ℝ F) * φ (c • (x₀ - x))) • g x ∂μ)
      atTop (𝓝 (g x₀)) := by
  let f := fun x ↦ g (x₀ - x)
  have If : Integrable f μ := by simpa [f, sub_eq_add_neg] using (hg.comp_add_left x₀).comp_neg
  have : Tendsto (fun (c : ℝ) ↦ ∫ x, (c ^ (finrank ℝ F) * φ (c • x)) • f x ∂μ)
      atTop (𝓝 (f 0)) := by
    apply tendsto_integral_comp_smul_smul_of_integrable hφ h'φ h If
    have A : ContinuousAt g (x₀ - 0) := by simpa using h'g
    exact A.comp <| by fun_prop
  simp only [f, sub_zero] at this
  convert this using 2 with c
  conv_rhs => rw [← integral_add_left_eq_self x₀ (μ := μ)
    (f := fun x ↦ (c ^ finrank ℝ F * φ (c • x)) • g (x₀ - x)), ← integral_neg_eq_self]
  simp [smul_sub, sub_eq_add_neg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8982e7216adf6847d69ac4237916b9c28b1efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
