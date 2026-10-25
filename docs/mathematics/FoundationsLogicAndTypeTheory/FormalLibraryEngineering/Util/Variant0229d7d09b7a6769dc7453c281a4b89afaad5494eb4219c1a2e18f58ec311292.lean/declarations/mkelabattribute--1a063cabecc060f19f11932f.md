# mkElabAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99fef83457459e5390dd0deb8819df577aad6f51d6a80e023e2613d7e31458da",
  "kind": "def",
  "lexical_name": "mkElabAttribute",
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
  "slug": "mkelabattribute--1a063cabecc060f19f11932f",
  "source": {
    "blob": "788fd795259e07aa11a895de0cdd12482cfde37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a063cabecc060f19f11932f03f3cdcb9537bc86289879c6cc3eff80eba6efb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99fef83457459e5390dd0deb8819df577aad6f51d6a80e023e2613d7e31458da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def mkElabAttribute (γ) (attrBuiltinName attrName : Name) (parserNamespace : Name) (typeName : Name) (kind : String)
    (attrDeclName : Name := by exact decl_name%) : IO (KeyedDeclsAttribute γ) :=
  KeyedDeclsAttribute.init {
    builtinName   := attrBuiltinName
    name          := attrName
    descr         := kind ++ " elaborator"
    valueTypeName := typeName
    evalKey       := fun _ stx => do
      let kind ← syntaxNodeKindOfAttrParam parserNamespace stx
      /- Recall that a `SyntaxNodeKind` is often the name of the parser, but this is not always true, and we must check it. -/
      if (← getEnv).contains kind then
        recordExtraModUseFromDecl (isMeta := false) kind
        if (← getInfoState).enabled then
          addConstInfo stx[1] kind none
      return kind
    onAdded       := fun builtin declName kind => do
      if builtin then
        declareBuiltinDocStringAndRanges declName
  } attrDeclName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788fd795259e07aa11a895de0cdd12482cfde37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
