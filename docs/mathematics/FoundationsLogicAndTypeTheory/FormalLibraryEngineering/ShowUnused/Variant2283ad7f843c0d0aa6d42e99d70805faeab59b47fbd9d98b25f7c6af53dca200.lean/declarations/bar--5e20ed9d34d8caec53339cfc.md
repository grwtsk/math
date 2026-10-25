# bar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93738c7f04eb93d8a2755cc7c923c25edd3b682f62b3e1379f9d38888ef14ebe",
  "kind": "def",
  "lexical_name": "bar",
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
  "slug": "bar--5e20ed9d34d8caec53339cfc",
  "source": {
    "blob": "2a58568e2fb9a27cf3037ac6646f5d8e5b339e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 5,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e20ed9d34d8caec53339cfc9577dccff63848548409f4c1ec3f86e4c35b1a6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93738c7f04eb93d8a2755cc7c923c25edd3b682f62b3e1379f9d38888ef14ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bar := foo

/--
warning: #show_unused (line 14) says:
baz is not used transitively by [bar]
---
warning: unused definitions in this file:
baz
-/
#guard_msgs in #show_unused bar
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200.lean#L5).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a58568e2fb9a27cf3037ac6646f5d8e5b339e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
