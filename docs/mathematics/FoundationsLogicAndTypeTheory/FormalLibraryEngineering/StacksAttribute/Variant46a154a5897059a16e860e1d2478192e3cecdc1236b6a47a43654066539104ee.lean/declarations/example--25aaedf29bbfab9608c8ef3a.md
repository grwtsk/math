# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7353c748443cd1cca2749607be19ccce9ceab413bb3f7a110490806746d72b",
  "kind": "example",
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
  "slug": "example--25aaedf29bbfab9608c8ef3a",
  "source": {
    "blob": "e84f047c6b3d4ae23d6b47000f33a98bbdaad2a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant46a154a5897059a16e860e1d2478192e3cecdc1236b6a47a43654066539104ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25aaedf29bbfab9608c8ef3aa1a673e43e685aa1e4ee6428b8c766e0fad3ff71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant46a154a5897059a16e860e1d2478192e3cecdc1236b6a47a43654066539104ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7353c748443cd1cca2749607be19ccce9ceab413bb3f7a110490806746d72b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : True := .intro

/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05"

/-- error: <input>:1:4: Stacks tags must consist only of digits and uppercase letters. -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "A05b"

/-- info: 0BD5 -/
#guard_msgs in #parse Mathlib.StacksTag.stacksTagFn => "0BD5"

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
-/
#guard_msgs in
#stacks_tags

/--
info:
[Stacks Tag A04Q](https://stacks.math.columbia.edu/tag/A04Q) corresponds to declaration 'X.tagged'. (A comment)
True
-/
#guard_msgs in
#stacks_tags!

/--
info:
[Stacks Tag B15R](https://kerodon.net/tag/B15R) corresponds to declaration 'X.tagged'. (Also a comment)
True
-/
#guard_msgs in
#kerodon_tags!

section errors

open Lean Parser Mathlib.StacksTag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant46a154a5897059a16e860e1d2478192e3cecdc1236b6a47a43654066539104ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant46a154a5897059a16e860e1d2478192e3cecdc1236b6a47a43654066539104ee.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84f047c6b3d4ae23d6b47000f33a98bbdaad2a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
