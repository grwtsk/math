# Code.forFVarM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d912142471036bed4d8401dab8e19ecd024a4abab2ff5a0114422bd7267dddde",
  "kind": "def",
  "lexical_name": "Code.forFVarM",
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
  "slug": "code-forfvarm--088ec36968e5c69043d4ad72",
  "source": {
    "blob": "6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:088ec36968e5c69043d4ad72d5802503d751f2b62ef8a50be0ab2761d1f583ed",
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

Occurrence: `declaration:d912142471036bed4d8401dab8e19ecd024a4abab2ff5a0114422bd7267dddde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.forFVarM [Monad m] (f : FVarId → m Unit) (c : Code pu) : m Unit := do
  match c with
  | .let decl k =>
    LetDecl.forFVarM f decl
    forFVarM f k
  | .fun decl k _ =>
    decl.params.forM (Param.forFVarM f)
    Expr.forFVarM f decl.type
    forFVarM f decl.value
    forFVarM f k
  | .jp decl k =>
    decl.params.forM (Param.forFVarM f)
    Expr.forFVarM f decl.type
    forFVarM f decl.value
    forFVarM f k
  | .cases cs =>
    Expr.forFVarM f cs.resultType
    f cs.discr
    cs.alts.forM (·.forCodeM (forFVarM f))
  | .jmp fn args =>
    f fn
    args.forM (Arg.forFVarM f)
  | .return var => f var
  | .unreach typ =>
    Expr.forFVarM f typ
  | .sset fvarId _ _ y ty k _ =>
    f fvarId
    f y
    Expr.forFVarM f ty
    forFVarM f k
  | .uset fvarId _ y k _ =>
    f fvarId
    f y
    forFVarM f k
  | .oset fvarId _ y k _ =>
    f fvarId
    y.forFVarM f
    forFVarM f k
  | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
  | .del (fvarId := fvarId) (k := k) .. | .setTag (fvarId := fvarId) (k := k) .. =>
    f fvarId
    forFVarM f k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
