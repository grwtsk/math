# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8f760bedadc7f1374be805091e761c40cc15c3dda0e9ac3fc4f7a33d86a3027",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0d2a5a7eda5a7326f0398c0d",
  "source": {
    "blob": "33d61aff1398260529968a2c24fe4786d5c50461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d2a5a7eda5a7326f0398c0d289bf9412d3c9adc4e000c6cd8defe8b21c7fc05",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8f760bedadc7f1374be805091e761c40cc15c3dda0e9ac3fc4f7a33d86a3027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Coe String CopyDisplay where
  coe s := .text s

/-- Build a `MessageData` widget that, when clicked, copies `copyText` to the clipboard.

By default, this is simply a clickable "copy" codicon, but text may be provided through the
`display` argument. Specifically:

* `display := .iconOnly` (the default) renders just a clickable "copy" codicon.
* `display := .text s (hasIcon := true)` or equivalently `display := (s : String)` (in the
  `hasIcon := true` case) displays `s : String` (with or without a preceding codicon)
* `display := .copiedText (hasIcon := true)` displays the copied text (with or without a preceding
  codicon)

Use as e.g. `let msg ← copyToClipboard "text to be copied" (display := "(click to copy!)")`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variant1cba83dd2b2faf3784dda326a6e91e17a1ed1b62f9800a59ea18799932ea7752.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33d61aff1398260529968a2c24fe4786d5c50461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
