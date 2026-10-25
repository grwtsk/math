# hashCommandLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3e689c331324b1fd0061a6f127d657c4d6b6dc11336ce77120dc47deed36569",
  "kind": "def",
  "lexical_name": "hashCommandLinter",
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
  "slug": "hashcommandlinter--1173df7f8a118dac40ef0dbe",
  "source": {
    "blob": "4d72a97d1ee18eb3c200b258c94f31a6095ee14e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1173df7f8a118dac40ef0dbef9daa758043536e718e82b46e08967ffd6a85aa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3e689c331324b1fd0061a6f127d657c4d6b6dc11336ce77120dc47deed36569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hashCommandLinter : Linter where run := withSetOptionIn' fun stx => do
  if Linter.getLinterValue linter.hashCommand (← getOptions) &&
    ((← get).messages.reportedPlusUnreported.isEmpty || warningAsError.get (← getOptions))
  then
    if let some sa := stx.getHead? then
      let a := sa.getAtomVal
      if (a.get ⟨0⟩ == '#' && ! allowed_commands.contains a) then
        let msg := m!"`#`-commands, such as '{a}', are not allowed in 'Mathlib'"
        if warningAsError.get (← getOptions) then
          logInfoAt sa (msg ++ " [linter.hashCommand]")
        else Linter.logLint linter.hashCommand sa msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashCommandLinter/Variant7318e565a294f1117a3c5316ac02e494c834243f7f559d4df367ebead949964d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d72a97d1ee18eb3c200b258c94f31a6095ee14e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
