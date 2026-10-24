# card_orderOf_eq_totient_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7de4d901376ff201d0d40848888e6c54720426c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84e9f07a-8ecb-90f7-44fe-ab240f4aa5c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29af26aa-302f-4c2d-fdfd-9a2d2b915562",
  "kind": "theorem",
  "lexical_name": "card_orderOf_eq_totient_aux₂",
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
  "slug": "card-orderof-eq-totient-aux--748cc05a1e55a3304291ebaf",
  "source": {
    "blob": "f7de4d901376ff201d0d40848888e6c54720426c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 488,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:748cc05a1e55a3304291ebaf9a387da39c841d81585de697af3277147450001e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29af26aa-302f-4c2d-fdfd-9a2d2b915562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_orderOf_eq_totient_aux₂ {d : ℕ} (hd : d ∣ Fintype.card α) :
    #{a : α | orderOf a = d} = φ d := by
  let c := Fintype.card α
  have hc0 : 0 < c := Fintype.card_pos_iff.2 ⟨1⟩
  apply card_orderOf_eq_totient_aux₁ hn hd
  by_contra h0
  -- Must qualify `Finset.card_eq_zero` because of https://github.com/leanprover/lean4/issues/2849
  simp_rw [not_lt, Nat.le_zero, Finset.card_eq_zero] at h0
  apply lt_irrefl c
  calc
    c = ∑ m ∈ c.divisors, #{a : α | orderOf a = m} := by
      simp only [sum_card_orderOf_eq_card_pow_eq_one hc0.ne']
      apply congr_arg card
      simp [c]
    _ = ∑ m ∈ c.divisors.erase d, #{a : α | orderOf a = m} := by
      rw [eq_comm]
      refine sum_subset (erase_subset _ _) fun m hm₁ hm₂ => ?_
      have : m = d := by
        contrapose! hm₂
        exact mem_erase_of_ne_of_mem hm₂ hm₁
      simp [this, h0]
    _ ≤ ∑ m ∈ c.divisors.erase d, φ m := by
      refine sum_le_sum fun m hm => ?_
      have hmc : m ∣ c := by
        simp only [mem_erase, mem_divisors] at hm
        tauto
      obtain h1 | h1 := (#{a : α | orderOf a = m}).eq_zero_or_pos
      · simp [h1]
      · simp [card_orderOf_eq_totient_aux₁ hn hmc h1]
    _ < ∑ m ∈ c.divisors, φ m :=
      sum_erase_lt_of_pos (mem_divisors.2 ⟨hd, hc0.ne'⟩) (totient_pos.2 (pos_of_dvd_of_pos hd hc0))
    _ = c := sum_totient _

@[to_additive isAddCyclic_of_card_nsmul_eq_zero_le, stacks 09HX "This theorem is stronger than \
09HX. It removes the abelian condition, and requires only `≤` instead of `=`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant5d6ead901d219ad09225b13f7969f68da8dba5b359d6242197d66964c2bf9183.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7de4d901376ff201d0d40848888e6c54720426c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
