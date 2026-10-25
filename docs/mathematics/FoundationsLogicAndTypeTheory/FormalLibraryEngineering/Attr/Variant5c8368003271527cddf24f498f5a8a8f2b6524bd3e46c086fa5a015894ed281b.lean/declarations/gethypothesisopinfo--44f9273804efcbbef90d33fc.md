# getHypothesisOpInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ae36c831c046987a1d2cb8e9c05e3d416e978ee39619499763ab2cd40c71b09",
  "kind": "def",
  "lexical_name": "getHypothesisOpInfo",
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
  "slug": "gethypothesisopinfo--44f9273804efcbbef90d33fc",
  "source": {
    "blob": "cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44f9273804efcbbef90d33fc90b73ae80661b528076326a0ca2b5b65788cb496",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ae36c831c046987a1d2cb8e9c05e3d416e978ee39619499763ab2cd40c71b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getHypothesisOpInfo (declName : Name) :
    MetaM (Array DiscrTree.Key × Nat × Array HypArg × Array ParamArg) := do
  let theoremExpr ← mkConstWithFreshMVarLevels declName
  let (args, binderInfos, conclusion) ← forallMetaTelescopeReducing (← inferType theoremExpr)
  let some (e, s, _) := toSetMem? conclusion
    | throwError "The conclusion of `{.ofConstName declName}` is not an inclusion using a `ToSet` \
        instance"
  let mut sourceIdx? := none
  for h : i in [:args.size] do
    let argType ← args[i].mvarId!.getType
    if binderInfos[i]!.isExplicit && (toSetMem? argType).isNone && (← isProp argType) then
      if sourceIdx?.isSome then
        throwError "Hypothesis theorem `{.ofConstName declName}` has more than one non-inclusion \
          premise"
      sourceIdx? := some i
  let some sourceIdx := sourceIdx?
    | throwError "Hypothesis theorem `{.ofConstName declName}` has no non-inclusion premise"
  let sourceId := args[sourceIdx]!.mvarId!
  let sourceType ← sourceId.getType
  if (e.findMVar? (· == sourceId)).isSome then
    throwError "The source hypothesis of `{.ofConstName declName}` occurs in its represented \
      expression"
  if (s.findMVar? (· == sourceId)).isSome then
    throwError "The source hypothesis of `{.ofConstName declName}` occurs in its output inclusion"
  let (hypArgs, params) ← getOpArgInfo declName sourceType args (some sourceIdx)
  for ⟨name, idx⟩ in params do
    let paramId := args[idx]!.mvarId!
    if (e.findMVar? (· == paramId)).isSome then
      throwError "Inclusion parameter `{name}` in `{.ofConstName declName}` occurs in the \
        represented expression"
  return (← DiscrTree.mkPath sourceType, sourceIdx, hypArgs, params)

/-- Generate and register a hypothesis extension from `theoremName` in `familyName`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
