# weightedVSub_mem_vectorSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4257cd1a-b0e8-864e-db5a-940707cf5ea1",
  "kind": "theorem",
  "lexical_name": "weightedVSub_mem_vectorSpan",
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
  "slug": "weightedvsub-mem-vectorspan--b33d10137e0b324e05bfb0f8",
  "source": {
    "blob": "9e798f2a5c14388cabd43258ee0338100eccf051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 914,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b33d10137e0b324e05bfb0f843ccfe87f6b0f2ecbe1e1604875309902155352e",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4257cd1a-b0e8-864e-db5a-940707cf5ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedVSub_mem_vectorSpan {s : Finset ι} {w : ι → k} (h : ∑ i ∈ s, w i = 0)
    (p : ι → P) : s.weightedVSub p w ∈ vectorSpan k (Set.range p) := by
  classical
    rcases isEmpty_or_nonempty ι with (hι | ⟨⟨i0⟩⟩)
    · simp [Finset.eq_empty_of_isEmpty s]
    · rw [vectorSpan_range_eq_span_range_vsub_right k p i0, ← Set.image_univ,
        Finsupp.mem_span_image_iff_linearCombination,
        Finset.weightedVSub_eq_weightedVSubOfPoint_of_sum_eq_zero s w p h (p i0),
        Finset.weightedVSubOfPoint_apply]
      let w' := Set.indicator (↑s) w
      have hwx : ∀ i, w' i ≠ 0 → i ∈ s := fun i => Set.mem_of_indicator_ne_zero
      use Finsupp.onFinset s w' hwx, Set.subset_univ _
      rw [Finsupp.linearCombination_apply, Finsupp.onFinset_sum hwx]
      · apply Finset.sum_congr rfl
        intro i hi
        simp [w', Set.indicator_apply, if_pos hi]
      · exact fun _ => zero_smul k _

/-- An `affineCombination` with sum of weights 1 is in the
`affineSpan` of an indexed family, if the underlying ring is
nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e798f2a5c14388cabd43258ee0338100eccf051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
