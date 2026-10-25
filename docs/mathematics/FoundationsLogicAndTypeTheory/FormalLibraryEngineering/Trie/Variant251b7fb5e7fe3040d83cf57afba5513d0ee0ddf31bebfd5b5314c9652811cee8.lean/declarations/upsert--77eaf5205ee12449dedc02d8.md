# upsert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba4b9aa910f6780d1646243f8ad5e49bb665bc706321da3a51300bcdba921b56",
  "kind": "def",
  "lexical_name": "upsert",
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
  "slug": "upsert--77eaf5205ee12449dedc02d8",
  "source": {
    "blob": "728f21b35ff8d6588dbbb907ab5862d4f1334fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variant251b7fb5e7fe3040d83cf57afba5513d0ee0ddf31bebfd5b5314c9652811cee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77eaf5205ee12449dedc02d8752c7ca644fe6a70f2e9358bde4d047ac0d297a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variant251b7fb5e7fe3040d83cf57afba5513d0ee0ddf31bebfd5b5314c9652811cee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba4b9aa910f6780d1646243f8ad5e49bb665bc706321da3a51300bcdba921b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def upsert (t : Trie α) (s : String) (f : Option α → α) : Trie α :=
  let rec insertEmpty (i : Nat) : Trie α :=
    if h : i < s.utf8ByteSize then
      let c := s.getUTF8Byte ⟨i⟩ h
      let t := insertEmpty (i + 1)
      node1 none c t
    else
      leaf (f .none)
  let rec loop
    | i, leaf v =>
      if h : i < s.utf8ByteSize then
        let c := s.getUTF8Byte ⟨i⟩ h
        let t := insertEmpty (i + 1)
        node1 v c t
      else
        leaf (f v)
    | i, node1 v c' t' =>
      if h : i < s.utf8ByteSize then
        let c := s.getUTF8Byte ⟨i⟩ h
        if c == c'
        then node1 v c' (loop (i + 1) t')
        else
          let t := insertEmpty (i + 1)
          node v (.mk #[c, c']) #[t, t']
      else
        node1 (f v) c' t'
    | i, node v cs ts =>
      if h : i < s.utf8ByteSize then
        let c := s.getUTF8Byte ⟨i⟩ h
        match cs.findIdx? (· == c) with
          | none   =>
            let t := insertEmpty (i + 1)
            node v (cs.push c) (ts.push t)
          | some idx =>
            node v cs (ts.modify idx (loop (i + 1)))
      else
        node (f v) cs ts
  loop 0 t

/-- Inserts a value at the given key `s`, overriding an existing value if present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variant251b7fb5e7fe3040d83cf57afba5513d0ee0ddf31bebfd5b5314c9652811cee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trie/Variant251b7fb5e7fe3040d83cf57afba5513d0ee0ddf31bebfd5b5314c9652811cee8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728f21b35ff8d6588dbbb907ab5862d4f1334fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
