# IndepFun.integrable_left_of_integrable_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb1bad91-e79a-2e79-c419-3346a87faa37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd434cd7-b106-425e-46b8-472e07af3f37",
  "kind": "theorem",
  "lexical_name": "IndepFun.integrable_left_of_integrable_mul",
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
  "slug": "indepfun-integrable-left-of-integrable-mul--68749c419e04b8afd6d8b8d1",
  "source": {
    "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68749c419e04b8afd6d8b8d196eb30d88c868da439efb7d1a79c9cf4f25f725f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd434cd7-b106-425e-46b8-472e07af3f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integrable_left_of_integrable_mul {β : Type*} [MeasurableSpace β] {X Y : Ω → β}
    [NormedDivisionRing β] [BorelSpace β] (hXY : IndepFun X Y μ) (h'XY : Integrable (X * Y) μ)
    (hX : AEStronglyMeasurable X μ) (hY : AEStronglyMeasurable Y μ) (h'Y : ¬Y =ᵐ[μ] 0) :
    Integrable X μ := by
  refine' ⟨hX, _⟩
  have I : (∫⁻ ω, ‖Y ω‖₊ ∂μ) ≠ 0 := fun H ↦ by
    have I : (fun ω => ‖Y ω‖₊ : Ω → ℝ≥0∞) =ᵐ[μ] 0 := (lintegral_eq_zero_iff' hY.ennnorm).1 H
    apply h'Y
    filter_upwards [I] with ω hω
    simpa using hω
  refine lt_top_iff_ne_top.2 fun H => ?_
  have J : IndepFun (fun ω => ‖X ω‖₊ : Ω → ℝ≥0∞) (fun ω => ‖Y ω‖₊ : Ω → ℝ≥0∞) μ := by
    have M : Measurable fun x : β => (‖x‖₊ : ℝ≥0∞) := measurable_nnnorm.coe_nnreal_ennreal
    apply IndepFun.comp hXY M M
  have A : (∫⁻ ω, ‖X ω * Y ω‖₊ ∂μ) < ∞ := h'XY.2
  simp only [nnnorm_mul, ENNReal.coe_mul] at A
  rw [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'' hX.ennnorm hY.ennnorm J, H] at A
  simp only [ENNReal.top_mul I] at A
#align probability_theory.indep_fun.integrable_left_of_integrable_mul ProbabilityTheory.IndepFun.integrable_left_of_integrable_mul

/-- If the product of two independent real-valued random variables is integrable and the
first one is not almost everywhere zero, then the second one is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10faa875ee53e642e452c850a81f0f4e6945c4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
