# Integrable.tendsto_setIntegral_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54465381-3ab5-b95c-fea5-7e11d57dc3d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af101d50-2528-7e68-382d-e498ff34ff00",
  "kind": "theorem",
  "lexical_name": "Integrable.tendsto_setIntegral_nhds_zero",
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
  "slug": "integrable-tendsto-setintegral-nhds-zero--8637f454ebec9aba1eb4400c",
  "source": {
    "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 544,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8637f454ebec9aba1eb4400c31e570b75bea0af0e206e958e32f31106fbcdd80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af101d50-2528-7e68-382d-e498ff34ff00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.tendsto_setIntegral_nhds_zero {ι : Type*}
    (hf : μ.Integrable f) {l : Filter ι} {s : ι → Set X}
    (hs : Tendsto (μ.variation ∘ s) l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ᵛ x in s i, f x ∂[B; μ]) l (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  simp_rw [← coe_nnnorm, ← NNReal.coe_zero, NNReal.tendsto_coe, ← ENNReal.tendsto_coe,
    ENNReal.coe_zero]
  have : Tendsto (fun i ↦ ‖B‖ₑ * ∫⁻ (x : X) in s i, ‖f x‖ₑ ∂μ.variation) l (𝓝 (‖B‖ₑ * 0)) :=
    ENNReal.Tendsto.const_mul (tendsto_setLIntegral_zero (ne_of_lt hf.2) hs) (by simp)
  rw [mul_zero] at this
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds this (fun i ↦ zero_le)
  intro i
  apply enorm_integral_le_lintegral_enorm.trans
  dsimp
  gcongr
  exact variation_restrict_le

/-- If `F i → f` in `L1`, then `∫ᵛ x in s, F i x ∂[B; μ] → ∫ᵛ x in s, f x ∂[B; μ]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed85567055957af5325ba9761e2f3ebd7792e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
