# notMem_map_subtype_of_not_property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48d78c44e905aba3b989ce254d07c3fd65af80c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 683,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:667a07a5-be6a-d4c4-3218-8dfb5520d18b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aace660e-f587-5220-c17b-200423146e84",
  "kind": "theorem",
  "lexical_name": "notMem_map_subtype_of_not_property",
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
  "slug": "notmem-map-subtype-of-not-property--e9719ef1df5dd09c3708ef73",
  "source": {
    "blob": "48d78c44e905aba3b989ce254d07c3fd65af80c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9719ef1df5dd09c3708ef7317bea3d61594eb07f5a34b175b92887e3ae4a8f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aace660e-f587-5220-c17b-200423146e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notMem_map_subtype_of_not_property {p : α → Prop} (s : Finset { x // p x }) {a : α}
    (h : ¬p a) : a ∉ s.map (Embedding.subtype _) :=
  mt s.property_of_mem_map_subtype h

/-- If a `Finset` of a subtype is converted to the main type with
`Embedding.subtype`, the result is a subset of the set giving the
subtype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant215a8edc840c6972f66f6e1bcbec7db3b410efcde0ab91fbe9cd377b698a0593.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48d78c44e905aba3b989ce254d07c3fd65af80c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
