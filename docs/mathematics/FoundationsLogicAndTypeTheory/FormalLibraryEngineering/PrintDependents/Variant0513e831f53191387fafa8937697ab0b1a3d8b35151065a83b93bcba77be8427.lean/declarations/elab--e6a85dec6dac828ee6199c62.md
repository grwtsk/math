# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1517f93feee9915b82ab151254760362d17ff54d0db6b5a87b923225c885940",
  "kind": "elab",
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
  "slug": "elab--e6a85dec6dac828ee6199c62",
  "source": {
    "blob": "cc31f342054fd3b8513458184af160475b1d55fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6a85dec6dac828ee6199c62c93c6b2123708e132955fd32c4c2f0d1db3c7393",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1517f93feee9915b82ab151254760362d17ff54d0db6b5a87b923225c885940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab tk:"#print" &"dependents" ids:(ppSpace colGt ident)* : command => do
  let env ← getEnv
  let ids ← ids.mapM fun c => return (← resolveGlobalConstNoOverloadWithInfo c, true)
  let init := CollectDependents.mkState ids false
  let mut state := init
  let mut out := #[]
  for (c, _) in env.constants.map₂ do
    let (b, state') := CollectDependents.collect c |>.run env |>.run state
    state := state'
    if b then
      if let some ranges ← findDeclarationRanges? c then
        out := out.push (c, ranges.range.pos.1)
  let msg ← out.qsort (·.2 < ·.2) |>.mapM fun (c, _) => do
    let mut msg := m!"{ppConst (← mkConstWithLevelParams c)}: "
    if init.result.contains c then
      msg := msg ++ m!"<specified>"
    else
      let consts := match env.find? c with
      | some (ConstantInfo.defnInfo v)   => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.thmInfo v)    => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.opaqueInfo v) => v.type.getUsedConstants ++ v.value.getUsedConstants
      | some (ConstantInfo.ctorInfo v)   => v.type.getUsedConstants
      | some (ConstantInfo.recInfo v)    => v.type.getUsedConstants
      | some (ConstantInfo.inductInfo v) => v.type.getUsedConstants ++ v.ctors
      | _                                => #[]
      for c in RBTree.fromArray consts Name.cmp do
        if state.result.find? c = some true then
          msg := msg ++ m!"{ppConst (← mkConstWithLevelParams c)} "
    return msg
  logInfoAt tk (.joinSep msg.toList "\n")
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintDependents/Variant0513e831f53191387fafa8937697ab0b1a3d8b35151065a83b93bcba77be8427.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc31f342054fd3b8513458184af160475b1d55fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
