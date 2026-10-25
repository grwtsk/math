# mergePreservingDuplicates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e726e41ad1c15c3ad85b36ef8d51fce7afe11411f03c1a24df718f52ce7c37b6",
  "kind": "def",
  "lexical_name": "mergePreservingDuplicates",
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
  "slug": "mergepreservingduplicates--a6c266fe4c70cfe072faff16",
  "source": {
    "blob": "9250e07855e918965ed7b3aa4244cd6b6507b012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6c266fe4c70cfe072faff16377758c5bf317cdc6d9fa1da96749f0265a24a79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e726e41ad1c15c3ad85b36ef8d51fce7afe11411f03c1a24df718f52ce7c37b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mergePreservingDuplicates : Trie α → Trie α → Trie α
  | node vs₁ cs₁, node vs₂ cs₂ =>
    node (vs₁ ++ vs₂) (mergeChildren cs₁ cs₂)
where
  /-- Auxiliary definition for `mergePreservingDuplicates`. -/
  mergeChildren (cs₁ cs₂ : Array (Key × Trie α)) :
      Array (Key × Trie α) :=
    Array.mergeSortedMergingDuplicates
      (ord := ⟨compareOn (·.fst)⟩) cs₁ cs₂
      (fun (k₁, t₁) (_, t₂) => (k₁, mergePreservingDuplicates t₁ t₂))

end Trie


/--
Monadically fold over the keys and values stored in a `DiscrTree`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Variant29327d6585ef0d144050b7540976491b39e124482d5785246b22221fea1e1150.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9250e07855e918965ed7b3aa4244cd6b6507b012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
