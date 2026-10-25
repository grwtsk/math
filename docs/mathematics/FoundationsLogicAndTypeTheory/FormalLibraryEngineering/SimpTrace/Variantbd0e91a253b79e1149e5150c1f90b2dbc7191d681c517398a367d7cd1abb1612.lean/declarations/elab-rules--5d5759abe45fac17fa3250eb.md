# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bba339df9e21dfbd44a3b67deb799b83e9883d5f2dade066760da5fdcff284ce",
  "kind": "elab_rules",
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
  "slug": "elab-rules--5d5759abe45fac17fa3250eb",
  "source": {
    "blob": "fd937a125122f89a377d70b4dc51ea1f62a80535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d5759abe45fac17fa3250ebcc49bca5fa89708e8db7d7fcbe068e2e3d9e867a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bba339df9e21dfbd44a3b67deb799b83e9883d5f2dade066760da5fdcff284ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic|
      simp?%$tk $[!%$bang]? $(config)? $(discharger)? $[only%$o]? $[[$args,*]]? $(loc)?) => do
    let stx ← if bang.isSome then
      `(tactic| simp!%$tk $(config)? $(discharger)? $[only%$o]? $[[$args,*]]? $(loc)?)
    else
      `(tactic| simp%$tk $(config)? $(discharger)? $[only%$o]? $[[$args,*]]? $(loc)?)
    let { ctx, dischargeWrapper } ← withMainContext <| mkSimpContext stx (eraseLocal := false)
    let usedSimps ← dischargeWrapper.with fun discharge? =>
      simpLocation ctx discharge? <| (loc.map expandLocation).getD (.targets #[] true)
    let stx ← mkSimpCallStx stx usedSimps
    TryThis.addSuggestion tk stx (origSpan? := ← getRef)

/-- The common arguments of `simp_all?` and `simp_all?!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTrace/Variantbd0e91a253b79e1149e5150c1f90b2dbc7191d681c517398a367d7cd1abb1612.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd937a125122f89a377d70b4dc51ea1f62a80535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
