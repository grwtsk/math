# ContinuousMap.inner_toLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b66e69f-2f00-6806-d6df-241020b0228c",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.inner_toLp",
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
  "slug": "continuousmap-inner-tolp--c3f5d51b32a027d230589e0a",
  "source": {
    "blob": "6c4254bdfe7144b78b550edc99bbe7d3cff7382d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 321,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3f5d51b32a027d230589e0a559fa0c2ac55423f8e5b7317e720ef6f97833d2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b66e69f-2f00-6806-d6df-241020b0228c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.inner_toLp (f g : C(α, 𝕜)) :
    ⟪ContinuousMap.toLp (E := 𝕜) 2 μ 𝕜 f, ContinuousMap.toLp (E := 𝕜) 2 μ 𝕜 g⟫ =
      ∫ x, conj (f x) * g x ∂μ := by
  apply integral_congr_ae
  -- Porting note: added explicitly passed arguments
  have hf_ae := f.coeFn_toLp (p := 2) (𝕜 := 𝕜) μ
  have hg_ae := g.coeFn_toLp (p := 2) (𝕜 := 𝕜) μ
  filter_upwards [hf_ae, hg_ae] with _ hf hg
  rw [hf, hg]
  simp
#align measure_theory.continuous_map.inner_to_Lp MeasureTheory.ContinuousMap.inner_toLp

end InnerContinuous

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c4254bdfe7144b78b550edc99bbe7d3cff7382d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
