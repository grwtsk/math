# cleanupDenominators'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4b1474f152d1f5c9d3bbea51e3d23ce52b54949760cef9e67a7c48a7e6b28a1",
  "kind": "def",
  "lexical_name": "cleanupDenominators'",
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
  "slug": "cleanupdenominators--e62c33bcb09e9870d7ad13c4",
  "source": {
    "blob": "731ad8cb8098fd64c1e2d69e87ff5f892d0cece5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e62c33bcb09e9870d7ad13c4ed5dd17a927207ac52147240db1ff07b45a8be1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4b1474f152d1f5c9d3bbea51e3d23ce52b54949760cef9e67a7c48a7e6b28a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def cleanupDenominators' (c : α)
    (getPoly : α → CommRing.Poly)
    (updateCnstr : α → CommRing.Poly → Int → Var → Nat → α)
    : LinearM α := do
  let s ← getStruct
  if s.fieldInst?.isNone then return c
  let some (_, char) := s.charInst? | return c
  unless char == 0 do return c
  withRingM <| go c
where
  go (c : α) : CommRing.RingM α := do
    let p := getPoly c
    let some (val, x) ← p.findInvNumeralVar? | return c
    let n := p.maxDegreeOf x
    let p := p.mulConst (val ^ n)
    let p := p.cancelVar val x
    go (updateCnstr c p val x n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `731ad8cb8098fd64c1e2d69e87ff5f892d0cece5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
