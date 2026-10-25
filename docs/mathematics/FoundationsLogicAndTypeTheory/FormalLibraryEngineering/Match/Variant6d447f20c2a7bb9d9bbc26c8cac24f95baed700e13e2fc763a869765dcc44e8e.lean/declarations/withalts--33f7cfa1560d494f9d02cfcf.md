# withAlts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7287063bea725d7522917e6dd027576c9a257b3ebc80038c945fd085bc30da2",
  "kind": "def",
  "lexical_name": "withAlts",
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
  "slug": "withalts--33f7cfa1560d494f9d02cfcf",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33f7cfa1560d494f9d02cfcfb051a0047a5cbfff324e6d753c19cc9cf39ee0ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7287063bea725d7522917e6dd027576c9a257b3ebc80038c945fd085bc30da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withAlts {α} (motive : Expr) (discrs : Array Expr) (discrInfos : Array DiscrInfo)
    (lhss : List AltLHS) (isSplitter : Option Overlaps)
    (k : List Alt → Array Expr → Array AltParamInfo → MetaM α) : MetaM α :=
  loop lhss [] #[] #[] #[]
where
  mkSplitterHyps (idx : Nat) (lhs : AltLHS) (notAlts : Array Expr) : MetaM (Array Expr × Array Nat) := do
    withExistingLocalDecls lhs.fvarDecls do
      let patterns ← lhs.patterns.toArray.mapM (Pattern.toExpr · (annotate := true))
      let mut hs := #[]
      let mut notAltIdxs := #[]
      for overlappingIdx in isSplitter.get!.overlapping idx do
        let notAlt := notAlts[overlappingIdx]!
        let h ← instantiateForall notAlt patterns
        if let some h ← simpH? h patterns.size then
          notAltIdxs := notAltIdxs.push overlappingIdx
          hs := hs.push h
      trace[Meta.Match.debug] "hs for {lhs.ref}: {hs}"
      return (hs, notAltIdxs)

  mkMinorType (xs : Array Expr) (lhs : AltLHS) (notAltHs : Array Expr): MetaM Expr :=
    withExistingLocalDecls lhs.fvarDecls do
      let args ← lhs.patterns.toArray.mapM (Pattern.toExpr · (annotate := true))
      let minorType := mkAppN motive args
      withEqs discrs args discrInfos fun eqs => do
        let minorType ← mkForallFVars eqs minorType
        let minorType ← mkArrowN notAltHs minorType
        mkForallFVars xs minorType

  mkNotAlt (xs : Array Expr) (lhs : AltLHS) : MetaM Expr := do
    withExistingLocalDecls lhs.fvarDecls do
      let mut notAlt := mkConst ``False
      for discr in discrs.reverse, pattern in lhs.patterns.reverse do
        notAlt ← mkArrow (← mkEqHEq discr (← pattern.toExpr)) notAlt
      notAlt ← mkForallFVars (discrs ++ xs) notAlt
      return notAlt

  loop (lhss : List AltLHS) (alts : List Alt) (minors : Array Expr) (altInfos : Array AltParamInfo) (notAlts : Array Expr) : MetaM α := do
    match lhss with
    | [] => k alts.reverse minors altInfos
    | lhs::lhss =>
      let idx       := alts.length
      let xs := lhs.fvarDecls.toArray.map LocalDecl.toExpr
      let (notAltHs, notAltIdxs) ← if isSplitter.isSome then mkSplitterHyps idx lhs notAlts else pure (#[], #[])
      let minorType ← mkMinorType xs lhs notAltHs
      let notAlt ← mkNotAlt xs lhs
      let hasParams := !xs.isEmpty || !notAltHs.isEmpty || discrInfos.any fun info => info.hName?.isSome
      let minorType := if hasParams then minorType else mkSimpleThunkType minorType
      let minorName := (`h).appendIndexAfter (idx+1)
      trace[Meta.Match.debug] "minor premise {minorName} : {minorType}"
      withLocalDeclD minorName minorType fun minor => do
        let rhs    := if hasParams then mkAppN minor xs else mkApp minor (mkConst `Unit.unit)
        let minors := minors.push minor
        let altInfos := altInfos.push { numFields := xs.size, numOverlaps := notAltHs.size, hasUnitThunk := !hasParams }
        let fvarDecls ← lhs.fvarDecls.mapM instantiateLocalDeclMVars
        let alt    := { ref := lhs.ref, idx := idx, rhs := rhs, fvarDecls := fvarDecls, patterns := lhs.patterns, cnstrs := [], notAltIdxs := notAltIdxs }
        let alts   := alt :: alts
        loop lhss alts minors altInfos (notAlts.push notAlt)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
