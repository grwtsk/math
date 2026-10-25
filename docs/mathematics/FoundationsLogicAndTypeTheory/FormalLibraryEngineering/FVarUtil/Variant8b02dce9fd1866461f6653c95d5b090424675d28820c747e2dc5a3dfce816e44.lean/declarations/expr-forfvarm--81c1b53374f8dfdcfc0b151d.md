# Expr.forFVarM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:735b8c19ac02471f8e9f996a0b1de5c49fb0058e5fe7f35733b3a11e14a14ad0",
  "kind": "def",
  "lexical_name": "Expr.forFVarM",
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
  "slug": "expr-forfvarm--81c1b53374f8dfdcfc0b151d",
  "source": {
    "blob": "56fe05fddfbcbbf81f8e08ce35b0696d4d2f88a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c1b53374f8dfdcfc0b151df3c62696eb34d41cf14f8dcba2a2a924cb1efa8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:735b8c19ac02471f8e9f996a0b1de5c49fb0058e5fe7f35733b3a11e14a14ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Expr.forFVarM [Monad m] (f : FVarId → m Unit) (e : Expr) : m Unit := do
  if e.hasFVar then
    match e with
    | .app fn arg =>
      forFVarM f fn
      forFVarM f arg
    | .fvar fvarId => f fvarId
    | .lam _ ty body .. =>
      forFVarM f ty
      forFVarM f body
    | .forallE _ ty body .. =>
      forFVarM f ty
      forFVarM f body
    | .bvar .. | .sort .. => return
    | .mdata .. | .const .. | .lit .. => return
    | .mvar .. | .letE .. | .proj .. => unreachable! -- LCNF types do not have this kind of expr
  else
    return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variant8b02dce9fd1866461f6653c95d5b090424675d28820c747e2dc5a3dfce816e44.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fe05fddfbcbbf81f8e08ce35b0696d4d2f88a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
