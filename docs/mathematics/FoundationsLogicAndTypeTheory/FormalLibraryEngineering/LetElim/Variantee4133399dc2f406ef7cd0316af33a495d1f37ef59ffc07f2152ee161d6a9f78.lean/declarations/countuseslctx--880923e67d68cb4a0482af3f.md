# countUsesLCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab814c56da6050f023b3199c94e7158514df80f8465c75b09431b634fc1adb16",
  "kind": "def",
  "lexical_name": "countUsesLCtx",
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
  "slug": "countuseslctx--880923e67d68cb4a0482af3f",
  "source": {
    "blob": "b5d9400db164afad5c85b2d7561e285d293e1f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:880923e67d68cb4a0482af3ff1770c6b0be5084df66c8da8ddad7c373d8efa69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab814c56da6050f023b3199c94e7158514df80f8465c75b09431b634fc1adb16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def countUsesLCtx (ctx : LocalContext) (targetUses : FVarUses) : MetaM LocalContext := do
  let decls : Array LocalDecl := Array.mkEmpty ctx.decls.size
  let decls ← Prod.fst <$> ctx.foldrM (init := (decls, targetUses)) fun decl (decls, targetUses) => do
    let (ty, val?, fvs) ← countUsesDecl decl.fvarId decl.type decl.value? targetUses
    let decl := match val? with
      | none => decl.setType ty
      | some val => decl.setType ty |>.setValue val
    return (decls.push decl, fvs)
  -- NB: decls are in reverse order; root comes first
  let decls ← StateRefT'.run' (ω:=IO.RealWorld) (s := decls) <| ctx.decls.mapM fun decl => do
    if decl.isNone then return decl
    modifyGet fun (decls : Array LocalDecl) => (some decls.back!, decls.pop)
  return { ctx with decls }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d9400db164afad5c85b2d7561e285d293e1f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
