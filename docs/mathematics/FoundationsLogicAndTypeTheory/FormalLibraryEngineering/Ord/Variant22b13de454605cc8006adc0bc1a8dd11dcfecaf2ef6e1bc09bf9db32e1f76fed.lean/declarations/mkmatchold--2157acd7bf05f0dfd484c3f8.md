# mkMatchOld

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a224c47a9eca8c5044bb5a336cd4f3f86f4a49d0c2193abab017bf803d0da7e9",
  "kind": "def",
  "lexical_name": "mkMatchOld",
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
  "slug": "mkmatchold--2157acd7bf05f0dfd484c3f8",
  "source": {
    "blob": "cf7a7321999c116a59abc095dcdd97f3658fdef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2157acd7bf05f0dfd484c3f8c02b7b7f0c848f5ed765e23006abd986d7d75e4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a224c47a9eca8c5044bb5a336cd4f3f86f4a49d0c2193abab017bf803d0da7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatchOld (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs type => do
        let type ← Core.betaReduce type -- we 'beta-reduce' to eliminate "artificial" dependencies
        let mut indPatterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          indPatterns := indPatterns.push (← `(_))
        let mut ctorArgs1 := #[]
        let mut ctorArgs2 := #[]
        -- construct RHS top-down as continuation over the remaining comparison
        let mut rhsCont : Term → TermElabM Term := fun rhs => pure rhs
        -- add `_` for inductive parameters, they are inaccessible
        for _ in *...indVal.numParams do
          ctorArgs1 := ctorArgs1.push (← `(_))
          ctorArgs2 := ctorArgs2.push (← `(_))
        for i in *...ctorInfo.numFields do
          let x := xs[indVal.numParams + i]!
          if (← isProof x) then
            -- If resulting type depends on this field or is a proof, we don't need to compare
            ctorArgs1 := ctorArgs1.push (← `(_))
            ctorArgs2 := ctorArgs2.push (← `(_))
          else if occursOrInType (← getLCtx) x type then
            -- If resulting type depends on this field, we don't need to compare
            -- but use inaccessible patterns fail during pattern match compilation if their
            -- equality does not actually follow from the equality between their types
            let a := mkIdent (← mkFreshUserName `a)
            ctorArgs1 := ctorArgs1.push a
            ctorArgs2 := ctorArgs2.push (← `(term|.( $a:ident )))
          else
            let a := mkIdent (← mkFreshUserName `a)
            let b := mkIdent (← mkFreshUserName `b)
            ctorArgs1 := ctorArgs1.push a
            ctorArgs2 := ctorArgs2.push b
            rhsCont := fun rhs => `(Ordering.then (compare $a $b) $rhs) >>= rhsCont
        let lPat ← `(@$(mkIdent ctorName):ident $ctorArgs1:term*)
        let rPat ← `(@$(mkIdent ctorName):ident $ctorArgs2:term*)
        let patterns := indPatterns ++ #[lPat, rPat]
        let ltPatterns := indPatterns ++ #[lPat, ←`(_)]
        let gtPatterns := indPatterns ++ #[←`(_), lPat] -- Use the lPat again, we don’t want the `.(a)` pattern here
        let rhs ← rhsCont (← `(Ordering.eq))
        pure #[←`(matchAltExpr| | $[$(patterns):term],* => $rhs:term),
               ←`(matchAltExpr| | $[$(ltPatterns):term],* => Ordering.lt),
               ←`(matchAltExpr| | $[$(gtPatterns):term],* => Ordering.gt)]
      alts := alts ++ (alt : Array (TSyntax ``matchAlt))
    return alts.pop.pop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7a7321999c116a59abc095dcdd97f3658fdef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
