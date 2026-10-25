# mkGlobalDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc8c3c073cf3ed0f4faee5c33bc34b375c9d505a239bff4be81e39ac48a8edf5",
  "kind": "def",
  "lexical_name": "mkGlobalDiag",
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
  "slug": "mkglobaldiag--ea304faa8aa4125e843e6b5e",
  "source": {
    "blob": "40b37f115f24c3808213a11fef1c721a999bb885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea304faa8aa4125e843e6b5e94edc72a9ce806248af2768dac02017622251a1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc8c3c073cf3ed0f4faee5c33bc34b375c9d505a239bff4be81e39ac48a8edf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkGlobalDiag (cs : Counters) (simp : Simp.Stats) (ss : PArray SplitDiagInfo) : MetaM (Option MessageData) := do
  -- We do not report `cases` applications on builtin types
  let cases := cs.case.toList.toArray.filter fun (declName, _) => !isBuiltinEagerCases declName
  let mut msgs := #[]
  unless cs.thm.isEmpty do
    let thms := cs.thm.toList.toArray.map fun (origin, c) => Id.run do
      match origin with
      | .fvar fvarId =>
        let some userName := cs.fvarUserNames.find? fvarId | unreachable!
        return (origin, userName, c)
      | .decl n => return (origin, n, c)
      | .local n => return (origin, n, c)
      | .stx n _ => return (origin, n, c)
    msgs := msgs.push <| (← countersWithOriginToMessageData "E-Matching instances" `thm thms)
  let ss := ss.toArray.filter fun { numCases, .. } => numCases > 1
  unless ss.isEmpty do
    msgs := msgs.push <| (← splitDiagInfoToMessageData ss)
  unless cases.isEmpty do
    msgs := msgs.push <| (← countersToMessageData "Cases instances" `cases cases)
  unless cs.apps.isEmpty do
    msgs := msgs.push <| (← countersToMessageData "Applications" `app cs.apps.toList.toArray)
  let simpMsgs ← Simp.mkDiagMessages simp.diag
  unless simpMsgs.isEmpty do
    msgs := msgs.push <| .trace { cls := `grind} "Simplifier" simpMsgs
  if msgs.isEmpty then
    return none
  else
    return some <| .trace { cls := `grind } "Diagnostics" msgs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant202c9693343afbb5a36f6c0a1883dc821c195b70c65fd8f2ed67f2022a93d24f.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b37f115f24c3808213a11fef1c721a999bb885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
