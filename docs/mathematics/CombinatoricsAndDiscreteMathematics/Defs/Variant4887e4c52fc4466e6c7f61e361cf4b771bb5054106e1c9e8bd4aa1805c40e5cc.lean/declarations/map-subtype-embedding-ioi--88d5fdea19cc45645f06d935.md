# map_subtype_embedding_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c82a71432b7919bb33f2899f9140dfbd0dd6330",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a58c3c2-07a4-eb57-139e-7d449d278c0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:022c645e-1eda-395b-a4f2-40e7e79b3e7b",
  "kind": "theorem",
  "lexical_name": "map_subtype_embedding_Ioi",
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
  "slug": "map-subtype-embedding-ioi--88d5fdea19cc45645f06d935",
  "source": {
    "blob": "9c82a71432b7919bb33f2899f9140dfbd0dd6330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d5fdea19cc45645f06d9356d9f2e4cd7bea929fb15a0466c641b929357769f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:022c645e-1eda-395b-a4f2-40e7e79b3e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1161–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subtype_embedding_Ioi (hp : ∀ ⦃a x⦄, a ≤ x → p a → p x) :
    (Ioi a).map (Embedding.subtype p) = (Ioi a : Finset α) := by
  rw [subtype_Ioi_eq]
  exact Finset.subtype_map_of_mem fun x hx => hp (mem_Ioi.1 hx).le a.prop

end LocallyFiniteOrderTop

section LocallyFiniteOrderBot

variable [LocallyFiniteOrderBot α] (a : Subtype p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4887e4c52fc4466e6c7f61e361cf4b771bb5054106e1c9e8bd4aa1805c40e5cc.lean#L1161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c82a71432b7919bb33f2899f9140dfbd0dd6330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
