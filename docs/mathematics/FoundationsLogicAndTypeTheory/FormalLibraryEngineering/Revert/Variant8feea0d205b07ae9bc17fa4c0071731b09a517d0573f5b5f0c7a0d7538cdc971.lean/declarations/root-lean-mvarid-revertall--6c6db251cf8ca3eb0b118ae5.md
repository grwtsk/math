# _root_.Lean.MVarId.revertAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25e475c615085a023b61d474e6a5bdbddec1bf2cfea48caf3a1d820df498ff67",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.revertAll",
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
  "slug": "root-lean-mvarid-revertall--6c6db251cf8ca3eb0b118ae5",
  "source": {
    "blob": "9587a9a63dab5ac98b9de6c56d98fe866557423f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c6db251cf8ca3eb0b118ae564f1de6a2275a13409cb035c60235368103ccd77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25e475c615085a023b61d474e6a5bdbddec1bf2cfea48caf3a1d820df498ff67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.revertAll (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `revertAll
  let mut toRevert := #[]
  for fvarId in (← getLCtx).getFVarIds do
    unless (← fvarId.getDecl).isAuxDecl do
      toRevert := toRevert.push fvarId
  let (_, mvarId) ← mvarId.revert toRevert
    (preserveOrder := true)
    (clearAuxDeclsInsteadOfRevert := true)
  return mvarId

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9587a9a63dab5ac98b9de6c56d98fe866557423f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
