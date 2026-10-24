# coeff_divByMonic_X_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f7130fa-9843-8f8b-c981-3de1a4e30d54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77459d8c-932c-8995-25cb-160132b29f29",
  "kind": "theorem",
  "lexical_name": "coeff_divByMonic_X_sub_C",
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
  "slug": "coeff-divbymonic-x-sub-c--26c85b81766791f7495fd018",
  "source": {
    "blob": "8e15cd3fb523371c524168aed531903cafdbbce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 448,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26c85b81766791f7495fd0183e70f74c59d968f8ca8deba41ba35b0e8d7014e7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77459d8c-932c-8995-25cb-160132b29f29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_divByMonic_X_sub_C (p : R[X]) (a : R) (n : ℕ) :
    (p /ₘ (X - C a)).coeff n = ∑ i ∈ Icc (n + 1) p.natDegree, a ^ (i - (n + 1)) * p.coeff i := by
  wlog h : p.natDegree ≤ n generalizing n
  · refine Nat.decreasingInduction' (fun n hn _ ih ↦ ?_) (le_of_not_le h) ?_
    · rw [coeff_divByMonic_X_sub_C_rec, ih, eq_comm, Icc_eq_cons_Ioc (Nat.succ_le.mpr hn),
          sum_cons, Nat.sub_self, pow_zero, one_mul, mul_sum]
      congr 1; refine sum_congr ?_ fun i hi ↦ ?_
      · ext; simp [Nat.succ_le]
      rw [← mul_assoc, ← pow_succ', eq_comm, i.sub_succ', Nat.sub_add_cancel]
      apply Nat.le_sub_of_add_le
      rw [add_comm]; exact (mem_Icc.mp hi).1
    · exact this _ le_rfl
  rw [Icc_eq_empty (Nat.lt_succ.mpr h).not_le, sum_empty]
  nontriviality R
  by_cases hp : p.natDegree = 0
  · rw [(divByMonic_eq_zero_iff <| monic_X_sub_C a).mpr, coeff_zero]
    apply degree_lt_degree; rw [hp, natDegree_X_sub_C]; norm_num
  · apply coeff_eq_zero_of_natDegree_lt
    rw [natDegree_divByMonic p (monic_X_sub_C a), natDegree_X_sub_C]
    exact (Nat.pred_lt hp).trans_le h

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantf64f25f34b03166e7900a694563cb685f81ac7c8846185ae5f77767bd137bf44.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e15cd3fb523371c524168aed531903cafdbbce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
