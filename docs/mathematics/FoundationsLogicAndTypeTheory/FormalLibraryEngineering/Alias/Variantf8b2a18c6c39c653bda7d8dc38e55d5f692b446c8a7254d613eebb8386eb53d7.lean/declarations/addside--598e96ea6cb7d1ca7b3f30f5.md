# addSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7a25f67da707921d5755641e1c670e3a885fccb87a7125df2d33d3216922c18",
  "kind": "def",
  "lexical_name": "addSide",
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
  "slug": "addside--598e96ea6cb7d1ca7b3f30f5",
  "source": {
    "blob": "2ef7bd902bc7035ae4805293ea5485c7aa581ebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:598e96ea6cb7d1ca7b3f30f5d4fe1ab327c5d6fc7f1e6295f10015941080b285",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7a25f67da707921d5755641e1c670e3a885fccb87a7125df2d33d3216922c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addSide (mp : Bool) (declName : Name) (declMods : Modifiers) (thm : ConstantInfo) :
    TermElabM Unit := do
  checkNotAlreadyDeclared declName
  let value ← mkIffMpApp mp thm.type (mkConst thm.name (thm.levelParams.map mkLevelParam))
  let type ← Meta.inferType value
  addDecl <| Declaration.thmDecl {
    name := declName
    value := value
    type := type
    levelParams := thm.levelParams
  }
  if let some doc := declMods.docString? then
    addDocString declName (mkNullNode #[]) doc
  let info := if mp then AliasInfo.forward thm.name else AliasInfo.reverse thm.name
  setAliasInfo info declName
  Term.applyAttributes declName declMods.attrs
  addAliasDocstring declName info

@[inherit_doc «alias»]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantf8b2a18c6c39c653bda7d8dc38e55d5f692b446c8a7254d613eebb8386eb53d7.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef7bd902bc7035ae4805293ea5485c7aa581ebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
