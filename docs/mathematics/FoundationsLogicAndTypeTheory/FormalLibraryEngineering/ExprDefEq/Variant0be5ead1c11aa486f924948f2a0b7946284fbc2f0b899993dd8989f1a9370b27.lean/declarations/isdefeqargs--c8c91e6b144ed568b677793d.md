# isDefEqArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3d8d4ff7ce83cc8b2346415e43fe6a99913d836510cc90149d7e3fed35e9082",
  "kind": "def",
  "lexical_name": "isDefEqArgs",
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
  "slug": "isdefeqargs--c8c91e6b144ed568b677793d",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c91e6b144ed568b677793dbd1ea3bfe1f6c2fd5d51f40f674baa6f91b2d9a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3d8d4ff7ce83cc8b2346415e43fe6a99913d836510cc90149d7e3fed35e9082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isDefEqArgs (f : Expr) (args₁ args₂ : Array Expr) : MetaM Bool := do
  unless args₁.size == args₂.size do return false
  let finfo ← getFunInfoNArgs f args₁.size
  let .ok postponedImplicit postponedHO ← isDefEqArgsFirstPass finfo.paramInfo args₁ args₂ | pure false
  -- finfo.paramInfo.size may be smaller than args₁.size
  for i in finfo.paramInfo.size...args₁.size do
    unless (← Meta.isExprDefEqAux args₁[i]! args₂[i]!) do
      return false
  let respectTransparency := backward.isDefEq.respectTransparency.get (← getOptions)
  let implicitBump := backward.isDefEq.implicitBump.get (← getOptions)
  for i in postponedImplicit do
    /- Second pass: unify implicit arguments.
       When `respectTransparency` is `false` (old behavior), we bump to `.default` so that
       semireducible definitions are unfolded — the rationale being that users don't think about
       implicit arguments and expect them to "just work."
       When `respectTransparency` is `true` and `implicitBump` is `true`, we bump non-instance
       implicit arguments to `.implicit` so that `[reducible]`, `[instance_reducible]`, and
       `[implicit_reducible]` definitions are unfolded but not arbitrary semireducible definitions.
       When `respectTransparency` is `true` and `implicitBump` is `false`, only instance-implicit
       arguments (`[..]`) are bumped to `.implicit`. -/
    let a₁   := args₁[i]!
    let a₂   := args₂[i]!
    let info := finfo.paramInfo[i]!
    /-
    **Note**: We use `binderInfo.isInstImplicit` (the `[..]` annotation) rather than
    `info.isInstance` (whether the type is a class). Type class synthesis should only
    be triggered for parameters explicitly marked for instance resolution, not merely
    for parameters whose types happen to be class types.
    -/
    if info.binderInfo.isInstImplicit then
      discard <| trySynthPending a₁
      discard <| trySynthPending a₂
    if respectTransparency && (info.binderInfo.isInstImplicit || implicitBump) then
      -- Bump to `.implicit` so that `[instance_reducible]` and `[implicit_reducible]` definitions
      -- both unfold. For instance-implicit arguments, this is especially necessary for diamond
      -- resolution.
      unless (← withImplicitConfig <| Meta.isExprDefEqAux a₁ a₂) do return false
    else if respectTransparency then
      unless (← Meta.isExprDefEqAux a₁ a₂) do return false
    else
      -- Old behavior
      unless (← withInferTypeConfig <| Meta.isExprDefEqAux a₁ a₂) do return false
  for i in postponedHO do
    let a₁   := args₁[i]!
    let a₂   := args₂[i]!
    if respectTransparency && (finfo.paramInfo[i]!.isInstance || implicitBump) then
      unless (← withImplicitConfig <| Meta.isExprDefEqAux a₁ a₂) do return false
    -- Old behavior
    else if !respectTransparency && finfo.paramInfo[i]!.isInstance then
      unless (← withInferTypeConfig <| Meta.isExprDefEqAux a₁ a₂) do return false
    else
      unless (← Meta.isExprDefEqAux a₁ a₂) do return false
  return true

/--
  Check whether the types of the free variables at `fvars` are
  definitionally equal to the types at `ds₂`.

  Pre: `fvars.size == ds₂.size`

  This method also updates the set of local instances, and invokes
  the continuation `k` with the updated set.

  We can't use `withNewLocalInstances` because the `isDefEq fvarType d₂`
  may use local instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
