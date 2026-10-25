# expandMutualPreamble

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:150b94c1c9e24506f8b2238ad9bfe95146c63e41bcaeea51097f4b014437c584",
  "kind": "def",
  "lexical_name": "expandMutualPreamble",
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
  "slug": "expandmutualpreamble--6affe803f3038ec90c7cab56",
  "source": {
    "blob": "e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6affe803f3038ec90c7cab56017d0f188c5eace667dd28f66a332d4057c66b1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:150b94c1c9e24506f8b2238ad9bfe95146c63e41bcaeea51097f4b014437c584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandMutualPreamble : Macro := fun stx =>
  match splitMutualPreamble stx[1].getArgs with
  | none => Macro.throwUnsupported
  | some (preamble, rest) => do
    let secCmd    ← `(section)
    let newMutual := stx.setArg 1 (mkNullNode rest)
    let endCmd    ← `(end)
    return mkNullNode (#[secCmd] ++ preamble ++ #[newMutual] ++ #[endCmd])

@[builtin_command_elab «mutual», builtin_incremental]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
