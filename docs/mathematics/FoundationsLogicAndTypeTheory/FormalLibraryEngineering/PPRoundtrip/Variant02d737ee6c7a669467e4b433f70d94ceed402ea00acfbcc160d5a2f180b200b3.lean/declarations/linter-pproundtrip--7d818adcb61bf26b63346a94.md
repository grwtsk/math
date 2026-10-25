# linter.ppRoundtrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa8d4af8e2dbcb17fa13ab5de93e0b1023bc58e8efec67878bd167f8f20568d6",
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
  "slug": "linter-pproundtrip--7d818adcb61bf26b63346a94",
  "source": {
    "blob": "3ae2f9f25f2dfbbba71bec37ce1a03dfca45023d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variant02d737ee6c7a669467e4b433f70d94ceed402ea00acfbcc160d5a2f180b200b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d818adcb61bf26b63346a9400644d8f10522d4b4cdc17989ea517a3b34c39b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variant02d737ee6c7a669467e4b433f70d94ceed402ea00acfbcc160d5a2f180b200b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa8d4af8e2dbcb17fa13ab5de93e0b1023bc58e8efec67878bd167f8f20568d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variant02d737ee6c7a669467e4b433f70d94ceed402ea00acfbcc160d5a2f180b200b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPRoundtrip/Variant02d737ee6c7a669467e4b433f70d94ceed402ea00acfbcc160d5a2f180b200b3.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae2f9f25f2dfbbba71bec37ce1a03dfca45023d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
