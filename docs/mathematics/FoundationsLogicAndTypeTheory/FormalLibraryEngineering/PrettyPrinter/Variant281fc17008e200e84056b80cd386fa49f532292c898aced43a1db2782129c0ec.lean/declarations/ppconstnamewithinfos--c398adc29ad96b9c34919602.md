# ppConstNameWithInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23991cc7c6f2f6c6d3fe78a0642a46592b7cb4bd926f35ae2eb6815e7d8537e8",
  "kind": "def",
  "lexical_name": "ppConstNameWithInfos",
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
  "slug": "ppconstnamewithinfos--c398adc29ad96b9c34919602",
  "source": {
    "blob": "12fd970be0a0241cbb1d4729f4a65df27fb3e713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c398adc29ad96b9c34919602e1e7e7aa01dd9e2f95f82a3bf44b091b9c00f861",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23991cc7c6f2f6c6d3fe78a0642a46592b7cb4bd926f35ae2eb6815e7d8537e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ppConstNameWithInfos (constName : Name) : MetaM FormatWithInfos := do
  if let some info := (← getEnv).find? constName then
    let delab := withOptionAtCurrPos `pp.tagAppFns true <| delabConst
    PrettyPrinter.ppExprWithInfos (delab := delab) (.const constName <| info.levelParams.map mkLevelParam)
  else
    -- Still, let's sanitize the name.
    let stx := mkIdent constName
    let stx := (sanitizeSyntax stx).run' { options := (← getOptions) }
    formatCategory `term stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrettyPrinter/Variant281fc17008e200e84056b80cd386fa49f532292c898aced43a1db2782129c0ec.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12fd970be0a0241cbb1d4729f4a65df27fb3e713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
