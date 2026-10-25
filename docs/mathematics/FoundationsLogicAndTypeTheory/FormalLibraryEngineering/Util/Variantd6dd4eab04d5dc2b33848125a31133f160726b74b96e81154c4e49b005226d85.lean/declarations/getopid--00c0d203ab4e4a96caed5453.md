# getOpId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d2fd1b15d6e963ec9bcb19838322d68d3a01d5e416ba3bc747b60c92cc4e929",
  "kind": "def",
  "lexical_name": "getOpId?",
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
  "slug": "getopid--00c0d203ab4e4a96caed5453",
  "source": {
    "blob": "45ba97aeb5b8bd82d3d78f6d0d6b1dcad24aa0d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00c0d203ab4e4a96caed54539ee40f354981a8dc36d9c27a73afcf4f97fb6ec9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d2fd1b15d6e963ec9bcb19838322d68d3a01d5e416ba3bc747b60c92cc4e929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getOpId? (op : Expr) : GoalM (Option Nat) := do
  if let some id? := (← get').opIdOf.find? { expr := op } then
    return id?
  let id? ← go
  modify' fun s => { s with opIdOf := s.opIdOf.insert { expr := op } id? }
  return id?
where
  go : GoalM (Option Nat) := do
    let f := op.getAppFn
    if let .const declName _ := f then
      if notAssoc.contains declName then return none
    let .forallE _ α b _ ← whnf (← inferType op) | return none
    if b.hasLooseBVars then return none
    let .forallE _ α₂ α₃ _ ← whnf b | return none
    if α₃.hasLooseBVars then return none
    unless (← isDefEq α α₂) do return none
    unless (← isDefEq α α₃) do return none
    if (← isArithOpInOtherModules op f) then return none
    let u ← getLevel α
    let assocType := mkApp2 (mkConst ``Std.Associative [u]) α op
    let some assocInst ← synthInstance? assocType | return none
    let commType := mkApp2 (mkConst ``Std.Commutative [u]) α op
    let commInst? ← synthInstance? commType
    let idempotentType := mkApp2 (mkConst ``Std.IdempotentOp [u]) α op
    let idempotentInst? ← synthInstance? idempotentType
    let (neutralInst?, neutral?) ← do
      let neutral ← mkFreshExprMVar α
      let identityType := mkApp3 (mkConst ``Std.LawfulIdentity [u]) α op neutral
      if let some identityInst ← synthInstance? identityType then
        let neutral ← instantiateExprMVars neutral
        /-
        **Note**: `Std.LawfulIdentity` instances may spell the identity element in a form
        that is not in `grind` normal form. Example: the `BitVec` instances use `0#n`
        (i.e., `BitVec.ofNat n 0`), but the `grind` normalizer represents bit-vector literals
        using `OfNat.ofNat`. Internalizing a non-canonical literal violates the invariant that
        interpreted nodes are canonical: `grind` assumes distinct interpreted nodes denote
        distinct values (see `valueInconsistency` at `addEqStep`). We cannot `simp`-normalize
        `neutral` here: the result would be only propositionally equal to the identity element
        fixed by `identityInst`, and we need a definitionally equal term.
        We hardcode the bit-vector case for now. **TODO**: fix this properly in a separate commit.
        -/
        let neutral ← if let some ⟨w, v⟩ ← getBitVecValue? neutral then
          mkNumeral (mkApp (mkConst ``BitVec) (mkNatLit w)) v.toNat
        else
          pure neutral
        let neutral ← preprocessLight neutral
        internalize neutral (← getGeneration op)
        pure (some identityInst, some neutral)
      else
        pure (none, none)
    let id := (← get').structs.size
    modify' fun s => { s with
      structs := s.structs.push {
        id, type := α, u, op, neutral?, assocInst, commInst?,
        idempotentInst?, neutralInst?
    }}
    trace[grind.debug.ac.op] "{op}, comm: {commInst?.isSome}, idempotent: {idempotentInst?.isSome}, neutral?: {neutral?}"
    if let some neutral := neutral? then ACM.run id do
      -- Create neutral variable to ensure it is variable 0
      discard <| mkVar neutral
    return some id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantd6dd4eab04d5dc2b33848125a31133f160726b74b96e81154c4e49b005226d85.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45ba97aeb5b8bd82d3d78f6d0d6b1dcad24aa0d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
