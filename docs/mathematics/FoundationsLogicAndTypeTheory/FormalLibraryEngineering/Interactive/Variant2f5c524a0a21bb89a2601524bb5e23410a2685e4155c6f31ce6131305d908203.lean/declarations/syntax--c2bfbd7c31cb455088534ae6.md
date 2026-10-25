# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70e354fb99b024dfa41e48886b78341b35ae83143a9ead5fd47a2e429b349a88",
  "kind": "syntax",
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
  "slug": "syntax--c2bfbd7c31cb455088534ae6",
  "source": {
    "blob": "b90ab028280817778635089dcd72757b100d24c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interactive/Variant2f5c524a0a21bb89a2601524bb5e23410a2685e4155c6f31ce6131305d908203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2bfbd7c31cb455088534ae6299b1547f8518f55d9506231bbaa96913fc34a87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interactive/Variant2f5c524a0a21bb89a2601524bb5e23410a2685e4155c6f31ce6131305d908203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70e354fb99b024dfa41e48886b78341b35ae83143a9ead5fd47a2e429b349a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax grindParam    := grindErase <|> grindLemmaMin <|> grindLemma <|> anchor

namespace Grind
declare_syntax_cat grind_filter (behavior := both)

syntax:max ident : grind_filter
syntax:max &"gen" " < "  num  : grind_filter
syntax:max &"gen" " = "  num  : grind_filter
syntax:max &"gen" " != " num  : grind_filter
syntax:max &"gen" " ≤ "  num  : grind_filter
syntax:max &"gen" " <= " num  : grind_filter
syntax:max &"gen" " > "  num  : grind_filter
syntax:max &"gen" " ≥ "  num  : grind_filter
syntax:max &"gen" " >= " num  : grind_filter
syntax:max "(" grind_filter ")" : grind_filter
syntax:35 grind_filter:35 " && " grind_filter:36 : grind_filter
syntax:35 grind_filter:35 " || " grind_filter:36 : grind_filter
syntax:max "!" grind_filter:40 : grind_filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interactive/Variant2f5c524a0a21bb89a2601524bb5e23410a2685e4155c6f31ce6131305d908203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interactive/Variant2f5c524a0a21bb89a2601524bb5e23410a2685e4155c6f31ce6131305d908203.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90ab028280817778635089dcd72757b100d24c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
