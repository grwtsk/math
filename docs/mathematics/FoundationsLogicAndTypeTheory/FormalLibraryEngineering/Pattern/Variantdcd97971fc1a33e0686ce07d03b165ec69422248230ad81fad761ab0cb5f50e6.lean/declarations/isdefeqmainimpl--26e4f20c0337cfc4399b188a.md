# isDefEqMainImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56bc8950732749700430a8b9ef5d3d3efe422a11ff66d683eb2f3b5b5158fd4e",
  "kind": "def",
  "lexical_name": "isDefEqMainImpl",
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
  "slug": "isdefeqmainimpl--26e4f20c0337cfc4399b188a",
  "source": {
    "blob": "171627a1f2c4709561f698cb175364ff4dc27c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 996,
    "line": 932,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26e4f20c0337cfc4399b188a34ca88384bb9d392344b79b8f529cb9103438905",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56bc8950732749700430a8b9ef5d3d3efe422a11ff66d683eb2f3b5b5158fd4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 932–996.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDefEqMainImpl (t : Expr) (s : Expr) : DefEqM Bool := do
  if isSameExpr t s then return true
  -- **Note**: `etaReduce` is supposed to be fast, and does not allocate memory
  let t' := etaReduce t
  let s' := etaReduce s
  if !isSameExpr t t' || !isSameExpr s s' then
    isDefEqMain t' s'
  else match t, s with
  | .lit  l₁,      .lit l₂       => return l₁ == l₂
  | .sort u,       .sort v       => isLevelDefEqS u v
  | .lam ..,       .lam ..       => isDefEqBindingS t s
  | .forallE ..,   .forallE ..   => isDefEqBindingS t s
  | .mdata _ t,    _             => isDefEqMain t s
  | _,             .mdata _ s    => isDefEqMain t s
  | .fvar fvarId₁, .fvar fvarId₂ =>
    if (← read).zetaDelta then
      if fvarId₁ == fvarId₂ then return true
      let decl₁ ← fvarId₁.getDecl
      let decl₂ ← fvarId₂.getDecl
      if !decl₁.isLet && !decl₂.isLet then
        -- Both are not let-declarations
        return false
      else if decl₁.index < decl₂.index then
        -- If `s` occurs after `t` and it is a let-decl, unfold and recurse
        let some val₂ := decl₂.value? | return false
        isDefEqMain t val₂
      else
        -- If `t` occurs after `s`, and it is a let-decl, unfold and recurse
        let some val₁ := decl₁.value? | return false
        isDefEqMain val₁ s
    else
      return fvarId₁ == fvarId₂
  | .const declName₁ us₁, .const declName₂ us₂ =>
    if declName₁ == declName₂ then
      isLevelDefEqListS us₁ us₂
    else
      return false
  | .bvar _, _ | _, .bvar _ => unreachable!
  | .proj .., _ | _, .proj .. =>
    throwError "unexpected kernel projection term during structural definitional equality{indentExpr t}\nand{indentExpr s}\npre-process and fold them as projection applications"
    return false
  | .letE .., _ | _, .letE .. =>
    throwError "unexpected let-declaration term during structural definitional equality{indentExpr t}\nand{indentExpr s}\npre-process and zeta-reduce them"
    return false
  | _, _ =>
    let tFn := t.getAppFn
    let sFn := s.getAppFn
    if (← isAssignedMVar tFn) then
      isDefEqMain (← instantiateMVarsS t) s
    else if (← isAssignedMVar sFn) then
      isDefEqMain t (← instantiateMVarsS s)
    else
    whenUndefDo (tryAssignMillerPattern tFn t s rfl) do
    whenUndefDo (tryAssignMillerPattern sFn s t rfl) do
    if let .fvar fvarId₁ := t then
      unless (← read).zetaDelta do return false
      let some val₁ ← fvarId₁.getValue? | return false
      isDefEqMain val₁ s
    else if let .fvar fvarId₂ := s then
      unless (← read).zetaDelta do return false
      let some val₂ ← fvarId₂.getValue? | return false
      isDefEqMain t val₂
    else
      isDefEqApp tFn t s rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean#L932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171627a1f2c4709561f698cb175364ff4dc27c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
