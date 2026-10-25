# addSide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f518d88e59d57ffe36fbaa256257419bf8fbfe72e0d32151e25cf946cee7caa0",
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
  "slug": "addside--d7acee17ee8cdef501aa161c",
  "source": {
    "blob": "87bbf2aba4295b65bf356d235f90be173a08e000",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7acee17ee8cdef501aa161c5dcacae25dcac8514d78fdf04f6b4424ca68de63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f518d88e59d57ffe36fbaa256257419bf8fbfe72e0d32151e25cf946cee7caa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def addSide (mp : Bool) (declName : Name) (declMods : Modifiers) (thm : TheoremVal) :
    TermElabM Unit := do
  checkNotAlreadyDeclared declName
  let value ← mkIffMpApp mp thm.type thm.value
  let type ← Meta.inferType value
  addDecl <| Declaration.thmDecl { thm with
    name := declName
    value := value
    type := type
  }
  addDocString' declName declMods.docString?
  Term.applyAttributes declName declMods.attrs
  let info := match ← getAliasInfo thm.name with
    | some (.plain name) => if mp then AliasInfo.forward name else AliasInfo.reverse name
    | _ => if mp then AliasInfo.forward thm.name else AliasInfo.reverse thm.name
  setAliasInfo info declName
  /- alias doesn't trigger the missing docs linter so we add a default. We can't just check
    `declMods` because a docstring may have been added by an attribute. -/
  if (← findDocString? (← getEnv) declName).isNone then
    let mut doc := info.toString
    if let some origDoc ← findDocString? (← getEnv) thm.name then
      doc := s!"{doc}\n\n---\n\n{origDoc}"
    addDocString declName doc

@[inherit_doc «alias»]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant30a9ddd45f3e4bbed4363ba6840b284f94bc8acd25e1f0c58d273cfb3837d2bf.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87bbf2aba4295b65bf356d235f90be173a08e000` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
