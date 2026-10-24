# getCommSemiringId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41801a45b24492198e7c9a6cfbb4eeb3a320f29d87b7989d8cc9a82cc69dafec",
  "kind": "def",
  "lexical_name": "getCommSemiringId?",
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
  "slug": "getcommsemiringid--ec0073fbe0a48357198adf56",
  "source": {
    "blob": "076306382639d055311728eebfff2634c1504233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 157,
    "path": "GRWTSK/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec0073fbe0a48357198adf56b0238671815db05f32e02355337b4021c41f658f",
  "verification": {
    "reference": "docs/verification/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41801a45b24492198e7c9a6cfbb4eeb3a320f29d87b7989d8cc9a82cc69dafec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCommSemiringId? (type : Expr) : GoalM (Option Nat) := do
  if let some id? := (← get').stypeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with stypeIdOf := s.stypeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    let u ← getDecLevel type
    let commSemiring := mkApp (mkConst ``Grind.CommSemiring [u]) type
    let some commSemiringInst ← synthInstance? commSemiring | return none
    let semiringInst := mkApp2 (mkConst ``Grind.CommSemiring.toSemiring [u]) type commSemiringInst
    let q ← shareCommon (← canon (mkApp2 (mkConst ``Grind.Ring.OfSemiring.Q [u]) type semiringInst))
    let some ringId ← getCommRingId? q
      | throwError "`grind` unexpected failure, failure to initialize ring{indentExpr q}"
    let id := (← get').semirings.size
    let semiring : CommSemiring := {
      id, type, ringId, u, semiringInst, commSemiringInst
    }
    modify' fun s => { s with semirings := s.semirings.push semiring }
    setCommSemiringId ringId id
    return some id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `076306382639d055311728eebfff2634c1504233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
