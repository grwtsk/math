# $

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80a1e7490d69eb5f223b6eda344d36cb6561c381f748a5f5314271b105b4e3ba",
  "kind": "def",
  "lexical_name": "$",
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
  "slug": "anonymous--b5ad462eea8b7ea852f92415",
  "source": {
    "blob": "3d15d52cfba8de9c4ea41db34c6bf6b8df224524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 676,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5ad462eea8b7ea852f924151df2c9d55725aba73c5c495ee2b9a8f88eecf2ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80a1e7490d69eb5f223b6eda344d36cb6561c381f748a5f5314271b105b4e3ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
          def $(Lean.mkIdent delabName) : Delab :=
            whenPPOption getPPNotation <| whenNotPPOption getPPExplicit <| $body
          -- Avoid scope issues by adding attribute afterwards.
          attribute [$attrKind delab $(mkIdent key.key)] $(Lean.mkIdent delabName))
        trace[notation3] "Defined delaborator {currNamespace ++ delabName}"
    else
      logWarning s!"\
        Was not able to generate a pretty printer for this notation. \
        If you do not expect it to be pretty printable, then you can use \
        `notation3 (prettyPrint := false)`. \
        If the notation expansion refers to section variables, be sure to do `local notation3`. \
        Otherwise, you might be able to adjust the notation expansion to make it matchable; \
        pretty printing relies on deriving an expression matcher from the expansion. \
        (Use `set_option trace.notation3 true` to get some debug information.)"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d15d52cfba8de9c4ea41db34c6bf6b8df224524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
