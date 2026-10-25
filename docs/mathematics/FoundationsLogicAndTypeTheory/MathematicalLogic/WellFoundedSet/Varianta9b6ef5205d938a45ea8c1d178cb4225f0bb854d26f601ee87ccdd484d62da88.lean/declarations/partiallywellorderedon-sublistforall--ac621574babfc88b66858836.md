# partiallyWellOrderedOn_sublistForall₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b530751c9d01a75bffa274649223d8d29334a9e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 774,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88f12863-c831-33a3-9e3f-a4bc8e41b310",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74984d8a-4ee9-1fb2-c5a0-08e78a849c29",
  "kind": "theorem",
  "lexical_name": "partiallyWellOrderedOn_sublistForall₂",
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
  "slug": "partiallywellorderedon-sublistforall--ac621574babfc88b66858836",
  "source": {
    "blob": "b530751c9d01a75bffa274649223d8d29334a9e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 774,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac621574babfc88b6685883624ab0c3b70ff3963840048438c6983560606fe77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74984d8a-4ee9-1fb2-c5a0-08e78a849c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partiallyWellOrderedOn_sublistForall₂ (r : α → α → Prop) [IsRefl α r] [IsTrans α r]
    {s : Set α} (h : s.PartiallyWellOrderedOn r) :
    { l : List α | ∀ x, x ∈ l → x ∈ s }.PartiallyWellOrderedOn (List.SublistForall₂ r) := by
  rcases isEmpty_or_nonempty α
  · exact subsingleton_of_subsingleton.partiallyWellOrderedOn
  inhabit α
  rw [iff_not_exists_isMinBadSeq List.length]
  rintro ⟨f, hf1, hf2⟩
  have hnil : ∀ n, f n ≠ List.nil := fun n con =>
    hf1.2 n n.succ n.lt_succ_self (con.symm ▸ List.SublistForall₂.nil)
  have : ∀ n, (f n).headI ∈ s
  · exact fun n => hf1.1 n _ (List.head!_mem_self (hnil n))
  obtain ⟨g, hg⟩ := h.exists_monotone_subseq (fun n => (f n).headI) this
  have hf' :=
    hf2 (g 0) (fun n => if n < g 0 then f n else List.tail (f (g (n - g 0))))
      (fun m hm => (if_pos hm).symm) ?_
  swap;
  · simp only [if_neg (lt_irrefl (g 0)), tsub_self]
    rw [List.length_tail, ← Nat.pred_eq_sub_one]
    exact Nat.pred_lt fun con => hnil _ (List.length_eq_zero.1 con)
  rw [IsBadSeq] at hf'
  push_neg at hf'
  obtain ⟨m, n, mn, hmn⟩ := hf' <| fun n x hx => by
    split_ifs at hx with hn
    exacts [hf1.1 _ _ hx, hf1.1 _ _ (List.tail_subset _ hx)]
  by_cases hn : n < g 0
  · apply hf1.2 m n mn
    rwa [if_pos hn, if_pos (mn.trans hn)] at hmn
  · obtain ⟨n', rfl⟩ := exists_add_of_le (not_lt.1 hn)
    rw [if_neg hn, add_comm (g 0) n', add_tsub_cancel_right] at hmn
    split_ifs at hmn with hm
    · apply hf1.2 m (g n') (lt_of_lt_of_le hm (g.monotone n'.zero_le))
      exact _root_.trans hmn (List.tail_sublistForall₂_self _)
    · rw [← tsub_lt_iff_left (le_of_not_lt hm)] at mn
      apply hf1.2 _ _ (g.lt_iff_lt.2 mn)
      rw [← List.cons_head!_tail (hnil (g (m - g 0))), ← List.cons_head!_tail (hnil (g n'))]
      exact List.SublistForall₂.cons (hg _ _ (le_of_lt mn)) hmn
#align set.partially_well_ordered_on.partially_well_ordered_on_sublist_forall₂ Set.PartiallyWellOrderedOn.partiallyWellOrderedOn_sublistForall₂

end Set.PartiallyWellOrderedOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Varianta9b6ef5205d938a45ea8c1d178cb4225f0bb854d26f601ee87ccdd484d62da88.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b530751c9d01a75bffa274649223d8d29334a9e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
