# processNewCommRingEq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d1e8db2440a1939ddc663d13c5d44166d0f9308f25613dd827d3317802ca8f9",
  "kind": "def",
  "lexical_name": "processNewCommRingEq'",
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
  "slug": "processnewcommringeq--c84d0448c2041708436325ef",
  "source": {
    "blob": "afae9268d0af13465baa43996ca42bdb21f2bbb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c84d0448c2041708436325efab1f6c80c0ccad162e2d92604bd46f9d23673283",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d1e8db2440a1939ddc663d13c5d44166d0f9308f25613dd827d3317802ca8f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processNewCommRingEq' (a b : Expr) : LinearM Unit := do
  let some lhs ← withRingM <| CommRing.reify? a (skipVar := false) | return ()
  let some rhs ← withRingM <| CommRing.reify? b (skipVar := false) | return ()
  let generation := max (← getGeneration a) (← getGeneration b)
  let p := (lhs.sub rhs).toPoly
  let c : RingEqCnstr := { p, h := .core a b lhs rhs }
  let c ← c.cleanupDenominators
  let p := c.p
  let lhs ← p.toIntModuleExpr generation
  let some lhs ← reify? lhs (skipVar := false) generation | return ()
  let p := lhs.norm
  if p == .nil then return ()
  let c₁ : IneqCnstr := { p, strict := false, h := .ringEq c lhs }
  c₁.assert
  let c := { c with p := c.p.mulConst (-1), h := .symm c }
  let p := p.mul (-1)
  let lhs ← c.p.toIntModuleExpr generation
  let some lhs ← reify? lhs (skipVar := false) generation | return ()
  let c₂ : IneqCnstr := { p, strict := false, h := .ringEq c lhs }
  c₂.assert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afae9268d0af13465baa43996ca42bdb21f2bbb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
