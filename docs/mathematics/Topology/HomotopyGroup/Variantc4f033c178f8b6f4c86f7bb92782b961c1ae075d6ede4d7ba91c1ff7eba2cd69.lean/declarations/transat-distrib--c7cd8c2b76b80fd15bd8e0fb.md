# transAt_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ddbdb339b960500de4981a24e9c3fe1156b294d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aca722c4-bb0c-97f2-a406-2d7f745c06bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf058c9d-9319-3b0d-4c86-46298f217beb",
  "kind": "theorem",
  "lexical_name": "transAt_distrib",
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
  "slug": "transat-distrib--c7cd8c2b76b80fd15bd8e0fb",
  "source": {
    "blob": "8ddbdb339b960500de4981a24e9c3fe1156b294d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 372,
    "path": "GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7cd8c2b76b80fd15bd8e0fb8887b02c94513a5d98f96675f765c2c6ca70efe6",
  "verification": {
    "reference": "docs/verification/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf058c9d-9319-3b0d-4c86-46298f217beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transAt_distrib {i j : N} (h : i ≠ j) (a b c d : Ω^ N X x) :
    transAt i (transAt j a b) (transAt j c d) = transAt j (transAt i a c) (transAt i b d) := by
  ext; simp_rw [transAt, coe_copy, Function.update_apply, if_neg h, if_neg h.symm]
  split_ifs <;>
    · congr 1; ext1; simp only [Function.update, eq_rec_constant, dite_eq_ite]
      apply ite_ite_comm; rintro rfl; exact h.symm
#align gen_loop.trans_at_distrib GenLoop.transAt_distrib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddbdb339b960500de4981a24e9c3fe1156b294d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
