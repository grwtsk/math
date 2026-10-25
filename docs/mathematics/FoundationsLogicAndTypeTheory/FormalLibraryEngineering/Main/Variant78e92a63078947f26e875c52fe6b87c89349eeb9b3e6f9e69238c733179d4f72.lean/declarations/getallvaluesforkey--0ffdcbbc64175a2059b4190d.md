# getAllValuesForKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ac5f8d597b8c12e5fdc47a423f2e18d01bb639c9a62e2bb1801f870c9670c33",
  "kind": "def",
  "lexical_name": "getAllValuesForKey",
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
  "slug": "getallvaluesforkey--0ffdcbbc64175a2059b4190d",
  "source": {
    "blob": "025913f51556b1e46a1c3372f25441f81f96ad7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 548,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ffdcbbc64175a2059b4190dcaebc1474b23c9d86490f8f542255af1d5c47456",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ac5f8d597b8c12e5fdc47a423f2e18d01bb639c9a62e2bb1801f870c9670c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def getAllValuesForKey (d : DiscrTree α) (k : Key) (result : Array α) : Array α :=
  match d.root.find? k with
  | none      => result
  | some trie => go trie result
where
  go (trie : Trie α) (result : Array α) : Array α := Id.run do
    match trie with
    | .node vs cs =>
      let mut result := result ++ vs
      for (_, trie) in cs do
        result := go trie result
      return result

/--
A liberal version of `getMatch` which only takes the root symbol of `e` into account.
We use this method to simulate Lean 3's indexing.

The natural number in the result is the number of arguments in `e` after `reduceDT`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025913f51556b1e46a1c3372f25441f81f96ad7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
