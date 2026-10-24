# lintegral_tendsto_of_tendsto_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f96937767d4b11304c47364612003fc3a7db0b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce1205f1f994aa879508e1e5fe61302677dd77fdccacacbc9ac601b0d01bc189.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2916ad5c-f113-a7ce-0710-3c436b2adf4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63911824-61c7-0b4d-e2fc-207f93517405",
  "kind": "theorem",
  "lexical_name": "lintegral_tendsto_of_tendsto_of_antitone",
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
  "slug": "lintegral-tendsto-of-tendsto-of-antitone--68e295f97939ae673f48cfa4",
  "source": {
    "blob": "f96937767d4b11304c47364612003fc3a7db0b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variantce1205f1f994aa879508e1e5fe61302677dd77fdccacacbc9ac601b0d01bc189.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e295f97939ae673f48cfa41c76fd0201ebc76ca7bad5d0013fd1edb84dbf5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Sub/Variantce1205f1f994aa879508e1e5fe61302677dd77fdccacacbc9ac601b0d01bc189.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63911824-61c7-0b4d-e2fc-207f93517405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_tendsto_of_tendsto_of_antitone {f : ℕ → α → ℝ≥0∞} {F : α → ℝ≥0∞}
    (hf : ∀ n, AEMeasurable (f n) μ) (h_anti : ∀ᵐ x ∂μ, Antitone fun n ↦ f n x)
    (h0 : ∫⁻ a, f 0 a ∂μ ≠ ∞)
    (h_tendsto : ∀ᵐ x ∂μ, Tendsto (fun n ↦ f n x) atTop (𝓝 (F x))) :
    Tendsto (fun n ↦ ∫⁻ x, f n x ∂μ) atTop (𝓝 (∫⁻ x, F x ∂μ)) := by
  have : Antitone fun n ↦ ∫⁻ x, f n x ∂μ := fun i j hij ↦
    lintegral_mono_ae (h_anti.mono fun x hx ↦ hx hij)
  suffices key : ∫⁻ x, F x ∂μ = ⨅ n, ∫⁻ x, f n x ∂μ by
    rw [key]
    exact tendsto_atTop_iInf this
  rw [← lintegral_iInf' hf h_anti h0]
  refine lintegral_congr_ae ?_
  filter_upwards [h_anti, h_tendsto] with _ hx_anti hx_tendsto
    using tendsto_nhds_unique hx_tendsto (tendsto_atTop_iInf hx_anti)

section UnifTight

local infixr:25 " →ₛ " => SimpleFunc

open Function in
/-- If `f : α → ℝ≥0∞` has finite integral, then there exists a measurable set `s` of finite measure
such that the integral of `f` over `sᶜ` is less than a given positive number.

Also used to prove an `Lᵖ`-norm version in
`MeasureTheory.MemLp.exists_eLpNorm_indicator_compl_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Sub/Variantce1205f1f994aa879508e1e5fe61302677dd77fdccacacbc9ac601b0d01bc189.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variantce1205f1f994aa879508e1e5fe61302677dd77fdccacacbc9ac601b0d01bc189.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96937767d4b11304c47364612003fc3a7db0b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
