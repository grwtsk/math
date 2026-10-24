# _root_.GRWTSK.Analysis.RealAnalysis.Integration.RangeCircleMap.Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.TendstoUniformlyOn.tendsto_circleIntegral_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cdff75f-2c16-2494-45dc-bb477e99907c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.RangeCircleMap.Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.TendstoUniformlyOn.tendsto_circleIntegral_of_continuousOn",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-rangecirclemap-variant5cc1--8953f4ac49792ad67b3cbd2c",
  "source": {
    "blob": "9bf325246cf83f7d0712dfc65aa77cb722bd98ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 447,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8953f4ac49792ad67b3cbd2c83f517ad70420c59faf1b320723c558017c590cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cdff75f-2c16-2494-45dc-bb477e99907c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.RangeCircleMap.Variant5cc119be08835972728856dbf40aef4a614c5eabd775ec2d66bbe758816557ce.TendstoUniformlyOn.tendsto_circleIntegral_of_continuousOn
    {ι : Type*} {f : ι → ℂ → E} {g : ℂ → E} {c : ℂ} {R : ℝ}
    {l : Filter ι} [l.IsCountablyGenerated] (hR : 0 ≤ R)
    (hf : ∀ᶠ i in l, ContinuousOn (f i) (sphere c R)) (h : TendstoUniformlyOn f g l (sphere c R)) :
    Tendsto (fun n ↦ ∮ z in C(c, R), f n z) l (𝓝 (∮ z in C(c, R), g z)) := by
  apply TendstoUniformlyOn.tendsto_intervalIntegral_of_continuousOn
  · refine hf.mono fun i hi ↦ .smul ?_ (hi.comp ?_ ?_)
    · rw [funext (deriv_circleMap _ _)]
      fun_prop
    · fun_prop
    · simp [hR, MapsTo]
  · rw [Metric.tendstoUniformlyOn_iff] at h ⊢
    simp only [dist_smul₀, deriv_circleMap, norm_mul, norm_I, norm_circleMap_zero,
      abs_of_nonneg hR, mul_one]
    intro ε hε
    rcases exists_pos_mul_lt hε R with ⟨δ, hδ₀, hRδ⟩
    refine (h δ hδ₀).mono fun i hi x hx ↦ ?_
    grw [← hRδ, hi (circleMap c R x) (by simp [hR])]

namespace circleIntegral

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variantcb2715df8481a552c667088a2906445a7dfba96a4613c1a6cee25eb90a22475a.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf325246cf83f7d0712dfc65aa77cb722bd98ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
