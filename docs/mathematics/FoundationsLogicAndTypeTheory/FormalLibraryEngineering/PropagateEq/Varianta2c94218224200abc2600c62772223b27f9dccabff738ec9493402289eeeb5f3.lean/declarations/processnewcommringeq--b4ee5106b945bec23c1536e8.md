# processNewCommRingEq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df4994748c7653c67074b3528a32161cb9246116c327bf9fdaac3b7172f01c27",
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
  "slug": "processnewcommringeq--b4ee5106b945bec23c1536e8",
  "source": {
    "blob": "43a5ffc2a9975ca9467040a2179d061fcd70324f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4ee5106b945bec23c1536e8e0486ece5c15771c3c7824193fefe898be3c64d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df4994748c7653c67074b3528a32161cb9246116c327bf9fdaac3b7172f01c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a5ffc2a9975ca9467040a2179d061fcd70324f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
