# mkInjThmMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39268127153e7b66f52999462312ecb57819ab022cfecd877d23759a42afd578",
  "kind": "def",
  "lexical_name": "mkInjThmMatch",
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
  "slug": "mkinjthmmatch--445f41f8676dcc947fb2ec19",
  "source": {
    "blob": "e248d768f7eebf77dcc04ec5174d3909489147a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:445f41f8676dcc947fb2ec1912331ccfe93369897c65b061fbfc8c4131eb81a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39268127153e7b66f52999462312ecb57819ab022cfecd877d23759a42afd578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInjThmMatch (ctx : Deriving.Context) (header : Header) (indVal : InductiveVal) :
    TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName₁ in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName₁
      for ctorName₂ in indVal.ctors do
        let mut patterns := #[]
        for _ in [:indVal.numIndices] do
          patterns := patterns.push (← `(_))
        patterns := patterns ++ #[(← `($(mkIdent ctorName₁) ..)), (← `($(mkIdent ctorName₂) ..))]
        if ctorName₁ == ctorName₂ then
          alts := alts.push <| ← forallTelescopeReducing ctorInfo.type fun xs _ => do
            let mut tactics : Array (TSyntax `tactic) := #[]
            for i in [:ctorInfo.numFields] do
              let x := xs[indVal.numParams + i]!
              let xTy ← inferType x
              let recName? :=
                ctx.typeInfos.findIdx? (xTy.isAppOf ·.name) |>.map (ctx.auxFunNames[·]!)
              tactics := tactics.push <| ←
                if let some recName := recName? then
                  `(tactic| (
                    refine $(mkCIdent ``cons_eq_imp) ?_;
                    intro h;
                    cases $(mkIdent recName) _ _ h
                  ))
                else
                  `(tactic| (
                    refine $(mkCIdent ``pair_encode_step) ?_;
                    rintro ⟨⟩
                  ))
            tactics := tactics.push (← `(tactic| (intro; rfl)))
            `(matchAltExpr| | $[$patterns:term],* => cons_eq_imp_init (by $tactics:tactic*))
        else if (← compatibleCtors ctorName₁ ctorName₂) then
          let rhs ← ``(cons_eq_imp (by rintro ⟨⟩))
          alts := alts.push (← `(matchAltExpr| | $[$patterns:term],* => $rhs:term))
    return alts

/-- Constructs a proof that the functions created by `mkToNatFuns` are injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e248d768f7eebf77dcc04ec5174d3909489147a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
