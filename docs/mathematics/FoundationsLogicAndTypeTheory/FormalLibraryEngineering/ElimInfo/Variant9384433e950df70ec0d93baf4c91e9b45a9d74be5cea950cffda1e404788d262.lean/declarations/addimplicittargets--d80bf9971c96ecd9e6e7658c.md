# addImplicitTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfe8aeabaf744d8f710cebe8b68caf9c7717d350b6c7c1ac897d27e16f756dd8",
  "kind": "def",
  "lexical_name": "addImplicitTargets",
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
  "slug": "addimplicittargets--d80bf9971c96ecd9e6e7658c",
  "source": {
    "blob": "6d04bc364fef41a70cb3841fe77e5401bd70cb32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d80bf9971c96ecd9e6e7658cfb4164f7be5ceef75ee71178158fe38d9b934122",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfe8aeabaf744d8f710cebe8b68caf9c7717d350b6c7c1ac897d27e16f756dd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addImplicitTargets (elimInfo : ElimInfo) (targets : Array Expr) : MetaM (Array Expr) := do
  let (implicitMVars, targets) ← collect elimInfo.elimType 0 0 #[] #[]
  for mvar in implicitMVars do
    unless ← mvar.isAssigned do
      let name := (←mvar.getDecl).userName
      if name.isAnonymous || name.hasMacroScopes then
        throwError "Failed to infer implicit target"
      else
        throwError "Failed to infer implicit target `{(←mvar.getDecl).userName}`"
  targets.mapM instantiateMVars
where
  collect (type : Expr) (argIdx targetIdx : Nat) (implicits : Array MVarId) (targets' : Array Expr) :
      MetaM (Array MVarId × Array Expr) := do
    match (← whnfD type) with
    | Expr.forallE n d b bi =>
      if elimInfo.targetsPos.contains argIdx then
        if bi.isExplicit then
          unless targetIdx < targets.size do
            throwError "Insufficient number of targets for `{elimInfo.elimExpr}`"
          let target := targets[targetIdx]!
          let targetType ← inferType target
          unless (← isDefEq d targetType) do
            throwError "Invalid target:{indentExpr target}\n{← mkHasTypeButIsExpectedMsg targetType d}"
          collect (b.instantiate1 target) (argIdx+1) (targetIdx+1) implicits (targets'.push target)
        else
          let implicitTarget ← mkFreshExprMVar (type? := d) (userName := n)
          collect (b.instantiate1 implicitTarget) (argIdx+1) targetIdx (implicits.push implicitTarget.mvarId!) (targets'.push implicitTarget)
      else
        collect (b.instantiate1 (← mkFreshExprMVar d)) (argIdx+1) targetIdx implicits targets'
    | _ =>
      unless targetIdx = targets.size do
        throwError "Too many targets for `{elimInfo.elimExpr}`"
      return (implicits, targets')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d04bc364fef41a70cb3841fe77e5401bd70cb32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
