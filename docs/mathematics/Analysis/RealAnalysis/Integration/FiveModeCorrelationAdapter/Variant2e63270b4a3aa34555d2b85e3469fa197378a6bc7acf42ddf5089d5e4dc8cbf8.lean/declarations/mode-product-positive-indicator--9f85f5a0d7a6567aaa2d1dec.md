# mode_product_positive_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b6af7b5-51ec-62a7-a0a2-aad1a484703c",
  "kind": "theorem",
  "lexical_name": "mode_product_positive_indicator",
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
  "slug": "mode-product-positive-indicator--9f85f5a0d7a6567aaa2d1dec",
  "source": {
    "blob": "0d9a071e72df9dc3982087218e596d7c9c6d74da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f85f5a0d7a6567aaa2d1dec0718ec632eb74715dd063fb39fdf2efcf30aa433",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b6af7b5-51ec-62a7-a0a2-aad1a484703c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_product_positive_indicator (A h : ℝ) (i j : Fin 5)
    (hA : 0 < A) (hh : 0 ≤ h) :
    (fun x => normalizedMode A i x * normalizedMode A j (x-A*h)) =
      (Icc (A*(h-1)) A).indicator (fun x =>
        (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) *
          (mode i (x/A) * mode j ((x-A*h)/A))) := by
  classical
  let s := Icc (-A) A ∩ (fun x : ℝ => x-A*h) ⁻¹' Icc (-A) A
  have heq : (fun x => normalizedMode A i x * normalizedMode A j (x-A*h)) =
      s.indicator (fun x =>
        (Real.sqrt (modeWeight i / (2*A)) * Real.sqrt (modeWeight j / (2*A))) *
          (mode i (x/A) * mode j ((x-A*h)/A))) := by
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x-A*h ∈ Icc (-A) A
      · have hsx : x ∈ s := ⟨hx, hy⟩
        rw [if_pos hx, if_pos hy, if_pos hsx]
        ring
      · have hsx : x ∉ s := fun hx => hy hx.2
        rw [if_pos hx, if_neg hy, if_neg hsx, mul_zero]
    · have hsx : x ∉ s := fun hs => hx hs.1
      rw [if_neg hx, if_neg hsx, zero_mul]
  rw [heq]
  exact congrArg (fun s : Set ℝ => s.indicator _) (mode_support_overlap A h hA hh)

/-- Exact angular-free spatial dilation of the raw branch integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9a071e72df9dc3982087218e596d7c9c6d74da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
