# totallyBounded_iff_finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df0cd590-7595-f1ef-2a9f-30041bbc1814",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaa0738e-47c3-b85f-ad0f-4cb34fbcb7d4",
  "kind": "lemma",
  "lexical_name": "totallyBounded_iff_finite_residueField",
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
  "slug": "totallybounded-iff-finite-residuefield--1ccee8d800faa33746e3e7b3",
  "source": {
    "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ccee8d800faa33746e3e7b323afdeaf2f0b6b33bd9039bfee0f9b9a2486d611",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa0738e-47c3-b85f-ad0f-4cb34fbcb7d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totallyBounded_iff_finite_residueField [(Valued.v : Valuation K Γ₀).RankOne]
    [IsDiscreteValuationRing 𝒪[K]] :
    TotallyBounded (Set.univ (α := 𝒪[K])) ↔ Finite 𝓀[K] := by
  constructor
  · intro H
    obtain ⟨p, hp⟩ := IsDiscreteValuationRing.exists_irreducible 𝒪[K]
    have := Metric.finite_approx_of_totallyBounded H ‖p‖ (norm_pos_iff.mpr hp.ne_zero)
    simp only [Set.subset_univ, Set.univ_subset_iff, true_and] at this
    obtain ⟨t, ht, ht'⟩ := this
    rw [← Set.finite_univ_iff]
    refine (ht.image (IsLocalRing.residue _)).subset ?_
    rintro ⟨x⟩
    replace ht' := ht'.ge (Set.mem_univ x)
    simp only [Set.mem_iUnion, Metric.mem_ball, exists_prop] at ht'
    obtain ⟨y, hy, hy'⟩ := ht'
    simp only [Submodule.Quotient.quot_mk_eq_mk, Ideal.Quotient.mk_eq_mk, Set.mem_univ,
      IsLocalRing.residue, Set.mem_image, true_implies]
    refine ⟨y, hy, ?_⟩
    convert!
      (Ideal.Quotient.mk_eq_mk_iff_sub_mem (I := 𝓂[K]) y x).mpr
        _
          -- TODO: make Valued.maximalIdeal abbreviations instead of def

    -- TODO: make Valued.maximalIdeal abbreviations instead of def
    rw [Valued.maximalIdeal, hp.maximalIdeal_eq, ← SetLike.mem_coe,
      (Valuation.integer.integers _).coe_span_singleton_eq_setOfPred_le_v_algebraMap]
    rw [dist_comm] at hy'
    simpa [dist_eq_norm] using! hy'.le
  · intro H
    rw [Metric.totallyBounded_iff]
    intro ε εpos
    obtain ⟨p, hp⟩ := IsDiscreteValuationRing.exists_irreducible 𝒪[K]
    have hp' := Valuation.integer.v_irreducible_lt_one hp
    obtain ⟨n, hn⟩ : ∃ n : ℕ, ‖(p : K)‖ ^ n < ε := exists_pow_lt_of_lt_one εpos
      (toNormedField.norm_lt_one_iff.mpr hp')
    have hF : Finite (𝒪[K] ⧸ 𝓂[K] ^ n) := inferInstance
    refine ⟨Quotient.out '' (Set.univ (α := 𝒪[K] ⧸ (𝓂[K] ^ n))), Set.toFinite _, ?_⟩
    have : {y : 𝒪[K] | v (y : K) ≤ v (p : K) ^ n} = Metric.closedBall 0 (‖p‖ ^ n) := by
      ext
      simp [← norm_pow]
    simp only [Ideal.univ_eq_iUnion_image_add (𝓂[K] ^ n),
      hp.maximalIdeal_pow_eq_setOfPred_le_v_coe_pow,
      this, AddSubgroupClass.coe_norm, Set.image_univ, Set.mem_range, Set.iUnion_exists,
      Set.iUnion_iUnion_eq', Set.iUnion_subset_iff, Metric.vadd_closedBall, vadd_eq_add, add_zero]
    intro
    exact (Metric.closedBall_subset_ball hn).trans (Set.subset_iUnion_of_subset _ le_rfl)

end FiniteResidueField

section CompactDVR

open Valued

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10b0450b575b7fa75d3b4a0530403c61ed5040b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
