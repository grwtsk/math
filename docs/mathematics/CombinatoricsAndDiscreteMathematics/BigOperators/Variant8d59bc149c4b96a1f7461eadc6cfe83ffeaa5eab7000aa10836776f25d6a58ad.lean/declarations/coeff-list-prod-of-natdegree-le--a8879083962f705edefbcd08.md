# coeff_list_prod_of_natDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f51d7ae4-71c5-4cdf-0183-34cdfe2eeec2",
  "kind": "theorem",
  "lexical_name": "coeff_list_prod_of_natDegree_le",
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
  "slug": "coeff-list-prod-of-natdegree-le--a8879083962f705edefbcd08",
  "source": {
    "blob": "22631d5bbba8f7c0bd7bac57c40371f45dbacce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8879083962f705edefbcd08c9abb8a2f6ea42b03f5437011ac9d3ee0bdc6aaf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f51d7ae4-71c5-4cdf-0183-34cdfe2eeec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_list_prod_of_natDegree_le (l : List S[X]) (n : ℕ) (hl : ∀ p ∈ l, natDegree p ≤ n) :
    coeff (List.prod l) (l.length * n) = (l.map fun p => coeff p n).prod := by
  induction' l with hd tl IH
  · simp
  · have hl' : ∀ p ∈ tl, natDegree p ≤ n := fun p hp => hl p (List.mem_cons_of_mem _ hp)
    simp only [List.prod_cons, List.map, List.length]
    rw [add_mul, one_mul, add_comm, ← IH hl', mul_comm tl.length]
    have h : natDegree tl.prod ≤ n * tl.length := by
      refine' (natDegree_list_prod_le _).trans _
      rw [← tl.length_map natDegree, mul_comm]
      refine' List.sum_le_card_nsmul _ _ _
      simpa using hl'
    have hdn : natDegree hd ≤ n := hl _ (List.mem_cons_self _ _)
    rcases hdn.eq_or_lt with (rfl | hdn')
    · cases' h.eq_or_lt with h' h'
      · rw [← h', coeff_mul_degree_add_degree, leadingCoeff, leadingCoeff]
      · rw [coeff_eq_zero_of_natDegree_lt, coeff_eq_zero_of_natDegree_lt h', mul_zero]
        exact natDegree_mul_le.trans_lt (add_lt_add_left h' _)
    · rw [coeff_eq_zero_of_natDegree_lt hdn', coeff_eq_zero_of_natDegree_lt, zero_mul]
      exact natDegree_mul_le.trans_lt (add_lt_add_of_lt_of_le hdn' h)
#align polynomial.coeff_list_prod_of_nat_degree_le Polynomial.coeff_list_prod_of_natDegree_le

end Semiring

section CommSemiring

variable [CommSemiring R] (f : ι → R[X]) (t : Multiset R[X])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22631d5bbba8f7c0bd7bac57c40371f45dbacce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
