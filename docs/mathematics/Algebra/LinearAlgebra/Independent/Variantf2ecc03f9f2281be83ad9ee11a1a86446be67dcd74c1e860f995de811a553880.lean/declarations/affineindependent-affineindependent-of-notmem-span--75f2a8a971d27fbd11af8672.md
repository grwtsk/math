# AffineIndependent.affineIndependent_of_notMem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eddda99-b700-ef9d-1e5e-0e4ae0a973a6",
  "kind": "theorem",
  "lexical_name": "AffineIndependent.affineIndependent_of_notMem_span",
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
  "slug": "affineindependent-affineindependent-of-notmem-span--75f2a8a971d27fbd11af8672",
  "source": {
    "blob": "12f84f9534fc3cd7c0373d25a1afd855e06167cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 644,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f2a8a971d27fbd11af86724c3630f663bc8bdeb8030606a71ca69961b2733f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eddda99-b700-ef9d-1e5e-0e4ae0a973a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineIndependent.affineIndependent_of_notMem_span {p : ι → P} {i : ι}
    (ha : AffineIndependent k fun x : { y // y ≠ i } => p x)
    (hi : p i ∉ affineSpan k (p '' { x | x ≠ i })) : AffineIndependent k p := by
  classical
    intro s w hw hs
    let s' : Finset { y // y ≠ i } := s.subtype (· ≠ i)
    let p' : { y // y ≠ i } → P := fun x => p x
    by_cases his : i ∈ s ∧ w i ≠ 0
    · refine False.elim (hi ?_)
      let wm : ι → k := -(w i)⁻¹ • w
      have hms : s.weightedVSub p wm = (0 : V) := by simp [wm, hs]
      have hwm : ∑ i ∈ s, wm i = 0 := by simp [wm, ← Finset.mul_sum, hw]
      have hwmi : wm i = -1 := by simp [wm, his.2]
      let w' : { y // y ≠ i } → k := fun x => wm x
      have hw' : ∑ x ∈ s', w' x = 1 := by
        simp_rw [w', s', Finset.sum_subtype_eq_sum_filter]
        rw [← s.sum_filter_add_sum_filter_not (· ≠ i)] at hwm
        simpa only [not_not, Finset.filter_eq' _ i, if_pos his.1, sum_singleton, hwmi,
          add_neg_eq_zero] using hwm
      rw [← s.affineCombination_eq_of_weightedVSub_eq_zero_of_eq_neg_one hms his.1 hwmi, ←
        (Subtype.range_coe : _ = { x | x ≠ i }), ← Set.range_comp, ←
        s.affineCombination_subtype_eq_filter]
      exact affineCombination_mem_affineSpan hw' p'
    · rw [not_and_or, Classical.not_not] at his
      let w' : { y // y ≠ i } → k := fun x => w x
      have hw' : ∑ x ∈ s', w' x = 0 := by
        simp_rw [w', s', Finset.sum_subtype_eq_sum_filter]
        rw [Finset.sum_filter_of_ne, hw]
        rintro x hxs hwx rfl
        exact hwx (his.neg_resolve_left hxs)
      have hs' : s'.weightedVSub p' w' = (0 : V) := by
        simp_rw [w', s', p', Finset.weightedVSub_subtype_eq_filter]
        rw [Finset.weightedVSub_filter_of_ne, hs]
        rintro x hxs hwx rfl
        exact hwx (his.neg_resolve_left hxs)
      intro j hj
      by_cases hji : j = i
      · rw [hji] at hj
        exact hji.symm ▸ his.neg_resolve_left hj
      · exact ha s' w' hw' hs' ⟨j, hji⟩ (Finset.mem_subtype.2 hj)

@[deprecated (since := "2025-05-23")]
alias AffineIndependent.affineIndependent_of_not_mem_span :=
  AffineIndependent.affineIndependent_of_notMem_span

/-- If distinct points `p₁` and `p₂` lie in `s` but `p₃` does not, the three points are affinely
independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variantf2ecc03f9f2281be83ad9ee11a1a86446be67dcd74c1e860f995de811a553880.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f84f9534fc3cd7c0373d25a1afd855e06167cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
