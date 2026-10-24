# coeffList_eraseLead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ae92a560262bb6d9d367dc1a9fa3c1667635f28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dca0e25-3f84-44a9-3781-ff2cd12e3b5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ef553b-5dcf-ea98-59c7-32871678b35e",
  "kind": "theorem",
  "lexical_name": "coeffList_eraseLead",
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
  "slug": "coefflist-eraselead--b7ed18ba464c96da306f42f6",
  "source": {
    "blob": "7ae92a560262bb6d9d367dc1a9fa3c1667635f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 110,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7ed18ba464c96da306f42f61f00ed6b2f214cd56c67258513b441ad7b54f8e3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ef553b-5dcf-ea98-59c7-32871678b35e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeffList_eraseLead (h : P ≠ 0) :
    P.coeffList =
      P.leadingCoeff :: (.replicate (P.natDegree - P.eraseLead.degree.succ) 0
        ++ P.eraseLead.coeffList) := by
  by_cases hdp : P.natDegree = 0
  · rw [eq_C_of_natDegree_eq_zero hdp] at h ⊢
    simp [coeffList_C (C_ne_zero.mp h)]
  by_cases hep : P.eraseLead = 0
  · have h₂ : .monomial P.natDegree P.leadingCoeff = P := by
      simpa [hep] using P.eraseLead_add_monomial_natDegree_leadingCoeff
    nth_rewrite 1 [← h₂]
    simp [coeffList_monomial (Polynomial.leadingCoeff_ne_zero.mpr h), hep]
  have h₁ := withBotSucc_degree_eq_natDegree_add_one h
  have h₂ := withBotSucc_degree_eq_natDegree_add_one hep
  obtain ⟨n, hn, hn2⟩ : ∃ d, P.natDegree = P.eraseLead.natDegree + 1 + d ∧
      d = P.natDegree - P.eraseLead.degree.succ := by
    use P.natDegree - P.eraseLead.natDegree -  1
    have := eraseLead_natDegree_le P
    omega
  rw [← hn2]; clear hn2
  apply List.ext_getElem?
  rintro (_|k)
  · obtain ⟨w,h⟩ := (coeffList_eq_cons_leadingCoeff h)
    simp_all
  simp only [coeffList, support_eq_empty, h, reduceIte, List.map_reverse, hep]
  by_cases hkd : P.natDegree + 1 ≤ k + 1
  · rw [List.getElem?_eq_none]
      <;> simpa [hep, h] using by omega
  obtain ⟨dk, hdk⟩ := exists_add_of_le (Nat.le_of_lt_succ (Nat.lt_of_not_le hkd))
  rw [List.getElem?_reverse (by simpa [withBotSucc_degree_eq_natDegree_add_one h] using hkd),
    List.getElem?_cons_succ, List.length_map, List.length_range, List.getElem?_map,
    List.getElem?_range (by omega), Option.map_some]
  conv_lhs => arg 1; equals P.eraseLead.coeff dk =>
    rw [eraseLead_coeff_of_ne (f := P) dk (by omega)]
    congr
    omega
  by_cases hkn : k < n
  · simpa [List.getElem?_append, hkn] using coeff_eq_zero_of_natDegree_lt (by omega)
  · rw [List.getElem?_append_right (List.length_replicate ▸ Nat.le_of_not_gt hkn),
      List.length_replicate, List.getElem?_reverse, List.getElem?_map]
    · rw [List.length_map, List.length_range,
        List.getElem?_range (by omega), Option.map_some]
      congr 2
      omega
    · simpa using by omega

end Semiring
section Ring
variable [Ring R] (P : R[X])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CoeffList/Variante35156466b3998b9e620da16c457b2d9ea2726eb810afa1dcad167e20449f525.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae92a560262bb6d9d367dc1a9fa3c1667635f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
