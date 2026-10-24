# prod_eq_prod_one_sub_of_mem_line_point_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77bae960-b6f5-5d1e-484c-c1704e916407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b635eafe-8e46-e63a-87ae-8c7f7e7d7d7b",
  "kind": "lemma",
  "lexical_name": "prod_eq_prod_one_sub_of_mem_line_point_lineMap",
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
  "slug": "prod-eq-prod-one-sub-of-mem-line-point-linemap--93c6dbc85c0fdad4c9abaf7c",
  "source": {
    "blob": "c91fb216f35797286e7fc3ae0ad8d9b1106588aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93c6dbc85c0fdad4c9abaf7c77bc998852125a93e387ed1d1e1af5c9f2ceea49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b635eafe-8e46-e63a-87ae-8c7f7e7d7d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_eq_prod_one_sub_of_mem_line_point_lineMap {t : Triangle k P} {r : Fin 3 → k} {p' : P}
    (hp' : ∀ i : Fin 3, p' ∈
      line[k, t.points i, AffineMap.lineMap (t.points (i + 1)) (t.points (i + 2)) (r i)]) :
    ∏ i, r i = ∏ i, (1 - r i) := by
  rcases subsingleton_or_nontrivial k
  · exact Subsingleton.elim _ _
  let w : ↑(Set.univ : Set (Fin 3)) → Fin 3 → k :=
    fun i ↦ Finset.affineCombinationLineMapWeights (i + 1) (i + 2) (r i)
  have hw : ∀ i, ∑ j, w i j = 1 := by simp [w]
  have hp'w : ∀ i : ↑(Set.univ : Set (Fin 3)),
      p' ∈ line[k, t.points i, Finset.univ.affineCombination k t.points (w i)] := by
    simpa [w] using hp'
  obtain ⟨w', hw', rfl, h⟩ :=
    t.independent.exists_affineCombination_eq_smul_eq_of_fintype (by simp) hw hp'w
  have h' : ∀ i : Fin 3, ∃ c : k, ∀ j ≠ i, c * w ⟨i, by simp⟩ j = w' j := by
    intro i
    obtain ⟨c, hc⟩ := h ⟨i, by simp⟩
    refine ⟨c, fun j hj ↦ ?_⟩
    simpa [hj] using hc j
  simp only [Fin.isValue, w] at h'
  let c : Fin 3 → k := fun i ↦ (h' i).choose
  have hc (i : Fin 3) : ∀ j : Fin 3, j ≠ i →
    c i * Finset.affineCombinationLineMapWeights (i + 1) (i + 2) (r i) j = w' j :=
      (h' i).choose_spec
  have hc1 (i : Fin 3) : c i * (1 - r i) = w' (i + 1) := by
    rw [← hc i (i + 1) (by simp)]
    simp
  have hc2 (i : Fin 3) : c i * r i = w' (i + 2) := by
    rw [← hc i (i + 2) (by simp)]
    simp
  have hcr : (∏ i, c i) * ∏ i, r i = (∏ i, c i) * ∏ i, (1 - r i) := by
    simp_rw [← Finset.prod_mul_distrib, Finset.prod_congr rfl (fun _ _ ↦ hc1 _),
      Finset.prod_congr rfl (fun _ _ ↦ hc2 _)]
    suffices ∏ i, (w' ∘ Equiv.addRight 2) i = ∏ i, (w' ∘ Equiv.addRight 1) i by
      simpa using this
    simp_rw [Finset.prod_comp_equiv]
    simp
  by_cases hc : ∏ i, c i = 0
  · rw [Finset.prod_eq_zero_iff] at hc
    obtain ⟨i, -, hi⟩ := hc
    have hw'i1 : w' (i + 1) = 0 := by simpa [hi] using (hc1 i).symm
    have hw'i2 : w' (i + 2) = 0 := by simpa [hi] using (hc2 i).symm
    have hw'i0 : w' i = 1 := by
      rw [← hw', Fin.sum_univ_three]
      fin_cases i <;> grind
    have hi1 : c (i + 1) * r (i + 1) = 1 := by simpa [add_assoc, hw'i0] using hc2 (i + 1)
    have hi1' : c (i + 1) * (1 - r (i + 1)) = 0 := by
     simpa [add_assoc, hw'i2] using hc1 (i + 1)
    have hci1 : c (i + 1) = 1 := by
      suffices c (i + 1) * (r (i + 1) + (1 - r (i + 1))) = 1 + 0 by simpa using this
      rw [mul_add, hi1, hi1']
    have hri1 : r (i + 1) = 1 := by simpa [hci1] using hi1
    have hi2 : c (i + 2) * (1 - r (i + 2)) = 1 := by simpa [add_assoc, hw'i0] using hc1 (i + 2)
    have hi2' : c (i + 2) * r (i + 2) = 0 := by simpa [add_assoc, hw'i1] using hc2 (i + 2)
    have hci2 : c (i + 2) = 1 := by
      suffices c (i + 2) * (r (i + 2) + (1 - r (i + 2))) = 0 + 1 by simpa using this
      rw [mul_add, hi2, hi2']
    have hri2 : r (i + 2) = 0 := by simpa [hci2] using hi2'
    rw [Finset.prod_eq_zero (by simp) hri2,
      Finset.prod_eq_zero (i := i + 1) (by simp) (by simp [hri1])]
  · exact mul_left_cancel₀ hc hcr

end CommRing

section Field

variable [Field k] [AddCommGroup V] [Module k V] [AffineSpace V P]

/-- **Ceva's theorem** for a triangle, expressed using division. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ceva/Variantc6f04e0acca4bc9fc0ab726edfd0483975d652be3cbabd14f7a8225dcf59b24b.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91fb216f35797286e7fc3ae0ad8d9b1106588aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
