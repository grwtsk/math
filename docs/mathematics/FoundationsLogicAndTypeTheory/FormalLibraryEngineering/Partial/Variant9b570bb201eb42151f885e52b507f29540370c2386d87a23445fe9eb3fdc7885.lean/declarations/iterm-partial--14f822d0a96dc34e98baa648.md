# IterM.Partial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07074c1c2029920853f8fc552b784c3931ffe7603e8f1074648fce74d6a551d2",
  "kind": "structure",
  "lexical_name": "IterM.Partial",
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
  "slug": "iterm-partial--14f822d0a96dc34e98baa648",
  "source": {
    "blob": "ab284a81813c0d47ec47e86c25c61e5f2aef045c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Partial/Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f822d0a96dc34e98baa648aa5dcd967aeed3859774ebc6dbb84132073cb934",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Partial/Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07074c1c2029920853f8fc552b784c3931ffe7603e8f1074648fce74d6a551d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IterM.Partial {α : Type w} (m : Type w → Type w') (β : Type w) where
  /--
  The wrapped iterator, which was wrapped by `IterM.allowNontermination`.
  -/
  it : IterM (α := α) m β

/--
For an iterator `it`, `it.allowNontermination` provides potentially nonterminating variants of
consumers such as `toList`. They can be used without any proof of termination such as `Finite`
or `Productive`, but as they are implemented with the `partial` declaration modifier, they are
opaque for the kernel and it is impossible to prove anything about them.
-/
@[always_inline, inline, deprecated "The consumers on iterators do not require proofs of termination anymore. For example, use `it.toList` instead of `it.allowNontermination.toList`." (since := "2026-01-28")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Partial/Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Partial/Variant9b570bb201eb42151f885e52b507f29540370c2386d87a23445fe9eb3fdc7885.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab284a81813c0d47ec47e86c25c61e5f2aef045c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
