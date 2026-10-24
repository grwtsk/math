# mem_iff_fract_eq_and_floor_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76e2d644-e5cf-d1cc-ad30-8c7ce0eed06d",
  "kind": "theorem",
  "lexical_name": "mem_iff_fract_eq_and_floor_nonneg",
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
  "slug": "mem-iff-fract-eq-and-floor-nonneg--4f8d9352d122735a002ec862",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 586,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8d9352d122735a002ec862b196902c6fd91a302da596a0a419a9418cc0ebca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76e2d644-e5cf-d1cc-ad30-8c7ce0eed06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_iff_fract_eq_and_floor_nonneg (x) :
    x ∈ s ↔
      hs.fract x = hs.base ∧ ∀ i, 0 ≤ hs.floor x i ∧ (i.1 ∉ hs.periods → hs.floor x i = 0) := by
  classical
  nth_rw 1 [hs.eq_base_vadd_closure_periods]
  simp only [mem_vadd_set, SetLike.mem_coe, vadd_eq_add]
  constructor
  · rintro ⟨y, hy, rfl⟩
    refine ⟨?_, fun i => ⟨?_, fun hi => ?_⟩⟩
    · rw [hs.fract_add_of_mem_closure, hs.fract_base]
      exact closure_mono hs.periods_subset_basisSet hy
    · rw [← hs.floor_base i]
      exact hs.floor_le_floor_add_of_mem_closure (closure_mono hs.periods_subset_basisSet hy)
    · rw [hs.floor_add_of_mem_closure hs.periods_subset_basisSet hi hy, hs.floor_base]
  · intro ⟨hx₁, hx₂⟩
    refine ⟨∑ i : hs.basisSet with i.1 ∈ hs.periods, (hs.floor x i).toNat • i.1,
      sum_mem fun i hi => nsmul_mem (mem_closure_of_mem (Finset.mem_filter.1 hi).2) _, ?_⟩
    rw [Finset.sum_filter, ← hx₁]
    conv_rhs =>
      rw [← add_zero x, ← Finset.sum_const_zero (ι := hs.basisSet) (s := Finset.univ)]
    convert! (hs.add_floor_neg_toNat_sum_eq x).symm using 3 with i _ i
    · split_ifs with hi
      · simp
      · simp [(hx₂ i).2 hi]
    · simp [fun i => Int.toNat_eq_zero.2 (neg_nonpos.2 (hx₂ i).1)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
