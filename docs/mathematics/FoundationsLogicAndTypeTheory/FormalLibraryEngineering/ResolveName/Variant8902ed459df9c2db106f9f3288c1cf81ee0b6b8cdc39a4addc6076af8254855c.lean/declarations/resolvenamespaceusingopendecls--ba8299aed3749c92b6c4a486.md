# resolveNamespaceUsingOpenDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:003a4eba98764ff40e7ca79699a760c40aec6ed441a5229e07ac478e00721686",
  "kind": "def",
  "lexical_name": "resolveNamespaceUsingOpenDecls",
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
  "slug": "resolvenamespaceusingopendecls--ba8299aed3749c92b6c4a486",
  "source": {
    "blob": "2319fa27798d8ccf8726fbe4ba7ff44c319b1269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba8299aed3749c92b6c4a486baf528f1f32abadb2dae8134c6f195056496a9a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:003a4eba98764ff40e7ca79699a760c40aec6ed441a5229e07ac478e00721686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveNamespaceUsingOpenDecls (env : Environment) (n : Name) : List OpenDecl → List Name
  | [] => []
  | OpenDecl.simple ns exs :: ds =>
    if env.isNamespace (ns ++ n) && !exs.contains n then
      (ns ++ n) :: resolveNamespaceUsingOpenDecls env n ds
    else
      resolveNamespaceUsingOpenDecls env n ds
  | _ :: ds => resolveNamespaceUsingOpenDecls env n ds

/--
Given a name `id` try to find namespaces it may refer to. The resolution procedure works as follows

1- If `id` is in the scope of `namespace` commands the namespace `s_1. ... . s_n`,
   then we include `s_1 . ... . s_i ++ n` in the result if it is the name of an existing namespace.
   We search "backwards", and include at most one of the in the list of resulting namespaces.

2- If `id` is the exact name of an existing namespace, then include `id`

3- Finally, for each command `open N`, include in the result `N ++ n` if it is the name of an existing namespace.
   We only consider simple `open` commands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant8902ed459df9c2db106f9f3288c1cf81ee0b6b8cdc39a4addc6076af8254855c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2319fa27798d8ccf8726fbe4ba7ff44c319b1269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
