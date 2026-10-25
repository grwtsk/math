# markNestedSubsingletons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:022d283c7ae377bccae716934fcbf544353acd19a7ae0b349276bcc1669057e4",
  "kind": "def",
  "lexical_name": "markNestedSubsingletons",
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
  "slug": "marknestedsubsingletons--396e0a1f5617d3165ceaa5d1",
  "source": {
    "blob": "43dd6675627a1e4247b477e211f73ac8d85b25a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkNestedSubsingletons/Variant919538be829138a5642e054f4168837cda60344cf3ddc4b47ef6cd5c2c0e1aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:396e0a1f5617d3165ceaa5d109bdc16147708201a06e94da33476d9eae736460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkNestedSubsingletons/Variant919538be829138a5642e054f4168837cda60344cf3ddc4b47ef6cd5c2c0e1aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:022d283c7ae377bccae716934fcbf544353acd19a7ae0b349276bcc1669057e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def markNestedSubsingletons (e : Expr) : GrindM Expr := do profileitM Exception "grind mark subsingleton" (← getOptions) do
  visit e |>.run' {}
where
  visit (e : Expr) : M Expr := do
    if isMarkedSubsingletonApp e then
      return e -- `e` is already marked
    -- check whether result is cached
    if let some r := (← get).get? { expr := e } then
      return r
    -- check whether `e` is a proposition or `Decidable`
    let type ← inferType e
    if (← isProp type) then
      let e' := mkApp2 (mkConst ``Grind.nestedProof) (← preprocess type) e
      modify fun s => s.insert { expr := e } e'
      return e'
    if let some p ← isDecidable type then
      let e' := mkApp2 (mkConst ``Grind.nestedDecidable) (← preprocess p) e
      modify fun s => s.insert { expr := e } e'
      return e'
    -- Remark: we have to process `Expr.proj` since we only
    -- fold projections later during term internalization
    unless e.isApp || e.isForall || e.isProj || e.isMData do
      return e
    let e' ← match e with
      | .app .. => e.withApp fun f args => do
        let mut modified := false
        let mut args := args.toVector
        for h : i in *...args.size do
          let arg := args[i]
          let arg' ← visit arg
          unless isSameExpr arg arg' do
            args := args.set i arg'
            modified := true
        if modified then
          pure <| mkAppN f args.toArray
        else
          pure e
      | .proj _ _ b =>
        pure <| e.updateProj! (← visit b)
      | .mdata _ b =>
        pure <| e.updateMData! (← visit b)
      | .forallE _ d b _ =>
        -- Recall that we have `ForallProp.lean`.
        let d' ← visit d
        let b' ← if b.hasLooseBVars then pure b else visit b
        pure <| e.updateForallE! d' b'
      | _ => unreachable!
    modify fun s => s.insert { expr := e } e'
    return e'

  preprocess (e : Expr) : M Expr := do
    /-
    **Note**: We must use `instantiateMVars` here because this function is called using the result of `inferType`.
    -/
    let e ← instantiateMVars e
    /-
    We must unfold reducible constants occurring in `prop` because the congruence closure
    module in `grind` assumes they have been expanded.
    See `grind_mark_nested_proofs_bug.lean` for an example.
    TODO: We may have to normalize `prop` too.
    -/
    /- We must also apply beta-reduction to improve the effectiveness of the congruence closure procedure. -/
    let e ← Core.betaReduce e
    let e ← Sym.unfoldReducible e
    /- We must mask proofs occurring in `prop` too. -/
    let e ← visit e
    let e ← eraseIrrelevantMData e
    /- We must fold kernel projections like it is done in the preprocessor. -/
    let e ← foldProjs e
    Sym.normalizeLevels e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkNestedSubsingletons/Variant919538be829138a5642e054f4168837cda60344cf3ddc4b47ef6cd5c2c0e1aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkNestedSubsingletons/Variant919538be829138a5642e054f4168837cda60344cf3ddc4b47ef6cd5c2c0e1aee.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43dd6675627a1e4247b477e211f73ac8d85b25a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
