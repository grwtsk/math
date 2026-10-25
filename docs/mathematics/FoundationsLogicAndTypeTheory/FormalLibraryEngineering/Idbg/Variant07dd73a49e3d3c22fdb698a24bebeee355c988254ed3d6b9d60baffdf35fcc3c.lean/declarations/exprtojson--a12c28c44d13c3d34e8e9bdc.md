# exprToJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa4c7579475020311d949459dd98c8bf686b31bbd16b0e2f73e0129638c85be2",
  "kind": "def",
  "lexical_name": "exprToJson",
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
  "slug": "exprtojson--a12c28c44d13c3d34e8e9bdc",
  "source": {
    "blob": "f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a12c28c44d13c3d34e8e9bdcc3261dc74bdb469619f56cf80979db785c073ca8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa4c7579475020311d949459dd98c8bf686b31bbd16b0e2f73e0129638c85be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exprToJson : Expr → Json
  | .bvar i          => Json.mkObj [("bvar", i)]
  | .fvar id         => Json.mkObj [("fvar", nameToJson id.name)]
  | .mvar id         => Json.mkObj [("mvar", nameToJson id.name)]
  | .sort l          => Json.mkObj [("sort", levelToJson l)]
  | .const n ls      => Json.mkObj [("const", nameToJson n), ("levels", Json.arr (ls.toArray.map levelToJson))]
  | .app fn arg      => Json.mkObj [("app", Json.arr #[exprToJson fn, exprToJson arg])]
  | .lam n ty b bi   => Json.mkObj [("lam", Json.mkObj [("name", nameToJson n), ("type", exprToJson ty), ("body", exprToJson b), ("bi", binderInfoToJson bi)])]
  | .forallE n ty b bi => Json.mkObj [("forallE", Json.mkObj [("name", nameToJson n), ("type", exprToJson ty), ("body", exprToJson b), ("bi", binderInfoToJson bi)])]
  | .letE n ty v b nd => Json.mkObj [("letE", Json.mkObj [("name", nameToJson n), ("type", exprToJson ty), ("value", exprToJson v), ("body", exprToJson b), ("nondep", nd)])]
  | .lit l           => Json.mkObj [("lit", literalToJson l)]
  | .mdata _ e       => exprToJson e  -- strip metadata
  | .proj tn i s     => Json.mkObj [("proj", Json.mkObj [("typeName", nameToJson tn), ("idx", i), ("struct", exprToJson s)])]

/-- Deserialize `Expr` from JSON. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Idbg/Variant07dd73a49e3d3c22fdb698a24bebeee355c988254ed3d6b9d60baffdf35fcc3c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4f46d18b503e3f9aefdc19d94f6e99fe1a9fc17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
