# CooperSplit.assert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c05e8925525bbaef799a074bf288a291a1136f12a3ec73db550ad37859ba6e94",
  "kind": "def",
  "lexical_name": "CooperSplit.assert",
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
  "slug": "coopersplit-assert--11102f9e11f4aa9bd23c6012",
  "source": {
    "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11102f9e11f4aa9bd23c6012cafeacec38d6e814e0794f8016850507c471dd50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c05e8925525bbaef799a074bf288a291a1136f12a3ec73db550ad37859ba6e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CooperSplit.assert (cs : CooperSplit) : GoalM Unit := do
  let { c₁, c₂, c₃?, left, .. } := cs.pred
  let k   := cs.k
  let p₁  := c₁.p
  let p₂  := c₂.p
  let p   := p₁.tail
  let q   := p₂.tail
  let a   := p₁.leadCoeff
  let b   := p₂.leadCoeff
  let p₁' := p.mul b |>.combine (q.mul (-a))
  let p₁' := p₁'.addConst <| if left then b*k else (-a)*k
  let c₁' := { p := p₁', h := .cooper cs : LeCnstr }
  c₁'.assert
  if (← inconsistent) then return ()
  let d := if left then a else b
  if d.natAbs != 1 then
    let p₂' := if left then p else q
    let p₂' := p₂'.addConst k
    let c₂' := { d, p := p₂', h := .cooper₁ cs : DvdCnstr }
    c₂'.assert
    if (← inconsistent) then return ()
  let some c₃ := c₃? | return ()
  let p₃  := c₃.p
  let d   := c₃.d
  let s   := p₃.tail
  let c   := p₃.leadCoeff
  let c₃' := if left then
    let p₃' := p.mul c |>.combine (s.mul (-a))
    let p₃' := p₃'.addConst (c*k)
    { d := a*d, p := p₃', h := .cooper₂ cs : DvdCnstr }
  else
    let p₃' := q.mul (-c) |>.combine (s.mul b)
    let p₃' := p₃'.addConst (-c*k)
    { d := b*d, p := p₃', h := .cooper₂ cs : DvdCnstr }
  c₃'.assert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c050938a5134c7c12942150d1c4136f35332e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
