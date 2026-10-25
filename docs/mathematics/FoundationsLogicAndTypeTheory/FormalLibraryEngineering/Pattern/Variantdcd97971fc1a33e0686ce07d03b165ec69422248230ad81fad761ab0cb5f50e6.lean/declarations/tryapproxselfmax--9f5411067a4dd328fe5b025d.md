# tryApproxSelfMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79de7bd659b6d2f7d5806e5e284514abf0169f340a7d4a5a828eaef95f0d76da",
  "kind": "def",
  "lexical_name": "tryApproxSelfMax",
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
  "slug": "tryapproxselfmax--9f5411067a4dd328fe5b025d",
  "source": {
    "blob": "171627a1f2c4709561f698cb175364ff4dc27c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f5411067a4dd328fe5b025deee29dd673419387cf2d0451f9c291ff04e9b72f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79de7bd659b6d2f7d5806e5e284514abf0169f340a7d4a5a828eaef95f0d76da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryApproxSelfMax (u v : Level) : UnifyM Bool := do
  match u with
  | .max (.param uName) v'
  | .max v' (.param uName) =>
    let some uidx := isUVar? uName | return false
    solve v' uidx
  | _ => return false
where
  solve (v' : Level) (uidx : Nat) : UnifyM Bool := do
    if v == v' then
      assignLevel uidx v
    else
      return false

/-- Similar to `Meta.decLevel?`, but never assigns metavariables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171627a1f2c4709561f698cb175364ff4dc27c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
