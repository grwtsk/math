# insertAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59cc960652d04d060ae14b8d6abd95cca82be62123704d11d4b15b643407653e",
  "kind": "def",
  "lexical_name": "insertAux",
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
  "slug": "insertaux--9acb1fdbd6a33fe099ccb9c6",
  "source": {
    "blob": "e4d81c5cc33ac8d6e67ad217402ec8688b11486e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9acb1fdbd6a33fe099ccb9c64f7e73ccfa7df90a3df98463cfbae80fc9e13a31",
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

Occurrence: `declaration:59cc960652d04d060ae14b8d6abd95cca82be62123704d11d4b15b643407653e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def insertAux [BEq α] [Hashable α] : Node α β → USize → USize → α → β → Node α β
  | Node.collision keys vals heq, _, depth, k, v =>
    let newNode := insertAtCollisionNode ⟨Node.collision keys vals heq, IsCollisionNode.mk _ _ _⟩ k v
    if depth >= maxDepth || getCollisionNodeSize newNode < maxCollisions then newNode.val
    else match newNode with
      | ⟨Node.entries _, h⟩ => nomatch h
      | ⟨Node.collision keys vals heq, _⟩ =>
        let rec traverse (i : Nat) (entries : Node α β) : Node α β :=
          if h : i < keys.size then
            let k := keys[i]
            have : i < vals.size := heq ▸ h
            let v := vals[i]
            let h := hash k |>.toUSize
            let h := div2Shift h (shift * (depth - 1))
            traverse (i+1) (insertAux entries h depth k v)
          else
            entries
        traverse 0 mkEmptyEntries
  | Node.entries entries, h, depth, k, v =>
    let j     := (mod2Shift h shift).toNat
    Node.entries $ entries.modify j fun entry =>
      match entry with
      | Entry.null        => Entry.entry k v
      | Entry.ref node    => Entry.ref $ insertAux node (div2Shift h shift) (depth+1) k v
      | Entry.entry k' v' =>
        if k == k' then Entry.entry k v
        else Entry.ref $ mkCollisionNode k' v' k v

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d81c5cc33ac8d6e67ad217402ec8688b11486e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
