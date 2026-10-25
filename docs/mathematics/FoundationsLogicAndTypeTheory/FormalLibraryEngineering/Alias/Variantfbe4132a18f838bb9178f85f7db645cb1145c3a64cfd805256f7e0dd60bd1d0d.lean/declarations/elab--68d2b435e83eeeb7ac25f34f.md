# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a135c706d42051d500448828a7b2b6afa1871fd99198c8bfeb116836732b30b",
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
  "slug": "elab--68d2b435e83eeeb7ac25f34f",
  "source": {
    "blob": "b3913b31b6e8a0ffa71c352cdb59b3df379b7f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68d2b435e83eeeb7ac25f34fa090e4477029b0de36361fbda56c2d8e29bc9b71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a135c706d42051d500448828a7b2b6afa1871fd99198c8bfeb116836732b30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := aliasLR) mods:declModifiers "alias "
    "⟨" aliasFwd:binderIdent ", " aliasRev:binderIdent "⟩" " := " name:ident : command => do
  Lean.withExporting (isExporting := (← Command.getScope).isPublic) do
  Command.liftTermElabM do
    -- The target of an iff alias is always a theorem, so resolve in non-exporting mode to
    -- support private theorem targets even when the aliases themselves are public.
    let name ← withoutExporting <| realizeGlobalConstNoOverloadWithInfo name
    let thm ← withoutExporting <| getConstInfo name
    let declMods ← elabModifiers mods
    let declMods := { declMods with attrs := (setDeprecatedTarget name declMods.attrs).1 }
    -- Now enter scope where we want to put the new decls
    Lean.withExporting (isExporting := declMods.isInferredPublic (← getEnv)) do
    if let `(binderIdent| $idFwd:ident) := aliasFwd then
      let (declName, _) ← mkDeclName (← getCurrNamespace) declMods idFwd.getId
      addSide true declName declMods thm
      addDeclarationRangesFromSyntax declName (← getRef) idFwd
      Term.addTermInfo' idFwd (← mkConstWithLevelParams declName) (isBinder := true)
    if let `(binderIdent| $idRev:ident) := aliasRev then
      let (declName, _) ← mkDeclName (← getCurrNamespace) declMods idRev.getId
      addSide false declName declMods thm
      addDeclarationRangesFromSyntax declName (← getRef) idRev
      Term.addTermInfo' idRev (← mkConstWithLevelParams declName) (isBinder := true)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variantfbe4132a18f838bb9178f85f7db645cb1145c3a64cfd805256f7e0dd60bd1d0d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3913b31b6e8a0ffa71c352cdb59b3df379b7f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
