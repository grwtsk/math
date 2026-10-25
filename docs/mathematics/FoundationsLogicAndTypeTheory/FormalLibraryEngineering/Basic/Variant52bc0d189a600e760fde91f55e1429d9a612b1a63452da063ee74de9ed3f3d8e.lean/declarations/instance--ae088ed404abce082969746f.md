# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a820c7723c2be5b9ec4ac0b404e3598834d425fdec39a70b47eaf856bbe7d8a",
  "kind": "instance",
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
  "slug": "instance--ae088ed404abce082969746f",
  "source": {
    "blob": "3825f827390f270667bcd7bdc0b5f9c353867a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1642,
    "line": 1625,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae088ed404abce082969746faa3a1e1ef9449b4b33e7dbf087d476a2cda01016",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a820c7723c2be5b9ec4ac0b404e3598834d425fdec39a70b47eaf856bbe7d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1625–1642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Inhabited PrattParsingTables where
  default := {}

/--
Specifies how the parsing table lookup function behaves for identifiers.

The function `Lean.Parser.prattParser` uses two tables: one each for leading and trailing parsers.
These tables map tokens to parsers. Because keyword tokens are distinct from identifier tokens,
keywords and identifiers cannot be confused, even when they are syntactically identical.
Specifying an alternative leading identifier behavior allows greater flexibility and makes it
possible to avoid reserved keywords in some situations.

When the leading token is syntactically an identifier, the current syntax category's
`LeadingIdentBehavior` specifies how the parsing table lookup function behaves, and allows
controlled “punning” between identifiers and keywords. This feature is used to avoid creating a
reserved symbol for each built-in tactic (e.g., `apply` or `assumption`). As a result, tactic names
can be used as identifiers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant52bc0d189a600e760fde91f55e1429d9a612b1a63452da063ee74de9ed3f3d8e.lean#L1625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3825f827390f270667bcd7bdc0b5f9c353867a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
