# linter.toAdditiveExisting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60430519cab1e5140d48c08f31214673115b504581d57c51d7ddfaf61ea76dbb",
  "kind": "register_option",
  "lexical_name": "linter.toAdditiveExisting",
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
  "slug": "linter-toadditiveexisting--38418e0ccae1205a8331a845",
  "source": {
    "blob": "7854d85a34a624442418891036ea1a7749a86071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38418e0ccae1205a8331a845ad12b6cf6100fe086d9ac1d118b4ef3f2cda80e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60430519cab1e5140d48c08f31214673115b504581d57c51d7ddfaf61ea76dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.toAdditiveExisting : Bool := {
  defValue := true
  descr := "Linter used by `@[to_additive]` that checks whether the user correctly specified that
    the additive declaration already exists" }


/--
An attribute that tells `@[to_additive]` that certain arguments of this definition are not
involved when using `@[to_additive]`.
This helps the heuristic of `@[to_additive]` by also transforming definitions if `ℕ` or another
fixed type occurs as one of these arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variantc459c1cdc9c361729a2c636ac9bc723b0c92c9b4c2290591f9eba916ab19e301.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854d85a34a624442418891036ea1a7749a86071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
