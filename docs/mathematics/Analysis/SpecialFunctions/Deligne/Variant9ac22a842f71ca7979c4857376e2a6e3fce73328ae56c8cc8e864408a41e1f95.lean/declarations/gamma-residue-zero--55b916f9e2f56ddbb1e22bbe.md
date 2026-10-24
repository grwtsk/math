# Gammaℝ_residue_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cab0b7e-cbce-ae57-c937-082dae0169cd",
  "kind": "lemma",
  "lexical_name": "Gammaℝ_residue_zero",
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
  "slug": "gamma-residue-zero--55b916f9e2f56ddbb1e22bbe",
  "source": {
    "blob": "da96f09ae001c43f6fa2f609f78cd49cc11775ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 102,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55b916f9e2f56ddbb1e22bbe6732e4d2a54de7316ef0a69ed32c7b9f5e2028b8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cab0b7e-cbce-ae57-c937-082dae0169cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gammaℝ_residue_zero : Tendsto (fun s ↦ s * Gammaℝ s) (𝓝[≠] 0) (𝓝 2) := by
  have h : Tendsto (fun z : ℂ ↦ z / 2 * Gamma (z / 2)) (𝓝[≠] 0) (𝓝 1) := by
    refine tendsto_self_mul_Gamma_nhds_zero.comp ?_
    rw [tendsto_nhdsWithin_iff, (by simp : 𝓝 (0 : ℂ) = 𝓝 (0 / 2))]
    exact ⟨(tendsto_id.div_const _).mono_left nhdsWithin_le_nhds,
      eventually_of_mem self_mem_nhdsWithin fun x hx ↦ div_ne_zero hx two_ne_zero⟩
  have h' : Tendsto (fun s : ℂ ↦ 2 * (π : ℂ) ^ (-s / 2)) (𝓝[≠] 0) (𝓝 2) := by
    rw [(by simp : 𝓝 2 = 𝓝 (2 * (π : ℂ) ^ (-(0 : ℂ) / 2)))]
    refine Tendsto.mono_left (ContinuousAt.tendsto ?_) nhdsWithin_le_nhds
    exact continuousAt_const.mul ((continuousAt_const_cpow (ofReal_ne_zero.mpr pi_ne_zero)).comp
      (continuousAt_id.neg.div_const _))
  convert mul_one (2 : ℂ) ▸ (h'.mul h) using 2 with z
  rw [Gammaℝ]
  ring_nf

end analyticity

section reflection

/-- Reformulation of the doubling formula in terms of `Gammaℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9ac22a842f71ca7979c4857376e2a6e3fce73328ae56c8cc8e864408a41e1f95.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da96f09ae001c43f6fa2f609f78cd49cc11775ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
