# internalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc2bc627ff6388f16723c404463d80466e6be241b6775b1629013dc6589d0d3c",
  "kind": "def",
  "lexical_name": "internalize",
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
  "slug": "internalize--e2b9492f1ed0890d6a8eb40a",
  "source": {
    "blob": "ae846b6afe574f59a0f263080cd5559c4d206447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 143,
    "path": "GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2b9492f1ed0890d6a8eb40a6d1b887038c96af746a978109e065e00748292ab",
  "verification": {
    "reference": "docs/verification/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc2bc627ff6388f16723c404463d80466e6be241b6775b1629013dc6589d0d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def internalize (e : Expr) (parent? : Option Expr) : GoalM Unit := do
  if !(← getConfig).ring then return ()
  if isIntModuleVirtualParent parent? then
    -- `e` is an auxiliary term used to convert `CommRing` to `IntModule`
    return ()
  if (← internalizeInv e) then return ()
  let some type := getType? e | return ()
  if isForbiddenParent parent? then return ()
  if let some ringId ← getCommRingId? type then RingM.run ringId do
    let some re ← reify? e | return ()
    trace_goal[grind.ring.internalize] "[{ringId}]: {e}"
    setTermRingId e
    ringExt.markTerm e
    modifyCommRing fun s => { s with
      denote := s.denote.insert { expr := e } re
      denoteEntries := s.denoteEntries.push (e, re)
    }
    processPowIdentityVars
  else if let some semiringId ← getCommSemiringId? type then SemiringM.run semiringId do
    let some re ← sreify? e | return ()
    trace_goal[grind.ring.internalize] "semiring [{semiringId}]: {e}"
    setTermSemiringId e
    ringExt.markTerm e
    modifySemiring fun s => { s with denote := s.denote.insert { expr := e } re }
  else if let some ncRingId ← getNonCommRingId? type then NonCommRingM.run ncRingId do
    let some re ← ncreify? e | return ()
    trace_goal[grind.ring.internalize] "(non-comm) ring [{ncRingId}]: {e}"
    setTermNonCommRingId e
    ringExt.markTerm e
    modifyRing fun s => { s with denote := s.denote.insert { expr := e } re }
  else if let some ncSemiringId ← getNonCommSemiringId? type then NonCommSemiringM.run ncSemiringId do
    let some re ← ncsreify? e | return ()
    trace_goal[grind.ring.internalize] "(non-comm) semiring [{ncSemiringId}]: {e}"
    setTermNonCommSemiringId e
    ringExt.markTerm e
    modifySemiring fun s => { s with denote := s.denote.insert { expr := e } re }

end Lean.Meta.Grind.Arith.CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae846b6afe574f59a0f263080cd5559c4d206447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
