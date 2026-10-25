# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69006d71c16d68476581c1df2446c17fab533edaecd39e55c3b1bd85458cb5ee",
  "kind": "syntax",
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
  "slug": "syntax--b3ccc3bbd92d08e8305695b3",
  "source": {
    "blob": "3ff2d2b3ff39f6d1d9c19b821f37613876f9feca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3ccc3bbd92d08e8305695b3ab632c024c41ad7538d17e3bece75b795bf5d32a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69006d71c16d68476581c1df2446c17fab533edaecd39e55c3b1bd85458cb5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := ext) "ext" (ppSpace extIff)? (ppSpace extFlat)? (ppSpace prio)? : attr
end Parser.Attr

-- TODO: rename this namespace?
namespace Elab.Tactic.Ext

/--
Applies extensionality lemmas that are registered with the `@[ext]` attribute.
* `ext pat*` applies extensionality theorems as much as possible,
  using the patterns `pat*` to introduce the variables in extensionality theorems using `rintro`.
  For example, the patterns are used to name the variables introduced by lemmas such as `funext`.
* Without patterns,`ext` applies extensionality lemmas as much
  as possible but introduces anonymous hypotheses whenever needed.
* `ext pat* : n` applies ext theorems only up to depth `n`.

The `ext1 pat*` tactic is like `ext pat*` except that it only applies a single extensionality theorem.

Unused patterns will generate warning.
Patterns that don't match the variables will typically result in the introduction of anonymous hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant84d30187a4a48d331119eedfca8bf290d1673cfd886012b6af57d85a6b7fd8b4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ff2d2b3ff39f6d1d9c19b821f37613876f9feca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
