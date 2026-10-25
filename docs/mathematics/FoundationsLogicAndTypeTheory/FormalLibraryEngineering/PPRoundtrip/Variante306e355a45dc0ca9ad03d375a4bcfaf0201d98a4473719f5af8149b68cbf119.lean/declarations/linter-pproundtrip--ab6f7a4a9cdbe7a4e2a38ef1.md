# linter.ppRoundtrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6b4ea4446512ef76012b11820aa4f5237009eb4cd89e825e307ea9ac03598e8",
  "kind": "register_option",
  "lexical_name": "linter.ppRoundtrip",
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
  "slug": "linter-pproundtrip--ab6f7a4a9cdbe7a4e2a38ef1",
  "source": {
    "blob": "df238e0927ee369d1ddba3d68e6f0de1fee250c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variante306e355a45dc0ca9ad03d375a4bcfaf0201d98a4473719f5af8149b68cbf119.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab6f7a4a9cdbe7a4e2a38ef159e36b311f3bbfd20e51a78da29443fcbc32ad9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variante306e355a45dc0ca9ad03d375a4bcfaf0201d98a4473719f5af8149b68cbf119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6b4ea4446512ef76012b11820aa4f5237009eb4cd89e825e307ea9ac03598e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
register_option linter.ppRoundtrip : Bool := {
  defValue := false
  descr := "enable the ppRoundtrip linter"
}

/-- `polishPP s` takes as input a `String` `s`, assuming that it is the output of
pretty-printing a lean command.
The main intent is to convert `s` to a reasonable candidate for a desirable source code format.
The function first replaces consecutive whitespace sequences into a single space (` `), in an
attempt to side-step line-break differences.
After that, it applies some pre-emptive changes:
* doc-module beginnings tend to have some whitespace following them, so we add a space back in;
* name quotations such as ``` ``Nat``` get pretty-printed as ``` `` Nat```, so we remove a space
  after double back-ticks, but take care of adding one more for triple (or more) back-ticks;
* `notation3` is not followed by a pretty-printer space, so we add it here (https://github.com/leanprover-community/mathlib4/pull/15515).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variante306e355a45dc0ca9ad03d375a4bcfaf0201d98a4473719f5af8149b68cbf119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variante306e355a45dc0ca9ad03d375a4bcfaf0201d98a4473719f5af8149b68cbf119.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df238e0927ee369d1ddba3d68e6f0de1fee250c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
