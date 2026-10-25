# mkBlockMdRenderer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2de69d2b2fe670923d4a6b3d7f8d25e7658b5bae631bcb61ed64205122674e8f",
  "kind": "def",
  "lexical_name": "mkBlockMdRenderer",
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
  "slug": "mkblockmdrenderer--b9f2c739cd88d2b1cbaf8864",
  "source": {
    "blob": "553ddfe0a26ffc1d8037306db72affadea409006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9f2c739cd88d2b1cbaf8864047781241f2354a0eb87fe55f5dcd7d527013f79",
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

Occurrence: `declaration:2de69d2b2fe670923d4a6b3d7f8d25e7658b5bae631bcb61ed64205122674e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBlockMdRenderer (α : Type) [TypeName α] (f : BlockMdRendererOf α) : BlockMdRenderer :=
  fun goI goB val content =>
    match val.get? α with
    | some x => f goI goB x content
    | none => return joinBlocks (← content.mapM goB)

/--
A set of registered Markdown renderers, keyed by custom element type names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant39febc496568e09291816bbeb46293ac73c3659ed3062c3c654045b508346d4b.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553ddfe0a26ffc1d8037306db72affadea409006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
