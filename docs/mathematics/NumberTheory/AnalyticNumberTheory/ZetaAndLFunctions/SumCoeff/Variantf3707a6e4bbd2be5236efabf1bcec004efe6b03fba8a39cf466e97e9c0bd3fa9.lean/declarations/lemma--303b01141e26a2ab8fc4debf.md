# lemma₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bc5f74d-30ee-4e3c-214d-aa6a7c595902",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f7c1f84-621e-6f3e-36c8-67f29b4fd45f",
  "kind": "theorem",
  "lexical_name": "lemma₂",
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
  "slug": "lemma--303b01141e26a2ab8fc4debf",
  "source": {
    "blob": "13dd829fa36d658b96bb84a96f721b30c9ce6ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 199,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303b01141e26a2ab8fc4debf063bf2940c42e017ef98e6506fdf675060f327a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f7c1f84-621e-6f3e-36c8-67f29b4fd45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lemma₂ {s T ε : ℝ} {S : ℝ → ℂ} (hs : 1 < s)
    (hS₁ : LocallyIntegrableOn (fun t ↦ S t) (Set.Ici 1)) (hS₂ : ∀ t ≥ T, ‖S t‖ ≤ ε * t) :
    IntegrableOn (fun t : ℝ ↦ ‖S t‖ * (t ^ (-s - 1))) (Set.Ici 1) := by
  have h : LocallyIntegrableOn (fun t : ℝ ↦ ‖S t‖ * (t ^ (-s - 1))) (Set.Ici 1) := by
    refine hS₁.norm.mul_continuousOn ?_ isLocallyClosed_Ici
    exact fun t ht ↦ (Real.continuousAt_rpow_const _ _
      <| Or.inl (zero_lt_one.trans_le ht).ne').continuousWithinAt
  refine h.integrableOn_of_isBigO_atTop (g := fun t ↦ t ^ (-s)) (isBigO_iff.mpr ⟨ε, ?_⟩) ?_
  · filter_upwards [eventually_ge_atTop T, eventually_gt_atTop 0] with t ht ht'
    simpa [abs_of_nonneg, Real.rpow_nonneg, ht'.le, Real.rpow_sub ht', mul_assoc, ht'.ne',
      mul_div_cancel₀] using mul_le_mul_of_nonneg_right (hS₂ t ht) (norm_nonneg <| t ^ (-s - 1))
  · exact integrableAtFilter_rpow_atTop_iff.mpr <| neg_lt_neg_iff.mpr hs

end lemmas

section proof
-- See `LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃` for the strategy of proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantf3707a6e4bbd2be5236efabf1bcec004efe6b03fba8a39cf466e97e9c0bd3fa9.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13dd829fa36d658b96bb84a96f721b30c9ce6ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
