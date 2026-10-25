# resolveDottedAtomicNameForConstNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dd48a325e554583c224b59a7e613efa19a3ca9064aa27ba0a97cecaf0880c8e",
  "kind": "def",
  "lexical_name": "resolveDottedAtomicNameForConstNamespace",
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
  "slug": "resolvedottedatomicnameforconstnamespace--8c481a0d5a3a560fa6876cd4",
  "source": {
    "blob": "11131bfe0ebc0f075c61ea696337c31521169738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c481a0d5a3a560fa6876cd40933f0724f7444a3d0e87878a31703cf95c0d179",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dd48a325e554583c224b59a7e613efa19a3ca9064aa27ba0a97cecaf0880c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resolveDottedAtomicNameForConstNamespace (c : Name) (id : Ident) : TermElabM String := do
  let n := id.getId.eraseMacroScopes
  if let Name.str Name.anonymous s := n then
    addCompletionInfo <| CompletionInfo.dotId id n {} (← mkConstWithLevelParams c)
    let n' := Name.str c s
    if (← getEnv).contains n' then
      if (← getInfoState).enabled then
        addConstInfo id n'
      return s
    else
      resolveAtomicNameForConstNamespace c (mkIdentFrom id n')
  else
    throwUnsupportedSyntax

/--
Wrapper to handle atomic identifiers and dotted identifiers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalTerm/Variant4bb62268647fdc798a033cbafaf3c9652ea4c226aa446f51688f4ce362e53e68.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11131bfe0ebc0f075c61ea696337c31521169738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
