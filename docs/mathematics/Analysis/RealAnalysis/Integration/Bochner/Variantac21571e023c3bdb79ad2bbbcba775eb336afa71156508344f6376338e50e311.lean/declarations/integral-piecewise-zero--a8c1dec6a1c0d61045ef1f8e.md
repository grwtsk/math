# integral_piecewise_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e03c63fb3ab38f01e8a2e8f6fa0399dce565750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22ab0e06-6222-0155-8e6b-13eaa16dcd4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f7fec94-6abe-6b5e-c394-d5e83f031129",
  "kind": "theorem",
  "lexical_name": "integral_piecewise_zero",
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
  "slug": "integral-piecewise-zero--a8c1dec6a1c0d61045ef1f8e",
  "source": {
    "blob": "3e03c63fb3ab38f01e8a2e8f6fa0399dce565750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c1dec6a1c0d61045ef1f8eca15febd1646c7794d79239ce9fcaa5a1dca7b73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f7fec94-6abe-6b5e-c394-d5e83f031129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_piecewise_zero {m : MeasurableSpace α} (f : α →ₛ F) (μ : Measure α) {s : Set α}
    (hs : MeasurableSet s) : (piecewise s hs f 0).integral μ = f.integral (μ.restrict s) := by
  classical
  refine' (integral_eq_sum_of_subset _).trans
      ((sum_congr rfl fun y hy => _).trans (integral_eq_sum_filter _ _).symm)
  · intro y hy
    simp only [mem_filter, mem_range, coe_piecewise, coe_zero, piecewise_eq_indicator,
      mem_range_indicator] at *
    rcases hy with ⟨⟨rfl, -⟩ | ⟨x, -, rfl⟩, h₀⟩
    exacts [(h₀ rfl).elim, ⟨Set.mem_range_self _, h₀⟩]
  · dsimp
    rw [Set.piecewise_eq_indicator, indicator_preimage_of_not_mem,
      Measure.restrict_apply (f.measurableSet_preimage _)]
    exact fun h₀ => (mem_filter.1 hy).2 (Eq.symm h₀)
#align measure_theory.simple_func.integral_piecewise_zero MeasureTheory.SimpleFunc.integral_piecewise_zero

/-- Calculate the integral of `g ∘ f : α →ₛ F`, where `f` is an integrable function from `α` to `E`
    and `g` is a function from `E` to `F`. We require `g 0 = 0` so that `g ∘ f` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e03c63fb3ab38f01e8a2e8f6fa0399dce565750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
