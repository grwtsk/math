# alterAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0282a8d6be484044673cedd748c2a6442fca4fe49a5d7575ea7f582a2aa9fcce",
  "kind": "def",
  "lexical_name": "alterAux",
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
  "slug": "alteraux--2ca22ec4f6e2a9bb3b86c2d9",
  "source": {
    "blob": "e4d81c5cc33ac8d6e67ad217402ec8688b11486e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 293,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ca22ec4f6e2a9bb3b86c2d9ec6a6e232ed3f1c76789a886e2816cd5337d210b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0282a8d6be484044673cedd748c2a6442fca4fe49a5d7575ea7f582a2aa9fcce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def alterAux [BEq α] [Hashable α] (f : Option β → Option β) : Node α β → USize →
    USize → α → Node α β
  | n@(Node.collision keys vals heq), h, d, k =>
    match keys.finIdxOf? k with
    | some idx =>
      have : idx < vals.size := heq ▸ idx.isLt
      let v' := vals[idx]
      /-
      This could also be done with more `unsafe` to avoid erase then push but is hopefully not the
      bottleneck.
      -/
      let keys := keys.eraseIdx idx
      let vals := vals.eraseIdx idx
      match f (some v') with
      | some v =>
        let keys := keys.push k
        let vals := vals.push v
        Node.collision keys vals (by simp +zetaDelta [heq])
      | none   =>
        Node.collision keys vals (by simp +zetaDelta [heq])
    | none     =>
      match f none with
      | some v => insertAux n h d k v
      | none   => n
  | Node.entries entries, h, d, k =>
    let j     := (mod2Shift h shift).toNat
    Node.entries <| entries.modify j fun
      | Entry.null        =>
        match f none with
        | some v => Entry.entry k v
        | none   => Entry.null
      | Entry.entry k' v' =>
        if k == k' then
          match f (some v') with
          | some v => Entry.entry k v
          | none   => Entry.null
        else
          match f none with
          | some v => Entry.ref <| mkCollisionNode k' v' k v
          | none => Entry.entry k' v'
      | Entry.ref node    =>
        let newNode := alterAux f node (div2Shift h shift) (d + 1) k
        match isUnaryNode newNode with
        | none        => Entry.ref newNode
        | some (k, v) => Entry.entry k v

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d81c5cc33ac8d6e67ad217402ec8688b11486e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
