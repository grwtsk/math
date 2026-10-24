# tendsto_approxOn_Lp_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80115981-df21-676c-21d2-ac211f1e3f35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9713399-a1bf-2be5-650a-15195b2c64a2",
  "kind": "theorem",
  "lexical_name": "tendsto_approxOn_Lp_eLpNorm'",
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
  "slug": "tendsto-approxon-lp-elpnorm--033fdef74cf4a4689dd72bf6",
  "source": {
    "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 89,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:033fdef74cf4a4689dd72bf6505112d393ab33493ceb7ac96f8365045d6d92ab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9713399-a1bf-2be5-650a-15195b2c64a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_approxOn_Lp_eLpNorm' [OpensMeasurableSpace E] {p : ℝ} {f : β → E} {μ : Measure β}
    (hf : Measurable f) {s : Set E} {y₀ : E} (h₀ : y₀ ∈ s) [SeparableSpace s] (hp : 0 < p)
    (hμ : ∀ᵐ x ∂μ, f x ∈ closure s) (hi : eLpNorm' (fun x => f x - y₀) p μ < ∞) :
    Tendsto (fun n => eLpNorm' (⇑(approxOn f hf s y₀ h₀ n) - f) p μ) atTop (𝓝 0) := by
  suffices Tendsto (fun n => ∫⁻ x, ‖approxOn f hf s y₀ h₀ n x - f x‖ₑ ^ p ∂μ) atTop (𝓝 0) by
    convert! continuous_rpow_const.continuousAt.tendsto.comp this
    simp [zero_rpow_of_pos (_root_.inv_pos.mpr hp)]
  -- We simply check the conditions of the Dominated Convergence Theorem:
  -- (1) The function "`p`-th power of distance between `f` and the approximation" is measurable
  have hF_meas n : Measurable fun x => ‖approxOn f hf s y₀ h₀ n x - f x‖ₑ ^ p := by
    simpa only [← edist_eq_enorm_sub] using
      (approxOn f hf s y₀ h₀ n).measurable_bind (fun y x => edist y (f x) ^ p) fun y =>
        (measurable_edist_right.comp hf).pow_const p
  -- (2) The functions "`p`-th power of distance between `f` and the approximation" are uniformly
  -- bounded, at any given point, by `fun x => ‖f x - y₀‖ ^ p.toReal`
  have h_bound n :
    (fun x ↦ ‖approxOn f hf s y₀ h₀ n x - f x‖ₑ ^ p) ≤ᵐ[μ] (‖f · - y₀‖ₑ ^ p) :=
    .of_forall fun x => rpow_le_rpow (coe_mono (nnnorm_approxOn_le hf h₀ x n)) hp.le
  -- (3) The bounding function `fun x => ‖f x - y₀‖ ^ p.toReal` has finite integral
  have h_fin : (∫⁻ a : β, ‖f a - y₀‖ₑ ^ p ∂μ) ≠ ⊤ :=
    (lintegral_rpow_enorm_lt_top_of_eLpNorm'_lt_top hp hi).ne
  -- (4) The functions "`p`-th power of distance between `f` and the approximation" tend pointwise
  -- to zero
  have h_lim :
    ∀ᵐ a : β ∂μ, Tendsto (‖approxOn f hf s y₀ h₀ · a - f a‖ₑ ^ p) atTop (𝓝 0) := by
    filter_upwards [hμ] with a ha
    have : Tendsto (fun n => (approxOn f hf s y₀ h₀ n) a - f a) atTop (𝓝 (f a - f a)) :=
      (tendsto_approxOn hf h₀ ha).sub tendsto_const_nhds
    convert! continuous_rpow_const.continuousAt.tendsto.comp (tendsto_coe.mpr this.nnnorm)
    simp [zero_rpow_of_pos hp]
  -- Then we apply the Dominated Convergence Theorem
  simpa using tendsto_lintegral_of_dominated_convergence _ hF_meas h_bound h_fin h_lim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d4039326eb4d1a24548a24292c2beeb8da639d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
