# exists_mem_finsetApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1679ab7-5ab3-4a48-3d5a-4da3edb6e6fa",
  "kind": "theorem",
  "lexical_name": "exists_mem_finsetApprox",
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
  "slug": "exists-mem-finsetapprox--29d3f1a16b3f88ff1affff93",
  "source": {
    "blob": "e0da9f25d262598f1d5195f996525f501496fc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 195,
    "path": "GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29d3f1a16b3f88ff1affff93384c948d59344c25b3eedc0154d1e628f1686706",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1679ab7-5ab3-4a48-3d5a-4da3edb6e6fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_finsetApprox (a : S) {b} (hb : b ≠ (0 : R)) :
    ∃ q : S,
      ∃ r ∈ finsetApprox bS adm, abv (Algebra.norm R (r • a - b • q)) <
      abv (Algebra.norm R (algebraMap R S b)) := by
  have dim_pos := Fintype.card_pos_iff.mpr bS.index_nonempty
  set ε : ℝ := normBound abv bS ^ (-1 / Fintype.card ι : ℝ) with ε_eq
  have hε : 0 < ε := Real.rpow_pos_of_pos (Int.cast_pos.mpr (normBound_pos abv bS)) _
  have ε_le : (normBound abv bS : ℝ) * (abv b • ε) ^ (Fintype.card ι : ℝ)
                ≤ abv b ^ (Fintype.card ι : ℝ) := by
    have := normBound_pos abv bS
    have := abv.nonneg b
    rw [ε_eq, Algebra.smul_def, eq_intCast, mul_rpow, ← rpow_mul, div_mul_cancel₀, rpow_neg_one,
      mul_left_comm, mul_inv_cancel₀, mul_one, rpow_natCast] <;>
      try norm_cast; omega
    · exact Iff.mpr Int.cast_nonneg this
    · linarith
  set μ : Fin (cardM bS adm).succ ↪ R := distinctElems bS adm
  let s : ι →₀ R := bS.repr a
  have s_eq : ∀ i, s i = bS.repr a i := fun i => rfl
  let qs : Fin (cardM bS adm).succ → ι → R := fun j i => μ j * s i / b
  let rs : Fin (cardM bS adm).succ → ι → R := fun j i => μ j * s i % b
  have r_eq : ∀ j i, rs j i = μ j * s i % b := fun i j => rfl
  have μ_eq : ∀ i j, μ j * s i = b * qs j i + rs j i := by
    intro i j
    rw [r_eq, EuclideanDomain.div_add_mod]
  have μ_mul_a_eq : ∀ j, μ j • a = b • ∑ i, qs j i • bS i + ∑ i, rs j i • bS i := by
    intro j
    rw [← bS.sum_repr a]
    simp only [μ, qs, rs, Finset.smul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← s_eq, ← mul_smul, μ_eq, add_smul, mul_smul, ← μ_eq]
  obtain ⟨j, k, j_ne_k, hjk⟩ := adm.exists_approx hε hb fun j i => μ j * s i
  have hjk' : ∀ i, (abv (rs k i - rs j i) : ℝ) < abv b • ε := by simpa only [r_eq] using hjk
  let q := ∑ i, (qs k i - qs j i) • bS i
  set r := μ k - μ j with r_eq
  refine ⟨q, r, (mem_finsetApprox bS adm).mpr ?_, ?_⟩
  · exact ⟨k, j, j_ne_k.symm, rfl⟩
  have : r • a - b • q = ∑ x : ι, (rs k x • bS x - rs j x • bS x) := by
    simp only [q, r_eq, sub_smul, μ_mul_a_eq, Finset.smul_sum, ← Finset.sum_add_distrib,
      ← Finset.sum_sub_distrib, smul_sub]
    refine Finset.sum_congr rfl fun x _ => ?_
    ring
  rw [this, Algebra.norm_algebraMap_of_basis bS, abv.map_pow]
  refine Int.cast_lt.mp ((norm_lt abv bS _ fun i => lt_of_le_of_lt ?_ (hjk' i)).trans_le ?_)
  · apply le_of_eq
    congr
    simp_rw [map_sum, map_sub, map_smul, Finset.sum_apply',
      Finsupp.sub_apply, Finsupp.smul_apply, Finset.sum_sub_distrib, Basis.repr_self_apply,
      smul_eq_mul, mul_boole, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  · exact mod_cast ε_le

/-- We can approximate `a / b : L` with `q / r`, where `r` has finitely many options for `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0da9f25d262598f1d5195f996525f501496fc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
