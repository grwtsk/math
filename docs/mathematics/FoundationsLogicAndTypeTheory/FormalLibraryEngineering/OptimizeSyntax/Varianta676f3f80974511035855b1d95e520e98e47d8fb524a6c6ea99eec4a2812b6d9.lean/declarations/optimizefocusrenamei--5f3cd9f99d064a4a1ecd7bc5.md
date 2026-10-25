# optimizeFocusRenameI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecfafebe273ae7ebae20e403ab77961d2d89989e41da497d2d16534e6485c3e5",
  "kind": "def",
  "lexical_name": "optimizeFocusRenameI",
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
  "slug": "optimizefocusrenamei--5f3cd9f99d064a4a1ecd7bc5",
  "source": {
    "blob": "e35ae64cc42b3821ef3ddaa70ee3c23b955f7097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Varianta676f3f80974511035855b1d95e520e98e47d8fb524a6c6ea99eec4a2812b6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f3cd9f99d064a4a1ecd7bc5fd8eaa0fa2f98ef3135e511563f572c4d72cb128",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Varianta676f3f80974511035855b1d95e520e98e47d8fb524a6c6ea99eec4a2812b6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecfafebe273ae7ebae20e403ab77961d2d89989e41da497d2d16534e6485c3e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def optimizeFocusRenameI : Syntax → m Syntax
  | stx@.missing | stx@(.atom ..) | stx@(.ident ..) => return stx
  | .node info kind args => do
    let stx := .node info kind (← args.mapM optimizeFocusRenameI)
    match stx with
    | `(tactic| · $tacs:tactic*)
    | `(tactic| · { $tacs:tactic* }) => do
      let tacs := tacs.getElems
      let some (tac : TSyntax `tactic) := tacs[0]?
        | return stx
      match tac with
      | `(tactic| rename_i $[$ns:ident]*) =>
        `(tactic| next $[$ns:ident]* => $(tacs[1:]):tactic*)
      | _ => return stx
    | _ => return stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Varianta676f3f80974511035855b1d95e520e98e47d8fb524a6c6ea99eec4a2812b6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Varianta676f3f80974511035855b1d95e520e98e47d8fb524a6c6ea99eec4a2812b6d9.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35ae64cc42b3821ef3ddaa70ee3c23b955f7097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
