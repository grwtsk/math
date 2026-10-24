# mode_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2258b525-0cf4-b938-de7b-f732aa8f2650",
  "kind": "theorem",
  "lexical_name": "mode_product_integrable",
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
  "slug": "mode-product-integrable--b4ebe715be8c188d8284f684",
  "source": {
    "blob": "44fd227875533f400f80e6b30fdd4b968ffee655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ebe715be8c188d8284f684e1a996910424e3712570b6dc5dbde7ca03551e08",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2258b525-0cf4-b938-de7b-f732aa8f2650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_product_integrable (A t : ℝ) (i j : Fin 5) :
    Integrable (fun x => normalizedMode A i x * normalizedMode A j (x-t)) := by
  let s := Icc (-A) A ∩ (fun x : ℝ => x-t) ⁻¹' Icc (-A) A
  let f := fun x : ℝ =>
    (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A)) *
    (Real.sqrt (modeWeight j / (2*A)) * mode j ((x-t)/A))
  have hf : Continuous f := by
    unfold f
    exact (continuous_const.mul ((mode_continuous i).comp
      (continuous_id.div_const A))).mul
      (continuous_const.mul ((mode_continuous j).comp
        ((continuous_id.sub continuous_const).div_const A)))
  have hs : MeasurableSet s :=
    measurableSet_Icc.inter (measurableSet_Icc.preimage (by fun_prop))
  have heq : (fun x => normalizedMode A i x * normalizedMode A j (x-t)) =
      s.indicator f := by
    classical
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x-t ∈ Icc (-A) A
      · have hsx : x ∈ s := ⟨hx, hy⟩
        rw [if_pos hx, if_pos hy, if_pos hsx]
      · have hsx : x ∉ s := fun h => hy h.2
        rw [if_pos hx, if_neg hy, if_neg hsx, mul_zero]
    · have hsx : x ∉ s := fun h => hx h.1
      rw [if_neg hx, if_neg hsx, zero_mul]
  rw [heq]
  exact (hf.integrableOn_Icc.mono_set inter_subset_left).integrable_indicator hs

/-- The full Lebesgue cross-correlation, distinct from the positive-branch polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeTransport/Variantfcff052eb101ae2b63bdcb3576f45c53001a95b4729a2abca3c07ab36e1fd101.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fd227875533f400f80e6b30fdd4b968ffee655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
