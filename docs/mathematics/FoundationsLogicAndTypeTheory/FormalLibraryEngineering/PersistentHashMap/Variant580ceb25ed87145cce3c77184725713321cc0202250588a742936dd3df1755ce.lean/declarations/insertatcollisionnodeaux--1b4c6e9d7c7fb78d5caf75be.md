# insertAtCollisionNodeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65fd1e0ee48ada6cc83a5ada24e11bc866dbd68bf61e459fd4dec53a22077fa8",
  "kind": "def",
  "lexical_name": "insertAtCollisionNodeAux",
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
  "slug": "insertatcollisionnodeaux--1b4c6e9d7c7fb78d5caf75be",
  "source": {
    "blob": "9ff843783f55193334fa7a1fa34e41d2db50f017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b4c6e9d7c7fb78d5caf75beceec745d9063fa2fcdbdb78355a6e32cc691e0fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65fd1e0ee48ada6cc83a5ada24e11bc866dbd68bf61e459fd4dec53a22077fa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def insertAtCollisionNodeAux [BEq α] : CollisionNode α β → Nat → α → β → CollisionNode α β
  | n@⟨Node.collision keys vals heq, _⟩, i, k, v =>
    if h : i < keys.size then
      let k' := keys[i];
      if k == k' then
         let j : Fin vals.size := ⟨i, by rw [←heq]; assumption⟩
         ⟨Node.collision (keys.set i k) (vals.set j v) (size_set heq ⟨i, h⟩ j k v), IsCollisionNode.mk _ _ _⟩
      else insertAtCollisionNodeAux n (i+1) k v
    else
      ⟨Node.collision (keys.push k) (vals.push v) (size_push heq k v), IsCollisionNode.mk _ _ _⟩
  | ⟨Node.entries _, h⟩, _, _, _ => nomatch h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff843783f55193334fa7a1fa34e41d2db50f017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
