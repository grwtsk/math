# setToFun_add_left''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17501644-74aa-bfa9-ce53-92902bd7d18b",
  "kind": "theorem",
  "lexical_name": "setToFun_add_left''",
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
  "slug": "settofun-add-left--7bc682a42d630505a5b11b5a",
  "source": {
    "blob": "2f8a6014c613c47fa42f2de2ee8722e4f4da63d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc682a42d630505a5b11b5a550e5c9dec74ff4757d9106163626cf3809c897f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17501644-74aa-bfa9-ce53-92902bd7d18b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_add_left'' {hT : DominatedFinMeasAdditive μ T C}
    {hT' : DominatedFinMeasAdditive μ' T' C'} {hT'' : DominatedFinMeasAdditive μ'' T'' C''}
    (h : ∀ s, MeasurableSet s → (μ + μ') s < ∞ → T'' s = T s + T' s)
    (hf : Integrable f μ) (hf' : Integrable f μ') (hμ : μ'' ≤ μ + μ')
    (hC : 0 ≤ C) (hC' : 0 ≤ C') (hC'' : 0 ≤ C'') :
    setToFun μ'' T'' hT'' f = setToFun μ T hT f + setToFun μ' T' hT' f := by
  have I : DominatedFinMeasAdditive (μ + μ') T C := .add_measure_right _ _ hT hC
  have A : setToFun (μ + μ') T I f = setToFun μ T hT f :=
    setToFun_congr_measure_of_add_right _ _ _ (hf.add_measure hf')
  have I' : DominatedFinMeasAdditive (μ + μ') T' C' := .add_measure_left _ _ hT' hC'
  have A' : setToFun (μ + μ') T' I' f = setToFun μ' T' hT' f :=
    setToFun_congr_measure_of_add_left _ _ _ (hf.add_measure hf')
  have I'' : DominatedFinMeasAdditive (μ + μ') T'' C'' := .of_measure_le hμ hT'' hC''
  have A'' : setToFun (μ + μ') T'' I'' f = setToFun μ'' T'' hT'' f := by
    apply setToFun_congr_measure_of_integrable (c' := 1) (by simp) (by simpa using hμ)
    apply hf.add_measure hf'
  rw [← A, ← A', ← A'']
  apply setToFun_add_left' _ _ _ h


end Function

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f8a6014c613c47fa42f2de2ee8722e4f4da63d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
