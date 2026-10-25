# internalizeCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64c172f75b66176f96c01128d3d1644612a8efea655a7e0bdcffe40c4ef98cc6",
  "kind": "def",
  "lexical_name": "internalizeCode",
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
  "slug": "internalizecode--723d01994d362a198c59047f",
  "source": {
    "blob": "2d1f4f2b975c67aa8ee3c91ab9621ec077846698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:723d01994d362a198c59047f58dd3feb9f45a8b33abfbcc1e0a7e03b605c4e16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64c172f75b66176f96c01128d3d1644612a8efea655a7e0bdcffe40c4ef98cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def internalizeCode (code : Code pu) : InternalizeM pu (Code pu) := do
  match code with
  | .let decl k => return .let (← internalizeLetDecl decl) (← internalizeCode k)
  | .fun decl k _ => return .fun (← internalizeFunDecl decl) (← internalizeCode k)
  | .jp decl k => return .jp (← internalizeFunDecl decl) (← internalizeCode k)
  | .return fvarId => withNormFVarResult (← normFVar fvarId) fun fvarId => return .return fvarId
  | .jmp fvarId args => withNormFVarResult (← normFVar fvarId) fun fvarId => return .jmp fvarId (← internalizeArgs args)
  | .unreach type => return .unreach (← internalizeExpr type)
  | .cases c =>
    withNormFVarResult (← normFVar c.discr) fun discr => do
      let resultType ← internalizeExpr c.resultType
      let alts ← c.alts.mapM fun
        | .alt ctorName params k _ => return .alt ctorName (← params.mapM internalizeParam) (← internalizeCode k)
        | .default k => return .default (← internalizeCode k)
        | .ctorAlt i k _ => return .ctorAlt i (← internalizeCode k)
      return .cases ⟨c.typeName, resultType, discr, alts⟩
  | .sset fvarId i offset y ty k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
    withNormFVarResult (← normFVar y) fun y => do
      return .sset fvarId i offset y (← internalizeExpr ty) (← internalizeCode k)
  | .uset fvarId offset y k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
    withNormFVarResult (← normFVar y) fun y => do
      return .uset fvarId offset y (← internalizeCode k)
  | .oset fvarId offset y k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      let y ← normArg y
      return .oset fvarId offset y (← internalizeCode k)
  | .setTag fvarId cidx k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      return .setTag fvarId cidx (← internalizeCode k)
  | .inc fvarId n check persistent k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      return .inc fvarId n check persistent (← internalizeCode k)
  | .dec fvarId n check persistent objs? k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      return .dec fvarId n check persistent objs? (← internalizeCode k)
  | .del fvarId k _ =>
    withNormFVarResult (← normFVar fvarId) fun fvarId => do
      return .del fvarId (← internalizeCode k)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1f4f2b975c67aa8ee3c91ab9621ec077846698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
