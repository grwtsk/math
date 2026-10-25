# registerReservedNameAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec67c028da5b7e9ef94d21a996b917bd2baa653a0a3b803e27760e8f08001f86",
  "kind": "def",
  "lexical_name": "registerReservedNameAction",
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
  "slug": "registerreservednameaction--8a4846c650544469057b7ffd",
  "source": {
    "blob": "82353a93959500987c5408e56eb53115f423c75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReservedNameAction/Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a4846c650544469057b7ffdd74e335ce90493c357b5ec3b7436b7e3a51bdf33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReservedNameAction/Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec67c028da5b7e9ef94d21a996b917bd2baa653a0a3b803e27760e8f08001f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerReservedNameAction (act : ReservedNameAction) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError "failed to register reserved name action, this kind of extension can only be registered during initialization")
  reservedNameActionsRef.modify (·.push act)

/--
Execute a registered reserved action for the given reserved name.
Note that the handler can throw an exception.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReservedNameAction/Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReservedNameAction/Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82353a93959500987c5408e56eb53115f423c75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
