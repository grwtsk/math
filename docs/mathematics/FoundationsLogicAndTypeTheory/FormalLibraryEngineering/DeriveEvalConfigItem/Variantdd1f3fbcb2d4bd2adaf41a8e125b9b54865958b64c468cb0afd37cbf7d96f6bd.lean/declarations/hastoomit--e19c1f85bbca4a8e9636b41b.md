# hasToOmit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bec20708e00407a005c15b244517ec959373a5caa965539ed6ffa3b743a45161",
  "kind": "def",
  "lexical_name": "hasToOmit",
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
  "slug": "hastoomit--e19c1f85bbca4a8e9636b41b",
  "source": {
    "blob": "1fb205140b9861f2064814b09b828dba9e916a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e19c1f85bbca4a8e9636b41b37e64ff5b70a80d7a522108aed785d947c0fc592",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bec20708e00407a005c15b244517ec959373a5caa965539ed6ffa3b743a45161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def hasToOmit (key : Name) (projFn : Name) : M Bool := do
  let s ← get
  if let some idx := s.toOmit.findIdx? (fun (_, name) => name == key) then
    let (ref, _) := s.toOmit[idx]!
    addConstInfo ref projFn
    set { s with toOmit := s.toOmit.eraseIdx! idx }
    return true
  else
    return false

/--
Makes an `EvalConfigItem` for the structure.
Supports structures with no parameters or universes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb205140b9861f2064814b09b828dba9e916a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
