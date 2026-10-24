# _root_.GRWTSK.Analysis.FunctionalAnalysis.TemperedDistribution.Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.MeasureTheory.Lp.toTemperedDistribution_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d1f26ec-3481-5511-be33-a31cb21004b9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.TemperedDistribution.Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.MeasureTheory.Lp.toTemperedDistribution_smul_eq",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-tempereddistribution-variantecec--d8554785249183420d3d37ce",
  "source": {
    "blob": "445d670615988e2472ab667e50f4dc3bbc1dc51f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 316,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8554785249183420d3d37cee4dce8bfa6557dcc09685fde1875a53a4d2e408b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1f26ec-3481-5511-be33-a31cb21004b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.TemperedDistribution.Variantecec97390a5f9743be566537c4e09f6d9e337a341dd771f9b799835405786a98.MeasureTheory.Lp.toTemperedDistribution_smul_eq {p q r : ℝ≥0∞} [p.HolderTriple q r]
    [Fact (1 ≤ q)] [Fact (1 ≤ r)] {g : E → ℂ} (hg₁ : g.HasTemperateGrowth) (hg₂ : MemLp g p μ)
    (f : Lp F q μ) :
    ((hg₂.toLp _) • f : Lp F r μ) = smulLeftCLM F g f := by
  ext u
  simp only [Lp.toTemperedDistribution_apply, smulLeftCLM_apply_apply]
  apply integral_congr_ae
  filter_upwards [Lp.coeFn_lpSMul (r := r) (hg₂.toLp _) f, hg₂.coeFn_toLp] with x hg hg'
  simp [hg, hg', hg₁, smul_smul, mul_comm]

end Multiplication

/-! ### Derivatives -/

section deriv

section TVS

variable [AddCommGroup F] [Module ℂ F] [TopologicalSpace F] [IsTopologicalAddGroup F]
  [ContinuousConstSMul ℂ F]

variable (F) in
/-- The 1-dimensional derivative on tempered distribution as a continuous `ℂ`-linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445d670615988e2472ab667e50f4dc3bbc1dc51f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
