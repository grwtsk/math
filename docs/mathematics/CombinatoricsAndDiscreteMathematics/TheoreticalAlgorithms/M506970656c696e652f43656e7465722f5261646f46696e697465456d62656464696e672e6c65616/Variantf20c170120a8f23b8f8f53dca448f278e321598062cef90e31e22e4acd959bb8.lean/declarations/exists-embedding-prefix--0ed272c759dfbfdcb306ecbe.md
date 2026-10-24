# exists_embedding_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a075bcd4da6f9feb088164fed9329424992c6122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b913bcb1-b06d-b838-d9cb-756c9cc4d7de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd5a8cde-358e-2bd4-d968-420d57a68ba2",
  "kind": "theorem",
  "lexical_name": "exists_embedding_prefix",
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
  "slug": "exists-embedding-prefix--0ed272c759dfbfdcb306ecbe",
  "source": {
    "blob": "a075bcd4da6f9feb088164fed9329424992c6122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed272c759dfbfdcb306ecbe57e8d3a3f69a49c5bdd38383634154c0bc773f9e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd5a8cde-358e-2bd4-d968-420d57a68ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_embedding_prefix (G : FiniteBoolGraph) :
    ∀ k : Nat, ∃ f : Nat -> Nat,
      InjectiveOnPrefix k f ∧ PreservesOrderedEdgesUpTo G k f := by
  intro k
  induction k with
  | zero =>
      refine ⟨fun _ => 0, ?_, ?_⟩
      · intro i _j hi _hj _h
        exact False.elim (Nat.not_lt_zero i hi)
      · intro _i j _hij hj
        exact False.elim (Nat.not_lt_zero j hj)
  | succ k ih =>
      obtain ⟨f, hfinj, hfpres⟩ := ih
      let U := yesNeighbors G f k
      let V := noNeighbors G f k
      have hdisj : DisjointNatLists U V := yes_no_disjoint hfinj
      obtain ⟨z, hzU, hzV, hU, hV⟩ :=
        bitRado_finite_extension U V hdisj
      let f' := extend f k z
      refine ⟨f', ?_, ?_⟩
      · intro i j hi hj heq
        by_cases hik : i = k
        · subst i
          by_cases hjk : j = k
          · exact hjk.symm
          · have hjlt : j < k := lt_of_lt_succ_ne hj hjk
            have hgj :
                G.edge k j = true ∨ G.edge k j = false := by
              cases G.edge k j <;> simp
            rcases hgj with hgj | hgj
            · have hmem : f j ∈ U := mem_yesNeighbors hjlt hgj
              have hzneq : z ≠ f j := by
                intro hz
                exact hzU (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' j = f j := by simp [f', extend, hjk]
              rw [hnew, hold] at heq
              exact False.elim (hzneq heq)
            · have hmem : f j ∈ V := mem_noNeighbors hjlt hgj
              have hzneq : z ≠ f j := by
                intro hz
                exact hzV (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' j = f j := by simp [f', extend, hjk]
              rw [hnew, hold] at heq
              exact False.elim (hzneq heq)
        · by_cases hjk : j = k
          · subst j
            have hilt : i < k := lt_of_lt_succ_ne hi hik
            have hgi :
                G.edge k i = true ∨ G.edge k i = false := by
              cases G.edge k i <;> simp
            rcases hgi with hgi | hgi
            · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
              have hzneq : z ≠ f i := by
                intro hz
                exact hzU (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' i = f i := by simp [f', extend, hik]
              rw [hold, hnew] at heq
              exact False.elim (hzneq heq.symm)
            · have hmem : f i ∈ V := mem_noNeighbors hilt hgi
              have hzneq : z ≠ f i := by
                intro hz
                exact hzV (by rw [hz]; exact hmem)
              have hnew : f' k = z := by simp [f', extend]
              have hold : f' i = f i := by simp [f', extend, hik]
              rw [hold, hnew] at heq
              exact False.elim (hzneq heq.symm)
          · have hilt : i < k := lt_of_lt_succ_ne hi hik
            have hjlt : j < k := lt_of_lt_succ_ne hj hjk
            have holdi : f' i = f i := by simp [f', extend, hik]
            have holdj : f' j = f j := by simp [f', extend, hjk]
            apply hfinj i j hilt hjlt
            rwa [holdi, holdj] at heq
      · intro i j hij hj
        by_cases hjk : j = k
        · subst j
          have hik : i ≠ k := by
            intro h
            subst i
            exact Nat.lt_irrefl k hij
          have hilt : i < k := lt_of_lt_succ_ne (Nat.lt_trans hij hj) hik
          have hnew : f' k = z := by simp [f', extend]
          have hold : f' i = f i := by simp [f', extend, hik]
          by_cases hgi : G.edge k i = true
          · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
            have hedge : bitRadoEdge z (f i) := hU (f i) hmem
            rw [hnew, hold]
            constructor
            · intro _; exact hgi
            · intro _; exact hedge
          · have hgfalse : G.edge k i = false :=
              bool_eq_false_of_ne_true hgi
            have hmem : f i ∈ V := mem_noNeighbors hilt hgfalse
            have hnot : ¬ bitRadoEdge z (f i) := hV (f i) hmem
            rw [hnew, hold, hgfalse]
            constructor
            · intro hedge; exact False.elim (hnot hedge)
            · intro htrue; cases htrue
        · have hjlt : j < k := lt_of_lt_succ_ne hj hjk
          have hik : i ≠ k := by
            intro h
            subst i
            have hkj : k < j := hij
            exact Nat.lt_asymm hkj hjlt
          have hilt : i < k := lt_of_lt_succ_ne (Nat.lt_trans hij hj) hik
          have holdi : f' i = f i := by simp [f', extend, hik]
          have holdj : f' j = f j := by simp [f', extend, hjk]
          rw [holdj, holdi]
          exact hfpres i j hij hjlt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variantf20c170120a8f23b8f8f53dca448f278e321598062cef90e31e22e4acd959bb8.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a075bcd4da6f9feb088164fed9329424992c6122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
