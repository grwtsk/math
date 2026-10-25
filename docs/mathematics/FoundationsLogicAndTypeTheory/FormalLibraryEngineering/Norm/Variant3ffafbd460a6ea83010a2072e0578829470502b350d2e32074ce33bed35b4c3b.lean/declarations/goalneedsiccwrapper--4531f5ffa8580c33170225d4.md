# goalNeedsIccWrapper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb0ca24781c52cc6dba9b88af95fabddf844a762ef55ac034d2876befef6404a",
  "kind": "def",
  "lexical_name": "goalNeedsIccWrapper",
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
  "slug": "goalneedsiccwrapper--4531f5ffa8580c33170225d4",
  "source": {
    "blob": "a9fd6950affa10170ae75eb4fc46bfa889ec284e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4531f5ffa8580c33170225d48d33af133fd515c61c9cea018d184403a3c08b4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb0ca24781c52cc6dba9b88af95fabddf844a762ef55ac034d2876befef6404a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def goalNeedsIccWrapper (goalType : Lean.Expr) : MetaM Bool := do
  let goalType ← whnf goalType
  if !goalType.isForall then
    return false
  let .forallE name ty body _ := goalType | return false
  withLocalDeclD name ty fun x => do
    let bodyRaw := body.instantiate1 x
    let bodyWhnf ← whnf bodyRaw
    if !bodyWhnf.isForall then
      return false
    let .forallE _ memTy innerBody _ := bodyWhnf | return false
    let memTyRaw :=
      match bodyRaw with
      | .forallE _ memTyRaw _ _ => memTyRaw
      | _ => memTy

    let isMembership : MetaM Bool := do
      match_expr memTyRaw with
      | Membership.mem _ _ _ _ _ => return true
      | _ => return false

    if (← isMembership) then
      return false

    let isAnd (e : Lean.Expr) : Bool :=
      match e with
      | .app (.app (.const ``And _) _) _ => true
      | _ => false

    let getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
      let fn := e.getAppFn
      let args := e.getAppArgs
      if fn.isConstOf ``LE.le && args.size >= 4 then
        return some (args[2]!, args[3]!)
      if fn.isConstOf ``LT.lt && args.size >= 4 then
        return some (args[2]!, args[3]!)
      return none

    let isBoundProp (e : Lean.Expr) : MetaM Bool := do
      if let some (a, b) ← getLeArgs e then
        if (← isDefEq a x) || (← isDefEq b x) then
          return true
      return false

    let memTyWhnf ← withTransparency TransparencyMode.all <| whnf memTy
    if isAnd memTy || isAnd memTyWhnf then
      return true

    if innerBody.isForall then
      let .forallE _ memTy2 _ _ := innerBody | return false
      let memTy2Whnf ← withTransparency TransparencyMode.all <| whnf memTy2
      if (← isBoundProp memTy) || (← isBoundProp memTyWhnf) then
        if (← isBoundProp memTy2) || (← isBoundProp memTy2Whnf) then
          return true
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant3ffafbd460a6ea83010a2072e0578829470502b350d2e32074ce33bed35b4c3b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fd6950affa10170ae75eb4fc46bfa889ec284e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
