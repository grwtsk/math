# docPrimeLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75c97a12e0cfe3988f3ca8d8955892d7e18d9d9f53de24e5f972887e9d8bc478",
  "kind": "def",
  "lexical_name": "docPrimeLinter",
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
  "slug": "docprimelinter--12191766a594922cb43dfa1a",
  "source": {
    "blob": "2ccd4de91802f1c0b3cd285166a801a2824e104a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocPrime/Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12191766a594922cb43dfa1ac0a9e89a47ace915788510b931aec27e9c27fb73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocPrime/Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75c97a12e0cfe3988f3ca8d8955892d7e18d9d9f53de24e5f972887e9d8bc478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def docPrimeLinter : Linter where run := withSetOptionIn fun stx ↦ do
  unless Linter.getLinterValue linter.docPrime (← getOptions) do
    return
  if (← get).messages.hasErrors then
    return
  unless [``Lean.Parser.Command.declaration, `lemma].contains stx.getKind do return
  -- ignore private declarations
  if (stx.find? (·.isOfKind ``Lean.Parser.Command.private)).isSome then return
  -- ignore examples
  if (stx.find? (·.isOfKind ``Lean.Parser.Command.example)).isSome then return
  let docstring := stx[0][0]
  -- The current declaration's id, possibly followed by a list of universe names.
  let declId :=
    if stx[1].isOfKind ``Lean.Parser.Command.instance then
      stx[1][3][0]
    else
      stx[1][1]
  if let .missing := declId then return
  -- The name of the current declaration, with namespaces resolved.
  let declName : Name :=
    if let `_root_ :: rest := declId[0].getId.components then
      rest.foldl (· ++ ·) default
    else (← getCurrNamespace) ++ declId[0].getId
  let msg := m!"`{declName}` is missing a doc-string, please add one.\n\
      Declarations whose name ends with a `'` are expected to contain an explanation for the \
      presence of a `'` in their doc-string. This may consist of discussion of the difference \
      relative to the unprimed version, or an explanation as to why no better naming scheme \
      is possible."
  if docstring[0][1].getAtomVal.isEmpty && declName.toString.back == '\'' then
    if ← System.FilePath.pathExists "scripts/nolints_prime_decls.txt" then
      if (← IO.FS.lines "scripts/nolints_prime_decls.txt").contains declName.toString then
        return
      else
        Linter.logLint linter.docPrime declId msg
    else
      Linter.logLint linter.docPrime declId msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocPrime/Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocPrime/Variant2e33c9171ab2ec25f5c2e3a6974f947fbea3f42a4be3caa20cf767f3bfd03ef4.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ccd4de91802f1c0b3cd285166a801a2824e104a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
