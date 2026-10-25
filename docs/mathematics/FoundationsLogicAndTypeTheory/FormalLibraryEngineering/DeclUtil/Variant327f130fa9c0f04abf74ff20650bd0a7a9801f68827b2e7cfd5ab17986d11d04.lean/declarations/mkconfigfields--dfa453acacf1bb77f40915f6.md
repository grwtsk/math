# mkConfigFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30ade65b740c1c3def1b2fea48d31b04905b9665a783b2e8c6ffbc575be9cf83",
  "kind": "def",
  "lexical_name": "mkConfigFields",
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
  "slug": "mkconfigfields--dfa453acacf1bb77f40915f6",
  "source": {
    "blob": "f0b08b03d725c7f9e9f451c501dd5710f0da401d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant327f130fa9c0f04abf74ff20650bd0a7a9801f68827b2e7cfd5ab17986d11d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfa453acacf1bb77f40915f6895672fa673df3c759c36b919c00a54f83ac47af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant327f130fa9c0f04abf74ff20650bd0a7a9801f68827b2e7cfd5ab17986d11d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30ade65b740c1c3def1b2fea48d31b04905b9665a783b2e8c6ffbc575be9cf83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkConfigFields
  (tyName : Name) (infos : NameMap ConfigFieldInfo) (fs : Array DeclField)
: CommandElabM (TSyntax ``Term.structInstFields) := do
  let mut m := mkNameMap Field
  for x in fs do
    let `(declField| $id := $val) := x
      | throwErrorAt x "ill-formed field declaration syntax"
    let fieldName := id.getId
    addCompletionInfo <| .fieldId x fieldName {} tyName
    if let some info := infos.find? fieldName then
      let c := info.realName
      if !info.canonical && m.contains c then
        logWarningAt id m!"redefined field '{c}' ('{fieldName}' is an alias of '{c}')"
      m := m.insert c {ref := id, val}
    else
      logWarningAt id m!"unknown '{.ofConstName tyName}' field '{fieldName}'"
  let fs ← m.foldlM (init := #[]) fun a k {ref, val} => do
    let id := mkIdentFrom ref k true
    -- An unhygienic quotation is used to avoid introducing source info
    -- which will break field auto-completion.
    let fieldStx := Unhygienic.run `(Term.structInstField| $id:ident := $val)
    return a.push fieldStx
  return mkNode ``Term.structInstFields #[mkSep fs mkNullNode]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant327f130fa9c0f04abf74ff20650bd0a7a9801f68827b2e7cfd5ab17986d11d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variant327f130fa9c0f04abf74ff20650bd0a7a9801f68827b2e7cfd5ab17986d11d04.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b08b03d725c7f9e9f451c501dd5710f0da401d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
