# mem_vectorSpan_iff_eq_weightedVSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9c8c2f-cc07-eeed-6bd2-0bc6b30dd98c",
  "kind": "theorem",
  "lexical_name": "mem_vectorSpan_iff_eq_weightedVSub",
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
  "slug": "mem-vectorspan-iff-eq-weightedvsub--248babe24a9dcc4077d83d1e",
  "source": {
    "blob": "9e798f2a5c14388cabd43258ee0338100eccf051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 959,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:248babe24a9dcc4077d83d1e6756aa7cc584274d2ebd5c39082afe527dc3f31c",
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

Occurrence: `result:cb9c8c2f-cc07-eeed-6bd2-0bc6b30dd98c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_vectorSpan_iff_eq_weightedVSub {v : V} {p : ι → P} :
    v ∈ vectorSpan k (Set.range p) ↔
      ∃ (s : Finset ι) (w : ι → k), ∑ i ∈ s, w i = 0 ∧ v = s.weightedVSub p w := by
  classical
    constructor
    · rcases isEmpty_or_nonempty ι with (hι | ⟨⟨i0⟩⟩)
      swap
      · rw [vectorSpan_range_eq_span_range_vsub_right k p i0, ← Set.image_univ,
          Finsupp.mem_span_image_iff_linearCombination]
        rintro ⟨l, _, hv⟩
        use insert i0 l.support
        set w :=
          (l : ι → k) - Function.update (Function.const ι 0 : ι → k) i0 (∑ i ∈ l.support, l i) with
          hwdef
        use w
        have hw : ∑ i ∈ insert i0 l.support, w i = 0 := by
          rw [hwdef]
          simp_rw [Pi.sub_apply, Finset.sum_sub_distrib,
            Finset.sum_update_of_mem (Finset.mem_insert_self _ _),
            Finset.sum_insert_of_eq_zero_if_notMem Finsupp.notMem_support_iff.1]
          simp only [Finsupp.mem_support_iff, ne_eq, Finset.mem_insert, true_or, not_true,
            Function.const_apply, Finset.sum_const_zero, add_zero, sub_self]
        use hw
        have hz : w i0 • (p i0 -ᵥ p i0 : V) = 0 := (vsub_self (p i0)).symm ▸ smul_zero _
        change (fun i => w i • (p i -ᵥ p i0 : V)) i0 = 0 at hz
        rw [Finset.weightedVSub_eq_weightedVSubOfPoint_of_sum_eq_zero _ w p hw (p i0),
          Finset.weightedVSubOfPoint_apply, ← hv, Finsupp.linearCombination_apply,
          @Finset.sum_insert_zero _ _ l.support i0 _ _ _ hz]
        change (∑ i ∈ l.support, l i • _) = _
        congr with i
        by_cases h : i = i0
        · simp [h]
        · simp [hwdef, h]
      · rw [Set.range_eq_empty, vectorSpan_empty, Submodule.mem_bot]
        rintro rfl
        use ∅
        simp
    · rintro ⟨s, w, hw, rfl⟩
      exact weightedVSub_mem_vectorSpan hw p

/-- A point in the `affineSpan` of an indexed family is an
`affineCombination` with sum of weights 1. See also
`eq_affineCombination_of_mem_affineSpan_of_fintype`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant7db45192454a0e821487714528ea347590c9c72bdd69cccf66ca5c512b315538.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e798f2a5c14388cabd43258ee0338100eccf051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
