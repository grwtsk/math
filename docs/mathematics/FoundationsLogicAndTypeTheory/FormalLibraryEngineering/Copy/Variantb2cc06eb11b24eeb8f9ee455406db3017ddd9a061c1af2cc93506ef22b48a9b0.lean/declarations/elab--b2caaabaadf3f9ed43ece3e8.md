# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1578062f2aa20efa912285f34eca5019159ccad72eed23b052af427c9dfe22ab",
  "kind": "elab",
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
  "slug": "elab--b2caaabaadf3f9ed43ece3e8",
  "source": {
    "blob": "c2bb9d4fd16a2053b7657ca2c6105570590c3f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb2cc06eb11b24eeb8f9ee455406db3017ddd9a061c1af2cc93506ef22b48a9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2caaabaadf3f9ed43ece3e8d9b777ac90d2baa39e40c6637ab5ff3f5e7f857c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb2cc06eb11b24eeb8f9ee455406db3017ddd9a061c1af2cc93506ef22b48a9b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1578062f2aa20efa912285f34eca5019159ccad72eed23b052af427c9dfe22ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#copy" : command => liftCoreM do
  let msgs := [
    ← copyToClipboard "some copied text",
    ← copyToClipboard "some more copied text" .copiedText,
    ← copyToClipboard "some more copied text" "override text",
  ]
  logInfo m!"{m!"\n\n".joinSep msgs}"

/--
info: [click-to-copy] (Will copy:
  some copied text)

[click-to-copy] some more copied text
(Will copy:
  some more copied text)

[click-to-copy] override text
(Will copy:
  some more copied text)
-/
#guard_msgs in
#copy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb2cc06eb11b24eeb8f9ee455406db3017ddd9a061c1af2cc93506ef22b48a9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Copy/Variantb2cc06eb11b24eeb8f9ee455406db3017ddd9a061c1af2cc93506ef22b48a9b0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bb9d4fd16a2053b7657ca2c6105570590c3f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
