# getDeclarationSelectionRef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04acbaaba0903f304202b6eb2f223626a6f9a92651268fe8420937f2ecb84b96",
  "kind": "def",
  "lexical_name": "getDeclarationSelectionRef",
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
  "slug": "getdeclarationselectionref--9f331ccb18538a7486bc6387",
  "source": {
    "blob": "9d975cf3e6b05fffb1c85d0788ffe803020599b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationRange/Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f331ccb18538a7486bc6387008226bab81c60986cbda3a50fc626af5df832fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationRange/Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04acbaaba0903f304202b6eb2f223626a6f9a92651268fe8420937f2ecb84b96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDeclarationSelectionRef (stx : Syntax) : Syntax :=
  if stx.isOfKind ``Lean.Parser.Command.instance then
    -- must skip `attrKind` and `optPrio` for `instance`
    if !stx[3].isNone then
      stx[3][0]
    else
      stx[1]
  else
    if stx[1][0].isIdent then
      stx[1][0]  -- `declId`
    else if stx[1].isIdent then
      stx[1]  -- raw `ident`
    else
      stx[0]

/--
Derives and adds declaration ranges from given syntax trees. If `rangeStx` does not have a range,
nothing is added. If `selectionRangeStx` does not have a range, it is defaulted to that of
`rangeStx`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationRange/Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationRange/Variant1f64c536bc0ea33d0cf664cad37ff89d91edb516776624af0557764cb1079437.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d975cf3e6b05fffb1c85d0788ffe803020599b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
