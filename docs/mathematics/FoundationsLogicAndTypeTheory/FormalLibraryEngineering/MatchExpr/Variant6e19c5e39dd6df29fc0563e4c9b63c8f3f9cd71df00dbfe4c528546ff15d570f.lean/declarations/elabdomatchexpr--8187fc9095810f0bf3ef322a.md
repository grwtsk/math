# elabDoMatchExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf4e59400a3bddbe0ca2d3f6c2eedfd01bb9c020682745f5b33eff8e526bc765",
  "kind": "def",
  "lexical_name": "elabDoMatchExpr",
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
  "slug": "elabdomatchexpr--8187fc9095810f0bf3ef322a",
  "source": {
    "blob": "d9cdd0ec15c9a128f0774a6af3e73b34bbe6021b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8187fc9095810f0bf3ef322ae955d43eabb9a4ac9e49c61edbdd2d6cb902b5a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf4e59400a3bddbe0ca2d3f6c2eedfd01bb9c020682745f5b33eff8e526bc765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doMatchExpr] def elabDoMatchExpr : DoElab := fun stx dec => do
  let `(doMatchExpr| match_expr $[(meta := false)%$metaFalseTk?]? $discr with $alts) := stx | throwUnsupportedSyntax
  let info ← inferControlInfoElem stx
  if metaFalseTk?.isNone then -- i.e., implicitly (meta := true)
    let x := mkIdentFrom discr (← mkFreshUserName `__x)
    elabDoIdDecl x none (← `(doElem| instantiateMVarsIfMVarApp $discr)) do
      elabDoMatchExprNoMeta info x alts dec
  else
    elabDoMatchExprNoMeta info discr alts dec
where elabDoMatchExprNoMeta (info : ControlInfo) (discr : Term) (alts : TSyntax ``matchExprAlts) (dec : DoElemCont) : DoElabM Expr := do
  dec.withDuplicableCont info fun dec => do
    let rec elabMatch i (altsArr : Array (TSyntax ``matchExprAlt)) := do
      if h : i < altsArr.size then
        match altsArr[i] with
        | `(matchExprAltExpr| | $pattern => $seq) =>
          let vars ← getExprPatternVarsEx pattern
          checkMutVarsForShadowing vars
          doElabToSyntax m!"match_expr alternative {pattern}" (ref := seq) (elabDoSeq ⟨seq⟩ dec) fun rhs => do
            elabMatch (i + 1) (altsArr.set i (← `(matchExprAltExpr| | $pattern => $rhs)))
        | _ => throwUnsupportedSyntax
      else
        let elseSeq := alts.raw[1][3]
        doElabToSyntax m!"match_expr else alternative" (ref := elseSeq) (elabDoSeq ⟨elseSeq⟩ dec) fun rhs => do
          let alts : TSyntax ``matchExprAlts := ⟨alts.raw.modifyArg 0 fun node => node.setArgs altsArr⟩
          let alts : TSyntax ``matchExprAlts := ⟨alts.raw.modifyArg 1 (·.setArg 3 rhs)⟩
          let mγ ← mkMonadApp (← read).doBlockResultType
          Term.elabTerm (← `(match_expr $discr with $alts)) mγ
    elabMatch 0 (alts.raw[0].getArgs.map (⟨·⟩))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchExpr/Variant6e19c5e39dd6df29fc0563e4c9b63c8f3f9cd71df00dbfe4c528546ff15d570f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9cdd0ec15c9a128f0774a6af3e73b34bbe6021b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
