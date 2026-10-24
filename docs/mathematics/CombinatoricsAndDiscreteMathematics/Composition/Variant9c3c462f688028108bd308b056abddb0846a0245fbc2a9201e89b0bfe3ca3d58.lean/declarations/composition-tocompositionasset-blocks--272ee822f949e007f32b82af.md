# Composition.toCompositionAsSet_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569cab6e7c28dddff033f8155e85f71b712e2a62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1017,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdba7d50-8df2-7378-b07e-1c090899d65f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e59d05a4-a0f4-5a88-22c1-374b5b6b1149",
  "kind": "theorem",
  "lexical_name": "Composition.toCompositionAsSet_blocks",
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
  "slug": "composition-tocompositionasset-blocks--272ee822f949e007f32b82af",
  "source": {
    "blob": "569cab6e7c28dddff033f8155e85f71b712e2a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 1017,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:272ee822f949e007f32b82af101b2b6cace96135e52a04d5381d0e76b9d8eae5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59d05a4-a0f4-5a88-22c1-374b5b6b1149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1017–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Composition.toCompositionAsSet_blocks (c : Composition n) :
    c.toCompositionAsSet.blocks = c.blocks := by
  let d := c.toCompositionAsSet
  change d.blocks = c.blocks
  have length_eq : d.blocks.length = c.blocks.length := by
    convert c.toCompositionAsSet_length
    simp [CompositionAsSet.blocks]
  suffices H : ∀ i ≤ d.blocks.length, (d.blocks.take i).sum = (c.blocks.take i).sum
  exact eq_of_sum_take_eq length_eq H
  intro i hi
  have i_lt : i < d.boundaries.card := by
    -- porting note: relied on `convert` unfolding definitions, switched to using a `simpa`
    simpa [CompositionAsSet.blocks, length_ofFn, Nat.succ_eq_add_one,
      d.card_boundaries_eq_succ_length] using Nat.lt_succ_iff.2 hi
  have i_lt' : i < c.boundaries.card := i_lt
  have i_lt'' : i < c.length + 1 := by rwa [c.card_boundaries_eq_succ_length] at i_lt'
  have A :
    d.boundaries.orderEmbOfFin rfl ⟨i, i_lt⟩ =
      c.boundaries.orderEmbOfFin c.card_boundaries_eq_succ_length ⟨i, i_lt''⟩ :=
    rfl
  have B : c.sizeUpTo i = c.boundary ⟨i, i_lt''⟩ := rfl
  rw [d.blocks_partial_sum i_lt, CompositionAsSet.boundary, ← Composition.sizeUpTo, B, A,
    c.orderEmbOfFin_boundaries]
#align composition.to_composition_as_set_blocks Composition.toCompositionAsSet_blocks

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean#L1017).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569cab6e7c28dddff033f8155e85f71b712e2a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
