# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed332a6a7816413748abaad0d12564b8d48492ab058a10113879fd1936827bc5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--66c9d0fc7fc9059c931b091b",
  "source": {
    "blob": "f8d05910dab89c89ab8c912550005ca68d341504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c9d0fc7fc9059c931b091bb8500834963e082a287d2ebbdf28705cc0ef875f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed332a6a7816413748abaad0d12564b8d48492ab058a10113879fd1936827bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 1 + 1 = 2 := foo1
/-- warning: `A.foo2` has been deprecated: Use `A.foo` instead -/
#guard_msgs in example : 1 + 1 = 2 := foo2
/--
warning: `B.foo3` has been deprecated: Use `A.foo2` instead

Note: The updated constant is in a different namespace. Dot notation may need to be changed (e.g., from `x.foo3` to `foo2 x`).
-/
#guard_msgs in example : 1 + 1 = 2 := B.foo3
/-- warning: `A.foo4` has been deprecated: it was never a good idea anyway -/
#guard_msgs in example : 1 + 1 = 2 := foo4

/-- doc string for bar -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d05910dab89c89ab8c912550005ca68d341504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
