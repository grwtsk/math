# mkMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94290f49b84141ec630b632143ffd3c3e2de733238eb2646363c6e43f9049be0",
  "kind": "def",
  "lexical_name": "mkMatch",
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
  "slug": "mkmatch--a313cfb304ab7e32ccdfac7f",
  "source": {
    "blob": "77932d73a9c80cb63bdb09d73e83db6e5d8d3592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a313cfb304ab7e32ccdfac7f10c06d84d0f7c71f4d655f00cbcb9b4d2a9bec39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94290f49b84141ec630b632143ffd3c3e2de733238eb2646363c6e43f9049be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMatch (ctx : Context) (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where

  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    let mut ctorIdx := 0
    let allIndVals := indVal.all.toArray
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut patterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        let mut ctorArgs := #[]
        let mut rhs ← `($(quote ctorIdx))
        -- add `_` for inductive parameters, they are inaccessible
        for _ in *...indVal.numParams do
          ctorArgs := ctorArgs.push (← `(_))
        for i in *...ctorInfo.numFields do
          let x := xs[indVal.numParams + i]!
          let a := mkIdent (← mkFreshUserName `a)
          ctorArgs := ctorArgs.push a
          let xTy ← whnf (← inferType x)
          match xTy.getAppFn with
          | .const declName .. =>
            match allIndVals.findIdx? (· == declName) with
            | some x => rhs ← `(mixHash $rhs ($(mkIdent ctx.auxFunNames[x]!) $a:ident))
            | none => rhs ← `(mixHash $rhs (hash $a:ident))
          | _ => rhs ← `(mixHash $rhs (hash $a:ident))
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs:term*))
        `(matchAltExpr| | $[$patterns:term],* => $rhs:term)
      alts := alts.push alt
      ctorIdx := ctorIdx + 1
    return alts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77932d73a9c80cb63bdb09d73e83db6e5d8d3592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
