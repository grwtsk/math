# linter.style.docString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fcc1e56d70121acc0f400a3fb6a6f1be55e775bc23cac3a0d6d2ce609991afb",
  "kind": "register_option",
  "lexical_name": "linter.style.docString",
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
  "slug": "linter-style-docstring--74dd5953c4be00837ca9afbb",
  "source": {
    "blob": "efaeafdc4f720b92f1fbab48706ef9177e568281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74dd5953c4be00837ca9afbbfdf088ee35c16e8b76de5b66dfaeb3a311e129e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fcc1e56d70121acc0f400a3fb6a6f1be55e775bc23cac3a0d6d2ce609991afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.style.docString : Bool := {
  defValue := false
  descr := "enable the style.docString linter"
}

/--
Extract all `declModifiers` from the input syntax. We later extract the `docstring` from it,
but we avoid extracting directly the `docComment` node, to skip `#adaptation_note`s.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant8450ab80a485ca78bb80ef3fa1c91877d764705202d2de2e18021eace646c26b.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efaeafdc4f720b92f1fbab48706ef9177e568281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
