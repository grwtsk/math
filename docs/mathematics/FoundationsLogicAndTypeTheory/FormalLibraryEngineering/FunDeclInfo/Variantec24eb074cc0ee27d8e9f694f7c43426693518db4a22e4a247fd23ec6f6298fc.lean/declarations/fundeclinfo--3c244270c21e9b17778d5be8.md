# FunDeclInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7146f85952c6baba58ee5d44b1b0ce88eb966f6db932934fe691ad81eba536cb",
  "kind": "inductive",
  "lexical_name": "FunDeclInfo",
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
  "slug": "fundeclinfo--3c244270c21e9b17778d5be8",
  "source": {
    "blob": "86f65f77e7686c5a8040ead7e1689df80014fdc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c244270c21e9b17778d5be872e9026f41f933e2aceaf0ab82ff1e79f1e60f5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7146f85952c6baba58ee5d44b1b0ce88eb966f6db932934fe691ad81eba536cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FunDeclInfo where
  /--
  Local function is applied once, and must be inlined.
  -/
  | once
  /--
  Local function is applied many times or occur as an argument of another function,
  and will only be inlined if it is small.
  -/
  | many
  /--
  Function must be inlined.
  -/
  | mustInline
  deriving Repr, Inhabited

/--
Local function declaration statistics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f65f77e7686c5a8040ead7e1689df80014fdc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
