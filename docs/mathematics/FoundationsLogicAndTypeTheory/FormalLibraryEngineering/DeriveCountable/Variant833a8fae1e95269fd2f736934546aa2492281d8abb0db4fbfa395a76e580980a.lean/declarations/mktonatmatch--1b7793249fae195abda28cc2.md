# mkToNatMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e9e0d31403e97aafbc29b91cf815f9f9915bdfd40b8c3404f3a81c1b3b720ee",
  "kind": "def",
  "lexical_name": "mkToNatMatch",
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
  "slug": "mktonatmatch--1b7793249fae195abda28cc2",
  "source": {
    "blob": "8c7f7f49532428ff4307448e2112f3d86caa7138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b7793249fae195abda28cc20f9d001f13dd09dd3c6ecf1ded61b3182183b2dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e9e0d31403e97aafbc29b91cf815f9f9915bdfd40b8c3404f3a81c1b3b720ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkToNatMatch (ctx : Deriving.Context) (header : Header) (indVal : InductiveVal)
    (toFunNames : Array Name) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      alts := alts.push <| ← forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut patterns := #[]
        let mut ctorArgs := #[]
        let mut rhsArgs : Array Term := #[]
        for _ in [:indVal.numIndices] do
          patterns := patterns.push (← `(_))
        for _ in [:ctorInfo.numParams] do
          ctorArgs := ctorArgs.push (← `(_))
        for i in [:ctorInfo.numFields] do
          let a := mkIdent (← mkFreshUserName `a)
          ctorArgs := ctorArgs.push a
          let x := xs[ctorInfo.numParams + i]!
          let xTy ← inferType x
          let recName? := ctx.typeInfos.findIdx? (xTy.isAppOf ·.name) |>.map (toFunNames[·]!)
          rhsArgs := rhsArgs.push <| ←
            if let some recName := recName? then
              `($(mkIdent recName) $a)
            else
              ``(encode $a)
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs:term*))
        let rhs' : Term ← rhsArgs.foldrM (init := ← `(0)) fun arg acc => ``(Nat.pair $arg $acc)
        let rhs : Term ← ``(Nat.pair $(quote ctorInfo.cidx) $rhs')
        `(matchAltExpr| | $[$patterns:term],* => $rhs)
    return alts

/-- Constructs a function from the inductive type to `Nat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c7f7f49532428ff4307448e2112f3d86caa7138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
