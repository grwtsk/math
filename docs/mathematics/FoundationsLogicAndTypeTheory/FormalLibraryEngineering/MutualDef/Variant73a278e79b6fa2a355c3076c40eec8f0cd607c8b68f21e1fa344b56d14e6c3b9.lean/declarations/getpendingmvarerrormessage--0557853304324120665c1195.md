# getPendingMVarErrorMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b3561398cd74289a2e34048186e2531bdcaa06970617ea0e4809ea756e00953",
  "kind": "def",
  "lexical_name": "getPendingMVarErrorMessage",
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
  "slug": "getpendingmvarerrormessage--0557853304324120665c1195",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0557853304324120665c1195db0bab775833c89a0a86473523759e40cdae1b62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b3561398cd74289a2e34048186e2531bdcaa06970617ea0e4809ea756e00953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getPendingMVarErrorMessage (views : Array DefView) : MessageData :=
  if let .some ids := isMultiConstant? views then
    MessageData.note m!"Multiple constants cannot be declared in a single declaration. \
      {interpretedAsParameters (ids)}"
  else if views.all (·.kind.isTheorem) then
    MessageData.note "All parameter types and holes (e.g., `_`) in the header of a theorem are resolved \
      before the proof is processed; information from the proof cannot be used to infer what these values should be"
  else if let .some ids := isExampleParams? views then
    MessageData.note m!"Examples do not have names. {interpretedAsParameters ids}"
    else
      MessageData.note "Because this declaration's type has been explicitly provided, all parameter \
        types and holes (e.g., `_`) in its header are resolved before its body is processed; \
        information from the declaration body cannot be used to infer what these values should be"
where
  interpretedAsParameters (ids : List Name) : MessageData :=
    let idsStr := ids.map (m!"`{.ofName ·}`") |>.toOxford
    let paramsStr := ids.map (m!"`({.ofName ·} : _)`") |>.toOxford
    m!"The identifier{ids.length.plural} {idsStr} {ids.length.plural "is" "are"} being interpreted \
      as {ids.length.plural "a parameter" "parameters"} {paramsStr}."

/--
Convert terms of the form `OfNat <type> (OfNat.ofNat Nat <num> ..)` into `OfNat <type> <num>`.
We use this method on instance declaration types.
The motivation is to address a recurrent mistake when users forget to use `nat_lit` when declaring `OfNat` instances.
See issues #1389 and #875
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
