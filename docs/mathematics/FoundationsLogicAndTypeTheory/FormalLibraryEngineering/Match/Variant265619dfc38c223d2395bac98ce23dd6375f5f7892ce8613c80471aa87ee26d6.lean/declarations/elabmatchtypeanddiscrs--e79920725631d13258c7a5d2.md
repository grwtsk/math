# elabMatchTypeAndDiscrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39e350cbf79d5a0a33efa7a280290893566590926e4aaa50aaae97e00b615060",
  "kind": "def",
  "lexical_name": "elabMatchTypeAndDiscrs",
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
  "slug": "elabmatchtypeanddiscrs--e79920725631d13258c7a5d2",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e79920725631d13258c7a5d292f0fb05f1a9763eadb13e110ea84288d170f6a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39e350cbf79d5a0a33efa7a280290893566590926e4aaa50aaae97e00b615060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def elabMatchTypeAndDiscrs (discrStxs : Array Syntax) (matchOptMotive : Syntax) (matchAltViews : Array TermMatchAltView) (expectedType : Expr)
      : TermElabM ElabMatchTypeAndDiscrsResult := do
  if matchOptMotive.isNone then
    elabDiscrs 0 #[]
  else
    -- motive := leading_parser atomic ("(" >> nonReservedSymbol "motive" >> " := ") >> termParser >> ")"
    let matchTypeStx := matchOptMotive[0][3]
    let matchType ← elabType matchTypeStx
    let (discrs, isDep) ← elabDiscrsWithMatchType matchType
    return { discrs := discrs, matchType := matchType, isDep := isDep, alts := matchAltViews }
where
  /-- Easy case: elaborate discriminant when the match-type has been explicitly provided by the user.  -/
  elabDiscrsWithMatchType (matchType : Expr) : TermElabM (Array Discr × Bool) := do
    let mut discrs := #[]
    let mut i := 0
    let mut matchType := matchType
    let mut isDep := false
    for discrStx in discrStxs do
      i := i + 1
      matchType ← whnf matchType
      match matchType with
      | Expr.forallE _ d b _ =>
        let discr ← fullApproxDefEq <| elabTermEnsuringType discrStx[1] d
        trace[Elab.match] "discr #{i} {discr} : {d}"
        if b.hasLooseBVars then
          isDep := true
        matchType := b.instantiate1 discr
        discrs := discrs.push { expr := discr }
      | _ =>
        throwError "Invalid motive provided to match-expression: Function type with arity {discrStxs.size} expected"
    return (discrs, isDep)

  markIsDep (r : ElabMatchTypeAndDiscrsResult) :=
    { r with isDep := true }

  expandDiscrIdent : Syntax → MetaM Syntax
    | stx@`(_) => mkFreshDiscrIdentFrom stx
    | stx => return stx

  /-- Elaborate discriminants inferring the match-type -/
  elabDiscrs (i : Nat) (discrs : Array Discr) : TermElabM ElabMatchTypeAndDiscrsResult := do
    if h : i < discrStxs.size then
      let discrStx := discrStxs[i]
      let discr     ← elabAtomicDiscr discrStx
      let discr     ← instantiateMVars discr
      let userName ← mkUserNameFor discr
      let h? ←
        if discrStx[0].isNone then
          pure none
        else
          let h ← expandDiscrIdent discrStx[0][0]
          pure (some h)
      let discrs := discrs.push { expr := discr, h? }
      let mut result ← elabDiscrs (i + 1) discrs
      let matchTypeBody ← kabstract result.matchType discr
      if matchTypeBody.hasLooseBVars then
        result := markIsDep result
      /-
        We use `transform (usedLetOnly := true)` to eliminate unnecessary let-expressions.
        This transformation was added to address issue #1155, and avoid an unnecessary dependency.
        In issue #1155, `discrType` was of the form `let _discr := OfNat.ofNat ... 0 ?m; ...`, and not removing
        the unnecessary `let-expr` was introducing an artificial dependency to `?m`.
        TODO: make sure that even when this kind of artificial dependency occurs we catch it before sending
        the term to the kernel.
      -/
      let discrType ← transform (usedLetOnly := true) (← instantiateMVars (← inferType discr))
      let matchType := Lean.mkForall userName BinderInfo.default discrType matchTypeBody
      return { result with matchType }
    else
      return { discrs, alts := matchAltViews, isDep := false, matchType := expectedType }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
