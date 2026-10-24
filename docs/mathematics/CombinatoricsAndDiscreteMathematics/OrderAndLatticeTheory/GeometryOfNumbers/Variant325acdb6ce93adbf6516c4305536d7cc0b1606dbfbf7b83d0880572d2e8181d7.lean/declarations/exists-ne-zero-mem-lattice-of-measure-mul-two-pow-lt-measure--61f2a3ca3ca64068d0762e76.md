# exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd810a3dd06ead71f00e87362fefd2c6b7937b1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/325acdb6ce93adbf6516c4305536d7cc0b1606dbfbf7b83d0880572d2e8181d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358ec15f-9241-cc6d-3ecf-1deb60b55a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d04049b5-fc7e-4aae-7333-9fbd64612688",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure",
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
  "slug": "exists-ne-zero-mem-lattice-of-measure-mul-two-pow-lt-measure--61f2a3ca3ca64068d0762e76",
  "source": {
    "blob": "dd810a3dd06ead71f00e87362fefd2c6b7937b1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant325acdb6ce93adbf6516c4305536d7cc0b1606dbfbf7b83d0880572d2e8181d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f2a3ca3ca64068d0762e7604fad2a9f3aee66dd10871626a3aaeb4bf868175",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant325acdb6ce93adbf6516c4305536d7cc0b1606dbfbf7b83d0880572d2e8181d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04049b5-fc7e-4aae-7333-9fbd64612688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure [NormedAddCommGroup E]
    [NormedSpace ℝ E] [BorelSpace E] [FiniteDimensional ℝ E] [IsAddHaarMeasure μ]
    {L : AddSubgroup E} [Countable L] (fund : IsAddFundamentalDomain L F μ)
    (h_symm : ∀ x ∈ s, -x ∈ s) (h_conv : Convex ℝ s) (h : μ F * 2 ^ finrank ℝ E < μ s) :
    ∃ x ≠ 0, ((x : L) : E) ∈ s := by
  have h_vol : μ F < μ ((2⁻¹ : ℝ) • s) := by
    rw [addHaar_smul_of_nonneg μ (by simp : 0 ≤ (2 : ℝ)⁻¹) s,
      ← ENNReal.mul_lt_mul_iff_left (pow_ne_zero (finrank ℝ E) (two_ne_zero' _)) (by finiteness),
      mul_right_comm, ofReal_pow (by simp : 0 ≤ (2 : ℝ)⁻¹), ofReal_inv_of_pos zero_lt_two]
    simpa [← mul_pow, ENNReal.inv_mul_cancel two_ne_zero ofNat_ne_top]
  obtain ⟨x, y, hxy, h⟩ :=
    exists_pair_mem_lattice_not_disjoint_vadd fund ((h_conv.smul _).nullMeasurableSet _) h_vol
  obtain ⟨_, ⟨v, hv, rfl⟩, w, hw, hvw⟩ := Set.not_disjoint_iff.mp h
  refine ⟨x - y, sub_ne_zero.2 hxy, ?_⟩
  rw [Set.mem_inv_smul_set_iff₀ (two_ne_zero' ℝ)] at hv hw
  simp_rw [AddSubgroup.vadd_def, vadd_eq_add, add_comm _ w, ← sub_eq_sub_iff_add_eq_add, ←
    AddSubgroup.coe_sub] at hvw
  rw [← hvw, ← inv_smul_smul₀ (two_ne_zero' ℝ) (_ - _), smul_sub, sub_eq_add_neg, smul_add]
  refine h_conv hw (h_symm _ hv) ?_ ?_ ?_ <;> norm_num

/-- The **Minkowski Convex Body Theorem for compact domain**. If `s` is a convex compact symmetric
domain of `E` whose volume is large enough compared to the covolume of a lattice `L` of `E`, then it
contains a non-zero lattice point of `L`. Compared to
`exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure`, this version requires in addition
that `s` is compact and `L` is discrete but provides a weaker inequality rather than a strict
inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant325acdb6ce93adbf6516c4305536d7cc0b1606dbfbf7b83d0880572d2e8181d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GeometryOfNumbers/Variant325acdb6ce93adbf6516c4305536d7cc0b1606dbfbf7b83d0880572d2e8181d7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd810a3dd06ead71f00e87362fefd2c6b7937b1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
