# instanceWantedCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ff2d1a3a4033eddcc85ce720ce5adb9f5ffbed83123bf873d0c761040768f21",
  "kind": "def",
  "lexical_name": "instanceWantedCmd",
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
  "slug": "instancewantedcmd--0f7bec681eb29dd20bb61aae",
  "source": {
    "blob": "0127b0d5b9669304194635d542c0d0d58a98fc0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f7bec681eb29dd20bb61aae268dda512ad0fb0cd12b3f86d87ba4e7c1aa2cdb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ff2d1a3a4033eddcc85ce720ce5adb9f5ffbed83123bf873d0c761040768f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def instanceWantedCmd : WantedCmdKind :=
  { cmdName := "instance_wanted", wrapper := ``DefWanted, requireProp := false,
    isInstance := true }

/-- File-local registry of `instance_wanted` declarations. Each registered name is
automatically included as an instance parameter binder in every later wanted declaration's
signature, so Lean's typeclass synth can pick it up without an explicit `❰…❱` reference. The
extension is non-persistent across imports (the placeholder defs are `private` and don't
propagate). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0127b0d5b9669304194635d542c0d0d58a98fc0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
