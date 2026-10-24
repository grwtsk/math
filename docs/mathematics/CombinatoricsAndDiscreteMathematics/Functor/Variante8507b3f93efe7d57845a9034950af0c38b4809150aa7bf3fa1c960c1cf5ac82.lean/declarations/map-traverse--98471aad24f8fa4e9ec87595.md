# map_traverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "281c0385f291bb5357a6e8d20dfdb8db74fa04fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c6252c0-6db8-be5b-f8c3-9fd973d5a99e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5daf09a8-4c96-a0d2-e806-70715f4846ec",
  "kind": "theorem",
  "lexical_name": "map_traverse",
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
  "slug": "map-traverse--98471aad24f8fa4e9ec87595",
  "source": {
    "blob": "281c0385f291bb5357a6e8d20dfdb8db74fa04fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98471aad24f8fa4e9ec87595d835bf1abc698f4992c7da07df0dcc11c5dc7579",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5daf09a8-4c96-a0d2-e806-70715f4846ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_traverse (g : α → G β) (h : β → γ) (s : Finset α) :
    Functor.map h <$> traverse g s = traverse (Functor.map h ∘ g) s := by
  unfold traverse
  simp only [map_comp_coe, functor_norm]
  rw [LawfulFunctor.comp_map, Multiset.map_traverse]
#align finset.map_traverse Finset.map_traverse

end Traversable

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281c0385f291bb5357a6e8d20dfdb8db74fa04fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
