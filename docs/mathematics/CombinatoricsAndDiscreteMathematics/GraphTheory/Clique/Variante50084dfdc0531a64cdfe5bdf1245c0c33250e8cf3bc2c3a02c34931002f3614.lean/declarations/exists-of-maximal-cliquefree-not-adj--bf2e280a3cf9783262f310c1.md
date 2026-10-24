# exists_of_maximal_cliqueFree_not_adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e8132538b1cff85d37a983b6b813e4c96bdd764",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e50084dfdc0531a64cdfe5bdf1245c0c33250e8cf3bc2c3a02c34931002f3614.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9b275bd-b844-5c05-c227-4f4de12351c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddc16245-e536-f92b-dea9-d72b5a8b0138",
  "kind": "lemma",
  "lexical_name": "exists_of_maximal_cliqueFree_not_adj",
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
  "slug": "exists-of-maximal-cliquefree-not-adj--bf2e280a3cf9783262f310c1",
  "source": {
    "blob": "4e8132538b1cff85d37a983b6b813e4c96bdd764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 495,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variante50084dfdc0531a64cdfe5bdf1245c0c33250e8cf3bc2c3a02c34931002f3614.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf2e280a3cf9783262f310c133c30deff1537287d3676a2de184b1689ee50c99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variante50084dfdc0531a64cdfe5bdf1245c0c33250e8cf3bc2c3a02c34931002f3614.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddc16245-e536-f92b-dea9-d72b5a8b0138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_maximal_cliqueFree_not_adj [DecidableEq α]
    (h : Maximal (fun H ↦ H.CliqueFree (n + 1)) G) {x y : α} (hne : x ≠ y) (hn : ¬ G.Adj x y) :
    ∃ s, x ∉ s ∧ y ∉ s ∧ G.IsNClique n (insert x s) ∧ G.IsNClique n (insert y s) := by
  obtain ⟨t, hc⟩ := not_forall_not.1 <| h.not_prop_of_gt <| G.lt_sup_edge _ _ hne hn
  use (t.erase x).erase y, erase_right_comm (a := x) ▸ (notMem_erase _ _), notMem_erase _ _
  have h1 := h.1.mem_of_sup_edge_isNClique hc
  have h2 := h.1.mem_of_sup_edge_isNClique (edge_comm .. ▸ hc)
  rw [insert_erase <| mem_erase_of_ne_of_mem hne.symm h2, erase_right_comm,
      insert_erase <| mem_erase_of_ne_of_mem hne h1]
  exact ⟨(edge_comm .. ▸ hc).erase_of_sup_edge_of_mem h2, hc.erase_of_sup_edge_of_mem h1⟩

end CliqueFree

section CliqueFreeOn
variable {s s₁ s₂ : Set α} {a : α} {m n : ℕ}

/-- `G.CliqueFreeOn s n` means that `G` has no `n`-cliques contained in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variante50084dfdc0531a64cdfe5bdf1245c0c33250e8cf3bc2c3a02c34931002f3614.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variante50084dfdc0531a64cdfe5bdf1245c0c33250e8cf3bc2c3a02c34931002f3614.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e8132538b1cff85d37a983b6b813e4c96bdd764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
