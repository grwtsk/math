# entryAtIdxD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c248254de275ce7d40140e95af1b41849e75ca0ec8586ce58d19a6368f3ca4d1",
  "kind": "def",
  "lexical_name": "entryAtIdxD",
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
  "slug": "entryatidxd--23ffdd429af5465206bb7d99",
  "source": {
    "blob": "86baad146034ad0164cf7224f8747781c2e54f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 483,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variantb8842843d844c96357fb6fea8bfd57fad1c44897d732cfa59aa6e0abdd0fb5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23ffdd429af5465206bb7d99621088ef692a7ebc1faeae31fed1c8109421ba73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variantb8842843d844c96357fb6fea8bfd57fad1c44897d732cfa59aa6e0abdd0fb5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c248254de275ce7d40140e95af1b41849e75ca0ec8586ce58d19a6368f3ca4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def entryAtIdxD : Impl α β → Nat → (a : α) × β a → (a : α) × β a
  | .leaf, _, fallback => fallback
  | .inner _ k v l r, n, fallback =>
    match compare n l.size with
    | .lt => l.entryAtIdxD n fallback
    | .eq => ⟨k, v⟩
    | .gt => r.entryAtIdxD (n - l.size - 1) fallback

/-- Implementation detail of the tree map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variantb8842843d844c96357fb6fea8bfd57fad1c44897d732cfa59aa6e0abdd0fb5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variantb8842843d844c96357fb6fea8bfd57fad1c44897d732cfa59aa6e0abdd0fb5a4.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86baad146034ad0164cf7224f8747781c2e54f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
