# ofArrayWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8e55c68aae08227ed6f80c39f38c65a1320ec5be81b3d4488d05fbf6db590e",
  "kind": "def",
  "lexical_name": "ofArrayWith",
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
  "slug": "ofarraywith--f2caf5b8b1db18051be8f37b",
  "source": {
    "blob": "fcc8bcee93f382d031255ca4094a3a4373e1fe62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantaf8129ac8c326fdd61014e61ae48dcb7e9ccd8e890813a21b8dfa65e53b4a25e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2caf5b8b1db18051be8f37b04e0fcf39faea37e0746e88c0d00f64a2dec6840",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantaf8129ac8c326fdd61014e61ae48dcb7e9ccd8e890813a21b8dfa65e53b4a25e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a8e55c68aae08227ed6f80c39f38c65a1320ec5be81b3d4488d05fbf6db590e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofArrayWith (xs : Array (α × β)) (f : α → β → β → β) :
    PersistentHashMap α β :=
  xs.foldl (init := {}) fun m (k, v) =>
    match m.find? k with
    | none    => m.insert k v
    | some v' => m.insert k <| f k v v'

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using the monadic function `f`.
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantaf8129ac8c326fdd61014e61ae48dcb7e9ccd8e890813a21b8dfa65e53b4a25e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantaf8129ac8c326fdd61014e61ae48dcb7e9ccd8e890813a21b8dfa65e53b4a25e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcc8bcee93f382d031255ca4094a3a4373e1fe62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
