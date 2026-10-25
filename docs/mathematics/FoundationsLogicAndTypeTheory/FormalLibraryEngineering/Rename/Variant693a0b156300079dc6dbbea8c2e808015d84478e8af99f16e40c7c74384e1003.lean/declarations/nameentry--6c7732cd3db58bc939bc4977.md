# NameEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ebf9f38bfd7c26c35cec0f8b90d4f6d41a38de9579a1c6f44258ff683878e7e",
  "kind": "structure",
  "lexical_name": "NameEntry",
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
  "slug": "nameentry--6c7732cd3db58bc939bc4977",
  "source": {
    "blob": "7e8dcf2eeb4abb35f94dc075871e6916076c9558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c7732cd3db58bc939bc4977ae04fb2a10c94a0a796f0b022025e2bf9ea21ebf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ebf9f38bfd7c26c35cec0f8b90d4f6d41a38de9579a1c6f44258ff683878e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NameEntry where
  /-- The lean 3 name. -/
  n3 : Name
  /-- The lean 4 name, or `.anonymous` for a `#noalign`. -/
  n4 : Name
  /-- If true, this lean 3 -> lean 4 mapping will not be entered into the converse map.
  This is used for "internal" definitions that should never be referred to in the source syntax. -/
  synthetic := false
  /-- A dubious translation is one where there is a type mismatch
  from the translated lean 3 definition to a pre-existing lean 4 definition.
  Type errors are likely in downstream theorems.
  The string stored here is printed in the event that `n3` is encountered by synport. -/
  dubious := ""

/-- Insert a name entry into the `RenameMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant693a0b156300079dc6dbbea8c2e808015d84478e8af99f16e40c7c74384e1003.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8dcf2eeb4abb35f94dc075871e6916076c9558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
