# propagateIneq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dd87194fe3de619b66346d1ba9cc9272d7de6d16f8d93e908d5c65aab088a23",
  "kind": "def",
  "lexical_name": "propagateIneq",
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
  "slug": "propagateineq--7bee50c896d2719d1be8c7a5",
  "source": {
    "blob": "6fa365256ec5393e9e5fb507f4d59c842f974b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bee50c896d2719d1be8c7a5541887f9a8207eeb43dd8ad21bc199ce16716018",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dd87194fe3de619b66346d1ba9cc9272d7de6d16f8d93e908d5c65aab088a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateIneq (e : Expr) : GoalM Unit := do
  if let some { e := e', h := he, .. } := (← get').termMap.find? { expr := e } then
    go e' (some he)
  else
    go e none
where
  go (e' : Expr) (he? : Option Expr) : GoalM Unit := do
    let some structId ← getStructIdOf? e' | return ()
    OrderM.run structId do
    let some c ← getCnstr? e' | return ()
    if (← isEqTrue e) then
      let mut h ← mkEqTrueProof e
      if let some he := he? then
        h := mkApp4 (mkConst ``Grind.Order.eq_trans_true') e e' he h
      assertIneqTrue c e' h
    else if (← isEqFalse e) then
      let mut h ← mkEqFalseProof e
      if let some he := he? then
        h := mkApp4 (mkConst ``Grind.Order.eq_trans_false') e e' he h
      assertIneqFalse c e' h

builtin_grind_propagator propagateLE ↓LE.le := propagateIneq
builtin_grind_propagator propagateLT ↓LT.lt := propagateIneq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa365256ec5393e9e5fb507f4d59c842f974b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
