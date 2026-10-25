# copyInstanceAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7611a4560bfc2206bf9e95123e7cce3cd4ae86c9b3bc424334dd3c8e7fd91f3e",
  "kind": "def",
  "lexical_name": "copyInstanceAttribute",
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
  "slug": "copyinstanceattribute--a1577ef08cb1d878936dfb75",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 867,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1577ef08cb1d878936dfb75e1cc49ede6b0d653de09069f19192493d684a23c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7611a4560bfc2206bf9e95123e7cce3cd4ae86c9b3bc424334dd3c8e7fd91f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def copyInstanceAttribute (src tgt : Name) : CoreM Unit := do
  if let some prio ← getInstancePriority? src then
    let attr_kind := (← getInstanceAttrKind? src).getD .global
    -- Copy `instance_reducible` / `instance_reducible` status before adding instance attribute
    match (← getReducibilityStatus src) with
    | .implicitReducible => setReducibilityStatus tgt .implicitReducible
    | .instanceReducible => setReducibilityStatus tgt .instanceReducible
    | _ => pure ()
    trace[translate_detail] "Making {tgt} an instance with priority {prio}."
    addInstance tgt attr_kind prio |>.run'

open Batteries.Tactic.Alias in
/-- If `src` was declared with `alias`, then record `tgt` as an alias,
and give it an alias-style docstring if it doesn't have a doc-string already -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
