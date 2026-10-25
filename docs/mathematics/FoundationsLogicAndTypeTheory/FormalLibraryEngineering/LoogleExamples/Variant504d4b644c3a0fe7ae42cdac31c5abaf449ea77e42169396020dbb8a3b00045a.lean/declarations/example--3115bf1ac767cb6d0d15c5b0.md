# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a915d1dcc0ca706062fb35c77df5b52f4277dca21529b3f87d7f987d98c0eaa3",
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
  "slug": "example--3115bf1ac767cb6d0d15c5b0",
  "source": {
    "blob": "ac737ad9c3495b64506aeb6a93e8e38ebbf0a7bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleExamples/Variant504d4b644c3a0fe7ae42cdac31c5abaf449ea77e42169396020dbb8a3b00045a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3115bf1ac767cb6d0d15c5b098c41ba0a53064ee20dc7f37806ef11394b825ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleExamples/Variant504d4b644c3a0fe7ae42cdac31c5abaf449ea77e42169396020dbb8a3b00045a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a915d1dcc0ca706062fb35c77df5b52f4277dca21529b3f87d7f987d98c0eaa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 3 ≤ 5 := by
  #loogle
  decide

#loogle Dist.dist, edist
-- example : 3 ≤ 5 := by
--   #loogle
--   decide

-- /-!
-- More examples to test comments do not interfere with the search or caching.
-- -/

-- #loogle ?a * _ < ?a * _ ↔ _
-- #loogle ?a * _ < ?a * _ ↔ _ /- foo -/
-- #loogle ?a * _ < ?a * _ ↔ _


-- comment
#loogle ?a * _ < ?a * _ ↔ _

/--
info: Loogle Search Results
  • #check Option.get! --  {α : Type u} [Inhabited α] : Option α → α
    Extracts the value from an `Option`, panicking on `none`.
-/
#guard_msgs in
  #loogle Option ?a → ?a, "get!"

/- hello -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleExamples/Variant504d4b644c3a0fe7ae42cdac31c5abaf449ea77e42169396020dbb8a3b00045a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleExamples/Variant504d4b644c3a0fe7ae42cdac31c5abaf449ea77e42169396020dbb8a3b00045a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac737ad9c3495b64506aeb6a93e8e38ebbf0a7bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
