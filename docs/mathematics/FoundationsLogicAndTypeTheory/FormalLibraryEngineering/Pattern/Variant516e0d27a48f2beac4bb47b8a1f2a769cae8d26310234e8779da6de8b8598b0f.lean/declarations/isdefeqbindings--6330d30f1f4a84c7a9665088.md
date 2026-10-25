# isDefEqBindingS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3565ebf5eb3e493ef82b529b7c2b10eb81b49a1a9a73845f1851b51bcf651e10",
  "kind": "def",
  "lexical_name": "isDefEqBindingS",
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
  "slug": "isdefeqbindings--6330d30f1f4a84c7a9665088",
  "source": {
    "blob": "84d34aaf97dbd8a615cd6aa69750319ace350e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 737,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6330d30f1f4a84c7a9665088ed08ac85af606ff72c5db31aef2739ae2725261d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3565ebf5eb3e493ef82b529b7c2b10eb81b49a1a9a73845f1851b51bcf651e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDefEqBindingS (a b : Expr) : DefEqM Bool := do
  let lctx ← getLCtx
  let localInsts ← getLocalInstances
  go lctx localInsts #[] a b #[]
where
  checkDomains (fvars : Array Expr) (ds₂ : Array Expr) : DefEqM Bool := do
    for fvar in fvars, d in ds₂ do
      let fvarType ← fvar.fvarId!.getType
      unless (← isDefEqMain fvarType d) do return false
    return true

  go (lctx : LocalContext) (localInsts : LocalInstances) (fvars : Array Expr) (e₁ e₂ : Expr) (ds₂ : Array Expr) : DefEqM Bool := do
    match e₁, e₂ with
    | .forallE n d₁ b₁ _, .forallE _ d₂ b₂ _
    | .lam     n d₁ b₁ _, .lam     _ d₂ b₂ _ =>
      let d₁     ← instantiateRevS d₁ fvars
      let d₂     ← instantiateRevS d₂ fvars
      let fvarId ← mkFreshFVarId
      let fvar   ← mkFVarS fvarId
      let lctx   := lctx.mkLocalDecl fvarId n d₁
      let localInsts := if let some className := isClass? (← getEnv) d₁ then
        localInsts.push { className, fvar }
      else
        localInsts
      go lctx localInsts (fvars.push fvar) b₁ b₂ (ds₂.push d₂)
    | _, _ => withLCtx lctx localInsts do
      unless (← checkDomains fvars ds₂) do return false
      isDefEqMain (← instantiateRevS e₁ fvars) (← instantiateRevS e₂ fvars)

/--
Returns `true` if the metavariable `mvarId` can be assigned in the current context.
When `unify` is `true`, uses the default condition (not read-only nor synthetic opaque).
When `unify` is `false`, only metavariables in `mvarsNew` can be assigned. That is,
only metavariables associated with pattern variables can be assigned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d34aaf97dbd8a615cd6aa69750319ace350e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
