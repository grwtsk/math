# Code.mapFVarM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e510414cc68e2efbdf8b838c3af7d8e0be082406c7b8e9ee997f36647f9f6c0",
  "kind": "def",
  "lexical_name": "Code.mapFVarM",
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
  "slug": "code-mapfvarm--91e8f00e4ea82c02aede14ec",
  "source": {
    "blob": "6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91e8f00e4ea82c02aede14ec42521477253df711c11af952807d07e4c2d440f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e510414cc68e2efbdf8b838c3af7d8e0be082406c7b8e9ee997f36647f9f6c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.mapFVarM [MonadLiftT CompilerM m] [Monad m] (f : FVarId → m FVarId) (c : Code pu) : m (Code pu) := do
  match c with
  | .let decl k =>
    let decl ← LetDecl.mapFVarM f decl
    return Code.updateLet! c decl (← mapFVarM f k)
  | .fun decl k _ =>
    let params ← decl.params.mapM (Param.mapFVarM f)
    let decl ← decl.update (← Expr.mapFVarM f decl.type) params (← mapFVarM f decl.value)
    return Code.updateFun! c decl (← mapFVarM f k)
  | .jp decl k =>
    let params ← decl.params.mapM (Param.mapFVarM f)
    let decl ← decl.update (← Expr.mapFVarM f decl.type) params (← mapFVarM f decl.value)
    return Code.updateFun! c decl (← mapFVarM f k)
  | .cases cs =>
    return Code.updateCases! c (← Expr.mapFVarM f cs.resultType) (← f cs.discr) (← cs.alts.mapMonoM (·.mapCodeM (mapFVarM f)))
  | .jmp fn args =>
    return Code.updateJmp! c (← f fn) (← args.mapM (Arg.mapFVarM f))
  | .return var =>
    return Code.updateReturn! c (← f var)
  | .unreach typ =>
    return Code.updateUnreach! c (← Expr.mapFVarM f typ)
  | .oset fvarId offset y k _ =>
    return Code.updateOset! c (← f fvarId) offset (← y.mapFVarM f) (← mapFVarM f k)
  | .sset fvarId i offset y ty k _ =>
    return Code.updateSset! c (← f fvarId) i offset (← f y) (← Expr.mapFVarM f ty) (← mapFVarM f k)
  | .uset fvarId offset y k _ =>
    return Code.updateUset! c (← f fvarId) offset (← f y) (← mapFVarM f k)
  | .setTag fvarId cidx k _ =>
    return Code.updateSetTag! c (← f fvarId) cidx (← mapFVarM f k)
  | .inc fvarId n check persistent k _ =>
    return Code.updateInc! c (← f fvarId) n check persistent (← mapFVarM f k)
  | .dec fvarId n check persistent objs? k _ =>
    return Code.updateDec! c (← f fvarId) n check persistent objs? (← mapFVarM f k)
  | .del fvarId k _ =>
    return Code.updateDel! c (← f fvarId) (← mapFVarM f k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
