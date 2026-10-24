# huang_degree_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d177afc506c6c8876a9bec99dbb44972619eda1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 410,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:645cdf60-63e0-99c8-c106-030948a69a39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af58ca7f-506b-0fdd-5a0a-3d5ca0589d2e",
  "kind": "theorem",
  "lexical_name": "huang_degree_theorem",
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
  "slug": "huang-degree-theorem--89d73515b7cf8cb158674be3",
  "source": {
    "blob": "8d177afc506c6c8876a9bec99dbb44972619eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 410,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89d73515b7cf8cb158674be39ba27002769d38a70f307dff342243d9415c3006",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af58ca7f-506b-0fdd-5a0a-3d5ca0589d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem huang_degree_theorem (H : Set (Q m.succ)) (hH : Card H ≥ 2 ^ m + 1) :
    ∃ q, q ∈ H ∧ √(m + 1) ≤ Card H ∩ q.adjacent := by
  rcases exists_eigenvalue H hH with ⟨y, ⟨⟨y_mem_H, y_mem_g⟩, y_ne⟩⟩
  have coeffs_support : ((dualBases_e_ε m.succ).coeffs y).support ⊆ H.toFinset := by
    intro p p_in
    rw [Finsupp.mem_support_iff] at p_in
    rw [Set.mem_toFinset]
    exact (dualBases_e_ε _).mem_of_mem_span y_mem_H p p_in
  obtain ⟨q, H_max⟩ : ∃ q : Q m.succ, ∀ q' : Q m.succ, |(ε q' :) y| ≤ |ε q y| :=
    Finite.exists_max _
  have H_q_pos : 0 < |ε q y| := by
    contrapose! y_ne
    exact epsilon_total fun p => abs_nonpos_iff.mp (le_trans (H_max p) y_ne)
  refine ⟨q, (dualBases_e_ε _).mem_of_mem_span y_mem_H q (abs_pos.mp H_q_pos), ?_⟩
  let s := √(m + 1)
  suffices s * |ε q y| ≤ _ * |ε q y| from (mul_le_mul_iff_left₀ H_q_pos).mp ‹_›
  let coeffs := (dualBases_e_ε m.succ).coeffs
  calc
    s * |ε q y| = |ε q (s • y)| := by
      rw [map_smul, smul_eq_mul, abs_mul, abs_of_nonneg (Real.sqrt_nonneg _)]
    _ = |ε q (f m.succ y)| := by rw [← f_image_g y (by simpa using! y_mem_g)]
    _ = |ε q (f m.succ (lc _ (coeffs y)))| := by rw [(dualBases_e_ε _).lc_coeffs y]
    _ =
        |(coeffs y).sum fun (i : Q m.succ) (a : ℝ) =>
            a • (ε q ∘ f m.succ ∘ fun i : Q m.succ => e i) i| := by
      rw [lc_def, (f m.succ).map_finsupp_linearCombination, (ε q).map_finsupp_linearCombination,
           Finsupp.linearCombination_apply]
    _ ≤ ∑ p ∈ (coeffs y).support, |coeffs y p * (ε q <| f m.succ <| e p)| :=
      (norm_sum_le _ fun p => coeffs y p * _)
    _ = ∑ p ∈ (coeffs y).support, |coeffs y p| * ite (p ∈ q.adjacent) 1 0 := by
      simp only [abs_mul, f_matrix]
    _ = ∑ p ∈ (coeffs y).support with p ∈ q.adjacent, |coeffs y p| := by
      simp [sum_filter]
    _ ≤ ∑ p ∈ (coeffs y).support with p ∈ q.adjacent, |coeffs y q| := sum_le_sum fun p _ ↦ H_max p
    _ = #{p ∈ (coeffs y).support | p ∈ q.adjacent} * |coeffs y q| := by
      rw [sum_const, nsmul_eq_mul]
    _ = #((coeffs y).support ∩ q.adjacent.toFinset) * |coeffs y q| := by
      congr with x; simp
    _ ≤ #(H ∩ q.adjacent).toFinset * |ε q y| := by
      refine (mul_le_mul_iff_left₀ H_q_pos).2 ?_
      norm_cast
      apply card_le_card
      rw [Set.toFinset_inter]
      convert! inter_subset_inter_right coeffs_support

end

end Sensitivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant474e80fa663ba55b3ebb1ed6180a593ae9351fc40daf95274aff8ca82a559642.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d177afc506c6c8876a9bec99dbb44972619eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
