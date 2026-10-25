# propagateCommRingIneq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51e0c8c3d21c9806c6429f4467be0620f3932a2ea3b52654fde94dbfe477148f",
  "kind": "def",
  "lexical_name": "propagateCommRingIneq",
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
  "slug": "propagatecommringineq--773101a0b6f291e3c7fd800a",
  "source": {
    "blob": "084313ec8c8ccb9d3d25c9e4546bf58cd40f311e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:773101a0b6f291e3c7fd800adba813c1f8f234d229f443d6059f80fd11e659d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51e0c8c3d21c9806c6429f4467be0620f3932a2ea3b52654fde94dbfe477148f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateCommRingIneq (e : Expr) (lhs rhs : Expr) (strict : Bool) (eqTrue : Bool) : LinearM Unit := do
  let some lhs ← withRingM <| CommRing.reify? lhs (skipVar := false) | return ()
  let some rhs ← withRingM <| CommRing.reify? rhs (skipVar := false) | return ()
  let generation ← getGeneration e
  if eqTrue then
    let p := (lhs.sub rhs).toPoly
    let c : RingIneqCnstr := { p, strict, h := .core e lhs rhs }
    let c ← c.cleanupDenominators
    let p := c.p
    let lhs ← p.toIntModuleExpr generation
    let some lhs ← reify? lhs (skipVar := false) generation | return ()
    let p := lhs.norm
    let c : IneqCnstr := { p, strict, h := .ring c lhs }
    c.assert
  else if (← isLinearOrder) then
    let p := (rhs.sub lhs).toPoly
    let strict := !strict
    let c : RingIneqCnstr := { p, strict, h := .notCore e lhs rhs }
    let c ← c.cleanupDenominators
    let p := c.p
    let lhs ← p.toIntModuleExpr generation
    let some lhs ← reify? lhs (skipVar := false) generation | return ()
    let p := lhs.norm
    let c : IneqCnstr := { p, strict, h := .ring c lhs }
    c.assert
  else
    -- Negation for preorders is not supported
    modifyStruct fun s => { s with ignored := s.ignored.push e }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `084313ec8c8ccb9d3d25c9e4546bf58cd40f311e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
