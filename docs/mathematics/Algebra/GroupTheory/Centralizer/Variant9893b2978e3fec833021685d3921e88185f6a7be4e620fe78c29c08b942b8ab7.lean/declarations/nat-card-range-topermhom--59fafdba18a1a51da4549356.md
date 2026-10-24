# nat_card_range_toPermHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:050f96ef-5ee1-447f-2163-ae8a585c433f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da1e7fd6-7a7a-9f55-7bda-0c755580f549",
  "kind": "theorem",
  "lexical_name": "nat_card_range_toPermHom",
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
  "slug": "nat-card-range-topermhom--59fafdba18a1a51da4549356",
  "source": {
    "blob": "91440cef8726265c304ec4e9f42971178fa1cbfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 462,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59fafdba18a1a51da45493564338ffba933b24222e73db98ab67a67a86c386bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da1e7fd6-7a7a-9f55-7bda-0c755580f549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_card_range_toPermHom :
    Nat.card (toPermHom g).range =
      ∏ n ∈ g.cycleType.toFinset, (g.cycleType.count n)! := by
  classical
  set sc := fun (c : g.cycleFactorsFinset) ↦ #c.val.support with hsc
  suffices Fintype.card (toPermHom g).range =
    Fintype.card { k : Perm g.cycleFactorsFinset | sc ∘ k = sc } by
    simp only [Nat.card_eq_fintype_card, this, Set.coe_ofPred, DomMulAct.stabilizer_card', hsc,
      Finset.univ_eq_attach]
    simp_rw [← CycleType.count_def]
    apply Finset.prod_congr _ (fun _ _ => rfl)
    ext n
    simp only [Finset.mem_image, Finset.mem_attach,
        true_and, Subtype.exists, exists_prop, Multiset.mem_toFinset]
    simp only [cycleType_def, Function.comp_apply, Multiset.mem_map, Finset.mem_val]
  simp only [Fintype.card_eq_nat_card]
  congr
  ext
  rw [mem_range_toPermHom_iff', Set.mem_ofPred_eq]

section Kernel
/- Here, we describe the kernel of `g.OnCycleFactors.toPermHom` -/

variable (g) in
/-- The parametrization of the kernel of `toPermHom` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant9893b2978e3fec833021685d3921e88185f6a7be4e620fe78c29c08b942b8ab7.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91440cef8726265c304ec4e9f42971178fa1cbfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
