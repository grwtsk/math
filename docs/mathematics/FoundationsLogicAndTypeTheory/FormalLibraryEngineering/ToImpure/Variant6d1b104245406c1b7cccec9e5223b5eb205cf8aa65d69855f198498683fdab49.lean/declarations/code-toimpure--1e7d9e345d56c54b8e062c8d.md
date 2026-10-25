# Code.toImpure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bceec62c8245aa15f8aa494aef244b6b885d564ef8e6462fc9ebf75c79a132b1",
  "kind": "def",
  "lexical_name": "Code.toImpure",
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
  "slug": "code-toimpure--1e7d9e345d56c54b8e062c8d",
  "source": {
    "blob": "0377ec665f828461c8bfa34ccaf7171754336330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e7d9e345d56c54b8e062c8d4e5774956be499b685c86c96af8499c1a1dd1aaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bceec62c8245aa15f8aa494aef244b6b885d564ef8e6462fc9ebf75c79a132b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.toImpure (c : Code .pure) : ToImpureM (Code .impure) := do
  match c with
  | .let decl k => lowerLet decl k
  | .jp decl k =>
    let params ← decl.params.mapM (·.toImpure)
    let keepMask := params.map fun p => !(p.type.isVoid || p.type.isErased)
    modify fun s => { s with jpParamMask := s.jpParamMask.insert decl.fvarId keepMask }
    let filteredParams := (params.zip keepMask).foldl (init := #[]) fun acc (p, keep) =>
      if keep then acc.push p else acc
    let value ← decl.value.toImpure
    let k ← k.toImpure
    let type ← lowerResultType decl.type params.size
    let decl := ⟨decl.fvarId, decl.binderName, filteredParams, type, value⟩
    modifyLCtx fun lctx => lctx.addFunDecl decl
    return .jp decl k
  | .jmp fvarId args =>
    let keepMask := (← get).jpParamMask[fvarId]!
    let filteredArgs ← (args.zip keepMask).foldlM (init := #[]) fun acc (a, keep) => do
      if keep then return acc.push (← a.toImpure) else return acc
    return .jmp fvarId filteredArgs
  | .cases c =>
    if let some info ← hasTrivialImpureStructure? c.typeName then
      assert! c.alts.size == 1
      let .alt ctorName ps k := c.alts[0]! | unreachable!
      assert! ctorName == info.ctorName
      assert! info.fieldIdx < ps.size
      for idx in 0...ps.size do
        let p := ps[idx]!
        if idx == info.fieldIdx then
          addSubst p.fvarId (.fvar c.discr)
        else
          addSubst p.fvarId .erased
      k.toImpure
    else
      -- `casesOn` for inductive predicates should have already been expanded.
      withNormFVarResult (← normFVar c.discr) fun discr => do
        let resultType ← toImpureType c.resultType
        let alts ← c.alts.mapM (·.toImpure discr)
        return .cases ⟨(← nameToImpureType c.typeName).getAppFn.constName!, resultType, discr, alts⟩
  | .return fvarId =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      return .return fvarId
  | .unreach type => return .unreach (← toImpureType type)
  | .fun .. => panic! "all local functions should be λ-lifted"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0377ec665f828461c8bfa34ccaf7171754336330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
