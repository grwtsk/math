# toStringWithToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cf8eda315740d7da0dec07140ac1aae1774a50ea107a0c00cec4e7d61a706bf",
  "kind": "def",
  "lexical_name": "toStringWithToken",
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
  "slug": "tostringwithtoken--f16054ea1f3ff91cbfa725fc",
  "source": {
    "blob": "3495478f2a130107d07afac424a31487dfe5021b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f16054ea1f3ff91cbfa725fc3e35ace8212a51ff5d6cb35bc424f9206f98221a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cf8eda315740d7da0dec07140ac1aae1774a50ea107a0c00cec4e7d61a706bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStringWithToken (n : Name) (escape := true) (isToken : String → Bool) : String :=
  -- never escape "prettified" inaccessible names or macro scopes or pseudo-syntax introduced by the delaborator
  toStringWithSep "." (escape && !n.isInaccessibleUserName && !n.hasMacroScopes && !maybePseudoSyntax) n isToken
where
  maybePseudoSyntax :=
    if n == `_ then
      -- output hole as is
      true
    else if let .str _ s := n.getRoot then
      -- could be pseudo-syntax for loose bvar or universe mvar, output as is
      "#".isPrefixOf s || "?".isPrefixOf s
    else
      false

/--
Converts a name to a string.

- If `escape` is `true`, then escapes name components using `«` and `»` to ensure that
  those names that can appear in source files round trip.
  Names with number components, anonymous names, and names containing `»` might not round trip.
  Furthermore, "pseudo-syntax" produced by the delaborator, such as `_`, `#0` or `?u`, is not escaped.
-/
-- If you change this, also change the corresponding function in `Init.Meta`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant42d30e6a2c249164b02cf8bc5d595dec698efc1906b5a1c1496e65064968500f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3495478f2a130107d07afac424a31487dfe5021b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
