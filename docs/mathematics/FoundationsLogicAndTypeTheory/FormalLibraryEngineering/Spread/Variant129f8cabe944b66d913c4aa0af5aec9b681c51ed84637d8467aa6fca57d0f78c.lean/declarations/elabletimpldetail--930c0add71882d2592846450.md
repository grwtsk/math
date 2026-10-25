# elabLetImplDetail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43230d7c1f23e53084f7916778ef0df51d5d534f52d24e6f34080377d4eda834",
  "kind": "def",
  "lexical_name": "elabLetImplDetail",
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
  "slug": "elabletimpldetail--930c0add71882d2592846450",
  "source": {
    "blob": "69c593ab35257979f762ff961d463a122ffd8933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variant129f8cabe944b66d913c4aa0af5aec9b681c51ed84637d8467aa6fca57d0f78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:930c0add71882d259284645064248255b73c97f07cd345deb2dd24c8f5aed115",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variant129f8cabe944b66d913c4aa0af5aec9b681c51ed84637d8467aa6fca57d0f78c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43230d7c1f23e53084f7916778ef0df51d5d534f52d24e6f34080377d4eda834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabLetImplDetail : TermElab := fun stx expectedType? =>
  match stx with
  | `(let_impl_detail $id := $valStx; $body) => do
    let val ← elabTerm valStx none
    let type ← inferType val
    trace[Elab.let.decl] "{id.getId} : {type} := {val}"
    let result ←
      withLetDecl id.getId (kind := .default) type val fun x => do
        addLocalVarInfo id x
        let lctx ← getLCtx
        let lctx := lctx.modifyLocalDecl x.fvarId! fun decl => decl.setKind .implDetail
        withLCtx lctx (← getLocalInstances) do
          let body ← elabTermEnsuringType body expectedType?
          let body ← instantiateMVars body
          mkLetFVars #[x] body (usedLetOnly := false)
    pure result
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variant129f8cabe944b66d913c4aa0af5aec9b681c51ed84637d8467aa6fca57d0f78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variant129f8cabe944b66d913c4aa0af5aec9b681c51ed84637d8467aa6fca57d0f78c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c593ab35257979f762ff961d463a122ffd8933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
