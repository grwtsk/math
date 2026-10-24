# hasDerivAtFilter_iff_tendsto_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a258b1131e8405d3180328b403e87085cf811db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b12fd643-09b4-611f-3b95-c70173c38c36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:800b51a0-4b00-425d-97de-4ae164564aa1",
  "kind": "theorem",
  "lexical_name": "hasDerivAtFilter_iff_tendsto_slope",
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
  "slug": "hasderivatfilter-iff-tendsto-slope--0f9d2940b06328a910741543",
  "source": {
    "blob": "6a258b1131e8405d3180328b403e87085cf811db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9d2940b06328a910741543dc90d1efbd1ea079a89ce187314809966007375e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:800b51a0-4b00-425d-97de-4ae164564aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAtFilter_iff_tendsto_slope {x : 𝕜} {L : Filter 𝕜} :
    HasDerivAtFilter f f' (L ×ˢ pure x) ↔ Tendsto (slope f x) (L ⊓ 𝓟 {x}ᶜ) (𝓝 f') :=
  calc HasDerivAtFilter f f' (L ×ˢ pure x)
    _ ↔ Tendsto (fun y ↦ slope f x y - (y - x)⁻¹ • (y - x) • f') L (𝓝 0) := by
      simp only [hasDerivAtFilter_iff_tendsto, prod_pure, tendsto_map'_iff, Function.comp_def,
        ← norm_inv, ← norm_smul, ← tendsto_zero_iff_norm_tendsto_zero, slope_def_module, smul_sub]
    _ ↔ Tendsto (fun y ↦ slope f x y - (y - x)⁻¹ • (y - x) • f') (L ⊓ 𝓟 {x}ᶜ) (𝓝 0) :=
      .symm <| tendsto_inf_principal_nhds_iff_of_forall_eq <| by simp
    _ ↔ Tendsto (fun y ↦ slope f x y - f') (L ⊓ 𝓟 {x}ᶜ) (𝓝 0) := tendsto_congr' <| by
      refine (EqOn.eventuallyEq fun y hy ↦ ?_).filter_mono inf_le_right
      rw [inv_smul_smul₀ (sub_ne_zero.2 hy) f']
    _ ↔ Tendsto (slope f x) (L ⊓ 𝓟 {x}ᶜ) (𝓝 f') := by
      rw [← nhds_translation_sub f', tendsto_comap_iff]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a258b1131e8405d3180328b403e87085cf811db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
