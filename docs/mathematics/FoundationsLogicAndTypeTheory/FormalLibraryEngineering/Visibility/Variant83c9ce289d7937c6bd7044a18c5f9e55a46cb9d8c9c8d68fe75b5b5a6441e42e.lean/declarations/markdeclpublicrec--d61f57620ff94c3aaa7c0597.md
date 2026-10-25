# markDeclPublicRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4283457bdade57dcdeb1fb7cb8f1ff0fc009db4b63e3f837f0802d2f62d17e",
  "kind": "def",
  "lexical_name": "markDeclPublicRec",
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
  "slug": "markdeclpublicrec--d61f57620ff94c3aaa7c0597",
  "source": {
    "blob": "9cee0e368553e0945d87d6ae26c77fa7d04c0c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d61f57620ff94c3aaa7c0597e984a648c9d1573b54663561d799e592dec8e699",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4283457bdade57dcdeb1fb7cb8f1ff0fc009db4b63e3f837f0802d2f62d17e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def markDeclPublicRec (phase : Phase) (decl : Decl pu) : CompilerM Unit := do
  modifyEnv (setDeclPublic · decl.name)
  if (← shouldExportBody decl) then
    unless isDeclTransparent (← getEnv) phase decl.name do
      trace[Compiler.inferVisibility] m!"Marking {decl.name} as transparent because it is opaque and its body looks relevant"
      modifyEnv (setDeclTransparent · phase decl.name)
    decl.value.forCodeM fun code =>
      for ref in collectUsedDecls code do
        if let some refDecl ← getLocalDeclAt? ref phase then
          if !isDeclPublic (← getEnv) ref then
            trace[Compiler.inferVisibility] m!"Marking {ref} as opaque because it is used by transparent {decl.name}"
            markDeclPublicRec phase refDecl

/-- Checks whether references in the given declaration adhere to phase distinction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variant83c9ce289d7937c6bd7044a18c5f9e55a46cb9d8c9c8d68fe75b5b5a6441e42e.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cee0e368553e0945d87d6ae26c77fa7d04c0c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
