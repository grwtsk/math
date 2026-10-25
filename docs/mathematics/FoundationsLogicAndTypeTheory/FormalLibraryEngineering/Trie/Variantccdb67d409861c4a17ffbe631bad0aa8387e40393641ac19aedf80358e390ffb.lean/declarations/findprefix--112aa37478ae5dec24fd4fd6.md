# findPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1e5932aacf84a24e98e698a54b45e72ab41851e3870d739dfa0b9e14f18a5d4",
  "kind": "def",
  "lexical_name": "findPrefix",
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
  "slug": "findprefix--112aa37478ae5dec24fd4fd6",
  "source": {
    "blob": "094b540159dff568148f929fd8c37526e37e319d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variantccdb67d409861c4a17ffbe631bad0aa8387e40393641ac19aedf80358e390ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:112aa37478ae5dec24fd4fd66b7f5cc1d122ea4d3fb153e08b185670cec13d23",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variantccdb67d409861c4a17ffbe631bad0aa8387e40393641ac19aedf80358e390ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1e5932aacf84a24e98e698a54b45e72ab41851e3870d739dfa0b9e14f18a5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findPrefix (t : Trie α) (pre : String) : Array α := go t 0
  where
    go (t : Trie α) (i : Nat) : Array α :=
      if h : i < pre.utf8ByteSize then
        let c := pre.getUTF8Byte ⟨i⟩ h
        match t with
        | leaf _val => .empty
        | node1 _val c' t' =>
          if c == c'
          then go t' (i + 1)
          else .empty
        | node _val cs ts =>
          match cs.findIdx? (· == c) with
          | none   => .empty
          | some idx => go ts[idx]! (i + 1)
      else
        t.values

/-- Find the longest _key_ in the trie that is contained in the given string `s` at position `i`,
and return the associated value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variantccdb67d409861c4a17ffbe631bad0aa8387e40393641ac19aedf80358e390ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variantccdb67d409861c4a17ffbe631bad0aa8387e40393641ac19aedf80358e390ffb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094b540159dff568148f929fd8c37526e37e319d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
