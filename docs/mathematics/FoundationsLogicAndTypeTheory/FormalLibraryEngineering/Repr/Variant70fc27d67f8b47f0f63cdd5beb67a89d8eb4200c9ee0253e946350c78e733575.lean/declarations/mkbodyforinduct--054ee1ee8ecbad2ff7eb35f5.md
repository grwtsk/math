# mkBodyForInduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd8edbabd7d9856719f131f8470b1484e3549fd515e833b134b982e14e7362f2",
  "kind": "def",
  "lexical_name": "mkBodyForInduct",
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
  "slug": "mkbodyforinduct--054ee1ee8ecbad2ff7eb35f5",
  "source": {
    "blob": "bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:054ee1ee8ecbad2ff7eb35f5c5f8fd6f795e3f8c4bbb8553ada67d54c398b827",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd8edbabd7d9856719f131f8470b1484e3549fd515e833b134b982e14e7362f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBodyForInduct (header : Header) (indVal : InductiveVal) (auxFunName : Name) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut patterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        let mut ctorArgs := #[]
        let mut rhs : Term := Syntax.mkStrLit (toString ctorInfo.name)
        rhs ← `(Format.text $rhs)
        for h : i in *...xs.size do
          -- Note: some inductive parameters are explicit if they were promoted from indices,
          -- so we process all constructor arguments in the same loop.
          let x := xs[i]
          let a ← mkIdent <$> if i < indVal.numParams then pure header.argNames[i]! else mkFreshUserName `a
          if i < indVal.numParams then
            -- add `_` for inductive parameters, they are inaccessible
            ctorArgs := ctorArgs.push (← `(_))
          else
            ctorArgs := ctorArgs.push a
          if (← x.fvarId!.getBinderInfo).isExplicit then
            if (← inferType x).isAppOf indVal.name then
              rhs ← `($rhs ++ Format.line ++ $(mkIdent auxFunName):ident $a:ident max_prec)
            else if (← isType x <||> isProof x) then
              rhs ← `($rhs ++ Format.line ++ "_")
            else
              rhs ← `($rhs ++ Format.line ++ reprArg $a)
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs:term*))
        `(matchAltExpr| | $[$patterns:term],* => Repr.addAppParen (Format.group (Format.nest (if prec >= max_prec then 1 else 2) ($rhs:term))) prec)
      alts := alts.push alt
    return alts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repr/Variant70fc27d67f8b47f0f63cdd5beb67a89d8eb4200c9ee0253e946350c78e733575.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9d3b1ff2e5d5c254e58c64ef2ff6897186ef5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
