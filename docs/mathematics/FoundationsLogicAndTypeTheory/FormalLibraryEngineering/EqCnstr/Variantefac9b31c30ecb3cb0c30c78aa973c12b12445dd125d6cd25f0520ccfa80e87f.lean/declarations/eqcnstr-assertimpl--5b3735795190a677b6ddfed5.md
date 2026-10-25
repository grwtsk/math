# EqCnstr.assertImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:823501dc3997f4fea2eca3018221f88ffe3267d8b8f50da3378de9b9ae3cd3f6",
  "kind": "def",
  "lexical_name": "EqCnstr.assertImpl",
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
  "slug": "eqcnstr-assertimpl--5b3735795190a677b6ddfed5",
  "source": {
    "blob": "2d0e24c220358ae013b8c06545e8598cb06de521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b3735795190a677b6ddfed53517b19e9034cb197cfe131d81657201c38276ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:823501dc3997f4fea2eca3018221f88ffe3267d8b8f50da3378de9b9ae3cd3f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EqCnstr.assertImpl (c : EqCnstr) : GoalM Unit := do
  if (← inconsistent) then return ()
  trace[grind.lia.assert] "{← c.pp}"
  let c ← c.norm.applySubsts
  if c.p.isUnsatEq then
    trace[grind.lia.assert.unsat] "{← c.pp}"
    setInconsistent (.eq c)
    return ()
  if c.isTrivial then
    trace[grind.lia.assert.trivial] "{← c.pp}"
    return ()
  let k := c.p.gcdCoeffs'
  if c.p.getConst % k > 0 then
    setInconsistent (.eq c)
    return ()
  let c := if k == 1 then
    c
  else
    { p := c.p.div k, h := .divCoeffs c }
  let some (k, x) := c.p.pickVarToElim? | c.throwUnexpected
  trace[grind.debug.lia.subst] ">> {← getVar x}, {← c.pp}"
  trace[grind.lia.assert.store] "{← c.pp}"
  trace[grind.debug.lia.elimEq] "{← getVar x}, {← c.pp}"
  if (← c.satisfied) == .false then
    resetAssignmentFrom x
  modify' fun s => { s with
    elimEqs := s.elimEqs.set x (some c)
    elimStack := x :: s.elimStack
  }
  updateOccs k x c
  c.p.updateOccsForElimEq x
  if (← inconsistent) then return ()
  -- assert a divisibility constraint IF `|k| != 1`
  if k.natAbs != 1 then
    let p := c.p.insert (-k) x
    let d := Int.ofNat k.natAbs
    { d, p, h := .ofEq x c : DvdCnstr }.assert
  if (← inconsistent) then return ()
  propagateNonlinearTerms x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantefac9b31c30ecb3cb0c30c78aa973c12b12445dd125d6cd25f0520ccfa80e87f.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0e24c220358ae013b8c06545e8598cb06de521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
