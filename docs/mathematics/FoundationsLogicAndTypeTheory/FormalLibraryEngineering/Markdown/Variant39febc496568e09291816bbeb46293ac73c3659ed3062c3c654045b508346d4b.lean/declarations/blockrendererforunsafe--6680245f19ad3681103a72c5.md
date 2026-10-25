# blockRendererForUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df1f9d3072b3cd5c2ecc84c3e77f38f6011a3ff08487f06e28f5bb4123d19afb",
  "kind": "def",
  "lexical_name": "blockRendererForUnsafe",
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
  "slug": "blockrendererforunsafe--6680245f19ad3681103a72c5",
  "source": {
    "blob": "553ddfe0a26ffc1d8037306db72affadea409006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 570,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6680245f19ad3681103a72c5b5edb41c84d721b3a892976e29e089675f50fdcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df1f9d3072b3cd5c2ecc84c3e77f38f6011a3ff08487f06e28f5bb4123d19afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def blockRendererForUnsafe (typeName : Name) : CoreM (Option BlockMdRenderer) := do
  let s := docBlockMdExt.getState (← getEnv)
  match s.current.find? typeName <|> s.imported.find? typeName with
  | some d => return some (← evalConst BlockMdRenderer d)
  | none => return (← builtinBlockMdRenderers.get).find? typeName

/-- Looks up the block Markdown renderer registered for `typeName`, if any. -/
@[implemented_by blockRendererForUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553ddfe0a26ffc1d8037306db72affadea409006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
