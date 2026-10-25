# mergeWithM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8ff24a5d83e4dd3308e291b4f1392f33fc5e31c3dfbc921cd8ce84460544a7a",
  "kind": "def",
  "lexical_name": "mergeWithM",
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
  "slug": "mergewithm--a15fa76ba6c6469f58985cb4",
  "source": {
    "blob": "4122f193b42541f7e4e5d059e30364739bee411e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a15fa76ba6c6469f58985cb4f4a45b3f2f672c7bc223a89bebee0005f96c58da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8ff24a5d83e4dd3308e291b4f1392f33fc5e31c3dfbc921cd8ce84460544a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeWithM [Monad m] (self other : PersistentHashMap α β)
    (f : α → β → β → m β) : m (PersistentHashMap α β) :=
  other.foldlM (init := self) fun map k v₂ =>
    match map.find? k with
    | none => return map.insert k v₂
    | some v₁ => return map.insert k (← f k v₁ v₂)

/--
Merge two `PersistentHashMap`s. The values of keys which appear in both maps are
combined using `f`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant2809b200db1de606cd46667d9d884c96d3b0b8f6744635d0e9f4bc6f5526d512.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4122f193b42541f7e4e5d059e30364739bee411e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
