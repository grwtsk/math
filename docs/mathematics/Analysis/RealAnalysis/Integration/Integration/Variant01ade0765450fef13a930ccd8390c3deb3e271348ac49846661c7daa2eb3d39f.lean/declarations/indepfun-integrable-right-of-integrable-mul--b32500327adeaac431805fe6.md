# IndepFun.integrable_right_of_integrable_mul

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
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2986c52f-dcf8-98a1-242c-d7b5ee7e6a87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f6a0607-6239-6bb3-7d32-71ba0fc450d2",
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
  "slug": "indepfun-integrable-right-of-integrable-mul--b32500327adeaac431805fe6",
  "source": {
    "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32500327adeaac431805fe6677d2cb63285de9c34333356db016a0f2784b2ea",
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

Occurrence: `result:0f6a0607-6239-6bb3-7d32-71ba0fc450d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integrable_right_of_integrable_mul {β : Type*} [MeasurableSpace β] {X Y : Ω → β}
    [NormedDivisionRing β] [BorelSpace β] (hXY : IndepFun X Y μ) (h'XY : Integrable (X * Y) μ)
    (hX : AEStronglyMeasurable X μ) (hY : AEStronglyMeasurable Y μ) (h'X : ¬X =ᵐ[μ] 0) :
    Integrable Y μ := by
  refine' ⟨hY, _⟩
  have I : (∫⁻ ω, ‖X ω‖₊ ∂μ) ≠ 0 := fun H ↦ by
    have I : (fun ω => ‖X ω‖₊ : Ω → ℝ≥0∞) =ᵐ[μ] 0 := (lintegral_eq_zero_iff' hX.ennnorm).1 H
    apply h'X
    filter_upwards [I] with ω hω
    simpa using hω
  refine lt_top_iff_ne_top.2 fun H => ?_
  have J : IndepFun (fun ω => ‖X ω‖₊ : Ω → ℝ≥0∞) (fun ω => ‖Y ω‖₊ : Ω → ℝ≥0∞) μ := by
    have M : Measurable fun x : β => (‖x‖₊ : ℝ≥0∞) := measurable_nnnorm.coe_nnreal_ennreal
    apply IndepFun.comp hXY M M
  have A : (∫⁻ ω, ‖X ω * Y ω‖₊ ∂μ) < ∞ := h'XY.2
  simp only [nnnorm_mul, ENNReal.coe_mul] at A
  rw [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'' hX.ennnorm hY.ennnorm J, H] at A
  simp only [ENNReal.mul_top I] at A
#align probability_theory.indep_fun.integrable_right_of_integrable_mul ProbabilityTheory.IndepFun.integrable_right_of_integrable_mul

/-- The (Bochner) integral of the product of two independent, nonnegative random
  variables is the product of their integrals. The proof is just plumbing around
  `lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10faa875ee53e642e452c850a81f0f4e6945c4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
