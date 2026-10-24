# IndepFun.integrable_right_of_integrable_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa2b58e0-80a0-eee7-3abb-b0d55e994852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e49656e7-b7a8-799d-45a9-bdc645557d3f",
  "kind": "theorem",
  "lexical_name": "IndepFun.integrable_right_of_integrable_mul",
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
  "slug": "indepfun-integrable-right-of-integrable-mul--f9ce9c9a94d6334e016becb9",
  "source": {
    "blob": "086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ce9c9a94d6334e016becb9d27e3034dad0e8d8d72d607703cf5705f95aa2b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49656e7-b7a8-799d-45a9-bdc645557d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integrable_right_of_integrable_mul {β : Type*} [MeasurableSpace β] {X Y : Ω → β}
    [NormedDivisionRing β] [OpensMeasurableSpace β]
    (hXY : IndepFun X Y μ) (h'XY : Integrable (X * Y) μ)
    (hX : AEStronglyMeasurable X μ) (hY : AEStronglyMeasurable Y μ) (h'X : ¬X =ᵐ[μ] 0) :
    Integrable Y μ := by
  refine ⟨hY, ?_⟩
  have I : ∫⁻ ω, ‖X ω‖ₑ ∂μ ≠ 0 := fun H ↦ by
    have I : ((‖X ·‖ₑ) : Ω → ℝ≥0∞) =ᵐ[μ] 0 := (lintegral_eq_zero_iff' hX.enorm).1 H
    apply h'X
    filter_upwards [I] with ω hω
    simpa using hω
  refine lt_top_iff_ne_top.2 fun H => ?_
  have J : IndepFun (fun ω => ‖X ω‖ₑ : Ω → ℝ≥0∞) (fun ω => ‖Y ω‖ₑ : Ω → ℝ≥0∞) μ :=
    IndepFun.comp hXY measurable_enorm measurable_enorm
  have A : ∫⁻ ω, ‖X ω * Y ω‖ₑ ∂μ < ∞ := h'XY.2
  simp only [enorm_mul, ENNReal.coe_mul] at A
  rw [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'' hX.enorm hY.enorm J, H] at A
  simp only [ENNReal.mul_top I, lt_self_iff_false] at A

/-- The (Bochner) integral of the product of two independent, nonnegative random
  variables is the product of their integrals. The proof is just plumbing around
  `lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf7d71f6e9f9594a3f0e1f13e31d0467eeff569239dda22d60264ca60e54d5e57.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086aa988b14ec0f3ccc6a1ecb63843e8b14b2db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
