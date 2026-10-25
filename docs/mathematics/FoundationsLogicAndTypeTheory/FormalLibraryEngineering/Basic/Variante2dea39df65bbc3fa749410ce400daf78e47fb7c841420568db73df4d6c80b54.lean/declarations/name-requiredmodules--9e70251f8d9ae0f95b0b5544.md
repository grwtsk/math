# Name.requiredModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5190b122db63adf864646717eb5506775ed23dc3b66642142f1d53a901316dce",
  "kind": "def",
  "lexical_name": "Name.requiredModules",
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
  "slug": "name-requiredmodules--9e70251f8d9ae0f95b0b5544",
  "source": {
    "blob": "498269f375e51a869c0880c0504624880b357354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 427,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante2dea39df65bbc3fa749410ce400daf78e47fb7c841420568db73df4d6c80b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e70251f8d9ae0f95b0b55449a5fbcbae8e6590e97364ce8a8bc35c8326f5236",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante2dea39df65bbc3fa749410ce400daf78e47fb7c841420568db73df4d6c80b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5190b122db63adf864646717eb5506775ed23dc3b66642142f1d53a901316dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Name.requiredModules (n : Name) : CoreM NameSet := do
  let env ← getEnv
  let mut requiredModules : NameSet := {}
  let ci ← getConstInfo n
  for n in ci.getUsedConstants do
    match env.getModuleFor? n with
    | some m =>
      if ¬ (`Init).isPrefixOf m then
        requiredModules := requiredModules.insert m
    | none => pure ()
  return requiredModules

/--
Return the names of the modules in which constants used in the current file were defined.

Note that this will *not* account for tactics and syntax used in the file,
so the results may not suffice as imports.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante2dea39df65bbc3fa749410ce400daf78e47fb7c841420568db73df4d6c80b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante2dea39df65bbc3fa749410ce400daf78e47fb7c841420568db73df4d6c80b54.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498269f375e51a869c0880c0504624880b357354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
