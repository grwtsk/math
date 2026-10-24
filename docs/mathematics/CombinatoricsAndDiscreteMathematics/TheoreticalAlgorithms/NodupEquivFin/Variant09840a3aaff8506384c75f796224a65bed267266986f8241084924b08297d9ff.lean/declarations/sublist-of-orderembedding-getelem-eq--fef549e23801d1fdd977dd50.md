# sublist_of_orderEmbedding_getElem?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e505a1df92012d1a458ec76c3962090f12605757",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86ad1d01-eef2-591f-4d24-7ccf1ec2f929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41f604cb-fb28-87c9-67c8-d7c583876b8a",
  "kind": "theorem",
  "lexical_name": "sublist_of_orderEmbedding_getElem?_eq",
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
  "slug": "sublist-of-orderembedding-getelem-eq--fef549e23801d1fdd977dd50",
  "source": {
    "blob": "e505a1df92012d1a458ec76c3962090f12605757",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fef549e23801d1fdd977dd50f94d7582bd5aa29b00bc07e7f56ac0c810385f05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f604cb-fb28-87c9-67c8-d7c583876b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_of_orderEmbedding_getElem?_eq {l l' : List α} (f : ℕ ↪o ℕ)
    (hf : ∀ ix : ℕ, l[ix]? = l'[f ix]?) : l <+ l' := by
  induction' l with hd tl IH generalizing l' f
  · simp
  have : some hd = l'[f 0]? := by simpa using hf 0
  rw [eq_comm, List.getElem?_eq_some_iff] at this
  obtain ⟨w, h⟩ := this
  let f' : ℕ ↪o ℕ :=
    OrderEmbedding.ofMapLEIff (fun i => f (i + 1) - (f 0 + 1)) fun a b => by
      dsimp only
      rw [Nat.sub_le_sub_iff_right, OrderEmbedding.le_iff_le, Nat.succ_le_succ_iff]
      rw [Nat.succ_le_iff, OrderEmbedding.lt_iff_lt]
      exact b.succ_pos
  have : ∀ ix, tl[ix]? = (l'.drop (f 0 + 1))[f' ix]? := by
    intro ix
    rw [List.getElem?_drop, OrderEmbedding.coe_ofMapLEIff, Nat.add_sub_cancel', ← hf]
    simp only [getElem?_cons_succ]
    rw [Nat.succ_le_iff, OrderEmbedding.lt_iff_lt]
    exact ix.succ_pos
  rw [← List.take_append_drop (f 0 + 1) l', ← List.singleton_append]
  apply List.Sublist.append _ (IH _ this)
  rw [List.singleton_sublist, ← h, l'.getElem_take' _ (Nat.lt_succ_self _)]
  exact List.getElem_mem _

@[deprecated (since := "2025-02-15")] alias sublist_of_orderEmbedding_get?_eq :=
sublist_of_orderEmbedding_getElem?_eq

/-- A `l : List α` is `Sublist l l'` for `l' : List α` iff
there is `f`, an order-preserving embedding of `ℕ` into `ℕ` such that
any element of `l` found at index `ix` can be found at index `f ix` in `l'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant09840a3aaff8506384c75f796224a65bed267266986f8241084924b08297d9ff.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e505a1df92012d1a458ec76c3962090f12605757` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
