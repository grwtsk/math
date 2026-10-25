# doubleUnderscore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:948563e7e3f4debfb639c5093ef0bfa34d7e78e544ffc38b4b62143aa8ea716a",
  "kind": "def",
  "lexical_name": "doubleUnderscore",
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
  "slug": "doubleunderscore--40d9b4ca6daf5845b1aa2271",
  "source": {
    "blob": "6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40d9b4ca6daf5845b1aa22710d929bae8cb2690c9c56202a0f26f3a86b31a074",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:948563e7e3f4debfb639c5093ef0bfa34d7e78e544ffc38b4b62143aa8ea716a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doubleUnderscore: Linter where run := withSetOptionIn fun stx => do
    unless Linter.getLinterValue linter.style.nameCheck (← getOptions) do
      return
    if (← get).messages.hasErrors then
      return
    let mut aliases := #[]
    if let some exp := stx.find? (·.isOfKind `Lean.Parser.Command.export) then
      aliases ← getAliasSyntax exp
    for id in aliases.push ((stx.find? (·.isOfKind ``declId)).getD default)[0] do
      let declName := id.getId
      if id.getPos? == some default then continue
      if declName.hasMacroScopes then continue
      if id.getKind == `ident then
        -- Check whether the declaration name contains "__".
        if 1 < (declName.toString.splitOn "__").length then
          Linter.logLint linter.style.nameCheck id
            m!"The declaration '{id}' contains '__', which does not follow the mathlib naming \
              conventions. Consider using single underscores instead."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
