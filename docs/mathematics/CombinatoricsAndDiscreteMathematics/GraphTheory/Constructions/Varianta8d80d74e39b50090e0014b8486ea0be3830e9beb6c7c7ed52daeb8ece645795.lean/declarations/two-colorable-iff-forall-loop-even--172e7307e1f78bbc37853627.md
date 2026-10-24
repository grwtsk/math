# two_colorable_iff_forall_loop_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1be873f10c8634cdcb83c0a7b5ebb0904456ce68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8d80d74e39b50090e0014b8486ea0be3830e9beb6c7c7ed52daeb8ece645795.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c28d5c8f-bf57-6029-ebe2-8688dc9ce18b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f3eaf50-e305-3e04-e8a3-ba061864307c",
  "kind": "lemma",
  "lexical_name": "two_colorable_iff_forall_loop_even",
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
  "slug": "two-colorable-iff-forall-loop-even--172e7307e1f78bbc37853627",
  "source": {
    "blob": "1be873f10c8634cdcb83c0a7b5ebb0904456ce68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Varianta8d80d74e39b50090e0014b8486ea0be3830e9beb6c7c7ed52daeb8ece645795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172e7307e1f78bbc378536275089c41e6efe22c0f49ad5acbe1824c845065318",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Varianta8d80d74e39b50090e0014b8486ea0be3830e9beb6c7c7ed52daeb8ece645795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f3eaf50-e305-3e04-e8a3-ba061864307c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_colorable_iff_forall_loop_even {α : Type*} {G : SimpleGraph α} :
    G.Colorable 2 ↔ ∀ u, ∀ (w : G.Walk u u), Even w.length := by
  simp_rw [← Nat.not_odd_iff_even]
  constructor <;> intro h
  · intro _ w ho
    have := (w.three_le_chromaticNumber_of_odd_loop ho).trans h.chromaticNumber_le
    norm_cast
  · apply colorable_iff_forall_connectedComponent.2
    intro c
    obtain ⟨_, hv⟩ := c.nonempty_supp
    use fun a ↦ Fin.ofNat 2 (c.connected_toSimpleGraph ⟨_, hv⟩ a).some.length
    intro a b hab he
    apply h _ <| (((c.connected_toSimpleGraph ⟨_, hv⟩ a).some.concat hab).append
                 (c.connected_toSimpleGraph ⟨_, hv⟩ b).some.reverse).map c.toSimpleGraph_hom
    rw [length_map, length_append, length_concat, length_reverse, add_right_comm]
    have : ((Nonempty.some (c.connected_toSimpleGraph ⟨_, hv⟩ a)).length) % 2 =
        (Nonempty.some (c.connected_toSimpleGraph ⟨_, hv⟩ b)).length % 2 := by
      simp_rw [← Fin.val_natCast, ← Fin.ofNat_eq_cast, he]
    exact (Nat.even_iff.mpr (by lia)).add_one

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Varianta8d80d74e39b50090e0014b8486ea0be3830e9beb6c7c7ed52daeb8ece645795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Varianta8d80d74e39b50090e0014b8486ea0be3830e9beb6c7c7ed52daeb8ece645795.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be873f10c8634cdcb83c0a7b5ebb0904456ce68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
