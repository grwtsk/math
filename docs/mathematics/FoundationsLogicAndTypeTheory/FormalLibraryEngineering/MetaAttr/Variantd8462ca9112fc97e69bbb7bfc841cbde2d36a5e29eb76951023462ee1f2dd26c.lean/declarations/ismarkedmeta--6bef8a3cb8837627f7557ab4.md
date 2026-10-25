# isMarkedMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef27f0703d52b8a26559fb0ec12828b3d82e405a73113a52b1e03981c9b3c1c2",
  "kind": "def",
  "lexical_name": "isMarkedMeta",
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
  "slug": "ismarkedmeta--6bef8a3cb8837627f7557ab4",
  "source": {
    "blob": "afe5649175cdf08d2dec870797b69bf93fec8a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bef8a3cb8837627f7557ab417cc52f7db95092c255ef56debe5757ef7d7cca3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef27f0703d52b8a26559fb0ec12828b3d82e405a73113a52b1e03981c9b3c1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isMarkedMeta (env : Environment) (declName : Name) : Bool :=
  metaExt.isTagged env declName

/--
Set of IR decls that should be made available to any importer. This is a superset of `metaExt`
(except for non-defs such as `meta structure`), which is managed by the elaborator and has a
different async mode. More precisely, it contains the closure of `metaExt` as well as further
derived decls such as `_boxed` versions. We store this set primarily to filter exports in
`declMapExt`; we persist it in `.olean.private` for the benefit of `shake`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaAttr/Variantd8462ca9112fc97e69bbb7bfc841cbde2d36a5e29eb76951023462ee1f2dd26c.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe5649175cdf08d2dec870797b69bf93fec8a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
