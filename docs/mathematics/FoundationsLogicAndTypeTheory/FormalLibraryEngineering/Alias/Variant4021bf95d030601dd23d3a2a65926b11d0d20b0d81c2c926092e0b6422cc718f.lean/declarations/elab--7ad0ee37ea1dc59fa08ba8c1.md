# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe493eb98ec2ccf62f6cda5ae38ba184bc3b0dc93c8435ba6f30d1bc2ef6ff9d",
  "kind": "elab",
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
  "slug": "elab--7ad0ee37ea1dc59fa08ba8c1",
  "source": {
    "blob": "4a9d6e9af8ad5ad5fcd64f901ea5208956684855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 172,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ad0ee37ea1dc59fa08ba8c163077bd1851d969d75cdd145eb57a8868283e0ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe493eb98ec2ccf62f6cda5ae38ba184bc3b0dc93c8435ba6f30d1bc2ef6ff9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := aliasLR) mods:declModifiers "alias "
    "⟨" aliasFwd:binderIdent ", " aliasRev:binderIdent "⟩" " := " name:ident : command =>
  Command.liftTermElabM do
    let name ← resolveGlobalConstNoOverloadWithInfo name
    let declMods ← elabModifiers mods
    let declMods := { declMods with attrs := (setDeprecatedTarget name declMods.attrs).1 }
    let .thmInfo thm ← getConstInfo name | throwError "Target must be a theorem"
    if let `(binderIdent| $idFwd:ident) := aliasFwd then
      let (declName, _) ← mkDeclName (← getCurrNamespace) declMods idFwd.getId
      addSide true declName declMods thm
      Lean.addDeclarationRanges declName {
        range := ← getDeclarationRange (← getRef)
        selectionRange := ← getDeclarationRange idFwd
      }
      Term.addTermInfo' idFwd (← mkConstWithLevelParams declName) (isBinder := true)
    if let `(binderIdent| $idRev:ident) := aliasRev then
      let (declName, _) ← mkDeclName (← getCurrNamespace) declMods idRev.getId
      addSide false declName declMods thm
      Lean.addDeclarationRanges declName {
        range := ← getDeclarationRange (← getRef)
        selectionRange := ← getDeclarationRange idRev
      }
      Term.addTermInfo' idRev (← mkConstWithLevelParams declName) (isBinder := true)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a9d6e9af8ad5ad5fcd64f901ea5208956684855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
