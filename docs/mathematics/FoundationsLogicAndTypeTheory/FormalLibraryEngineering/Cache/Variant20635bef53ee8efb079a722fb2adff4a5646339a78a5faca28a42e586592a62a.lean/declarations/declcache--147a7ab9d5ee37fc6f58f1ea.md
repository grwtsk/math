# DeclCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1477592f89ee8b24119e7c554765c71220da54576d96f2cec511aabd7a4dc9ca",
  "kind": "structure",
  "lexical_name": "DeclCache",
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
  "slug": "declcache--147a7ab9d5ee37fc6f58f1ea",
  "source": {
    "blob": "c42e6e5e73d8a81d769cbbe0659f134adb1ac63d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147a7ab9d5ee37fc6f58f1eacb1e094ba384742a8f09cacbc50f5e3087f8a4ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1477592f89ee8b24119e7c554765c71220da54576d96f2cec511aabd7a4dc9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeclCache (α : Type) where mk' ::
  /-- The cached data. -/
  cache : Cache α
  /-- Function for adding a declaration from the current file to the cache. -/
  addDecl : Name → ConstantInfo → α → MetaM α
  /-- Function for adding a declaration from the library to the cache.
  Defaults to the same behaviour as adding a declaration from the current file. -/
  addLibraryDecl : Name → ConstantInfo → α → MetaM α := addDecl
  deriving Nonempty

/--
Creates a `DeclCache`.

First, if `pre` is nonempty, run that for a value,
and if successful populate the cache with that value.

If `pre` is empty, or it fails,
the cached structure `α` is initialized with `empty`,
and then `addLibraryDecl` is called for every imported constant.
After all imported constants have been added, we run `post`.
Finally, the result is cached.

When `get` is called, `addDecl` is also called for every constant in the current file.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant20635bef53ee8efb079a722fb2adff4a5646339a78a5faca28a42e586592a62a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c42e6e5e73d8a81d769cbbe0659f134adb1ac63d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
