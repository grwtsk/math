# mkMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fdef17141dc1859b4a7c43b3ae008b020a002c47dd8919e92155feb839b3d7a",
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
  "slug": "mkmatch--c5cc272cd6d6a3121e57d844",
  "source": {
    "blob": "67feeac992d48d8e583b154bc6c87b0fbc01f1ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantb5d2614ebf29b6b27987a65c27a55e56c005f4dd9e1ad8f88358b5ecf61d7bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5cc272cd6d6a3121e57d8443e4b5877802d2da450c776d9be96be35efcf878e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantb5d2614ebf29b6b27987a65c27a55e56c005f4dd9e1ad8f88358b5ecf61d7bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fdef17141dc1859b4a7c43b3ae008b020a002c47dd8919e92155feb839b3d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–69.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantb5d2614ebf29b6b27987a65c27a55e56c005f4dd9e1ad8f88358b5ecf61d7bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hashable/Variantb5d2614ebf29b6b27987a65c27a55e56c005f4dd9e1ad8f88358b5ecf61d7bb3.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67feeac992d48d8e583b154bc6c87b0fbc01f1ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
