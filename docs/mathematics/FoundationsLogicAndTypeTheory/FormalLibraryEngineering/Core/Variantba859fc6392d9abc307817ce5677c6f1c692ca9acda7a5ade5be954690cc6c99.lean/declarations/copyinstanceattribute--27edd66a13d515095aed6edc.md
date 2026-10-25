# copyInstanceAttribute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:105bfa45f9144fda53a9b80783d8f5e5d2db120bc7b7c5fd7ecf1a932077022f",
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
  "slug": "copyinstanceattribute--27edd66a13d515095aed6edc",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 888,
    "line": 875,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27edd66a13d515095aed6edc1afe8ee5e56ebc64cb3c933b53dba65b0228143c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:105bfa45f9144fda53a9b80783d8f5e5d2db120bc7b7c5fd7ecf1a932077022f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–888.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
