# _root_.GRWTSK.Analysis.FunctionalAnalysis.HasTemperateGrowth.Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.ContinuousLinearMap.bilinear_hasTemperateGrowth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bad390c-955b-4f6e-6ee8-7c13363f3f60",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.HasTemperateGrowth.Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.ContinuousLinearMap.bilinear_hasTemperateGrowth",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-hastemperategrowth-variantbfd4cf--e3a4f1a0b5196899cacead80",
  "source": {
    "blob": "5cb955c3f434875ffc3417088861e8076356182d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 245,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3a4f1a0b5196899cacead80b371d277282378ae83deb9370c6cc48fb29dc2e2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bad390c-955b-4f6e-6ee8-7c13363f3f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.HasTemperateGrowth.Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.ContinuousLinearMap.bilinear_hasTemperateGrowth [NormedSpace 𝕜 E]
    (B : E →L[𝕜] F →L[𝕜] G) {f : D → E} {g : D → F} (hf : f.HasTemperateGrowth)
    (hg : g.HasTemperateGrowth) : (fun x ↦ B (f x) (g x)).HasTemperateGrowth := by
  rw [Function.hasTemperateGrowth_iff_isBigO]
  constructor
  · apply (B.bilinearRestrictScalars ℝ).isBoundedBilinearMap.contDiff.comp (hf.1.prodMk hg.1)
  intro n
  rcases hf.isBigO_uniform n with ⟨k1, h1⟩
  rcases hg.isBigO_uniform n with ⟨k2, h2⟩
  use k1 + k2
  have estimate (x : D) : ‖iteratedFDeriv ℝ n (fun x ↦ B (f x) (g x)) x‖ ≤
      ‖B‖ * ∑ i ∈ Finset.range (n + 1), (n.choose i) *
        ‖iteratedFDeriv ℝ i f x‖ * ‖iteratedFDeriv ℝ (n - i) g x‖ :=
    (B.bilinearRestrictScalars ℝ).norm_iteratedFDeriv_le_of_bilinear hf.1 hg.1 x (mod_cast le_top)
  refine (IsBigO.of_norm_le estimate).trans (.const_mul_left (.fun_sum fun i hi ↦ ?_) _)
  simp_rw [mul_assoc, pow_add]
  refine .const_mul_left (.mul (h1 i ?_).norm_left (h2 (n - i) ?_).norm_left) _ <;>
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb955c3f434875ffc3417088861e8076356182d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
