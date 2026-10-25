# combineHypBodies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76b6dc37458874d4ba047deb9c0d763e0cdf8fbc3202e8d2040cf216172e4c8b",
  "kind": "def",
  "lexical_name": "combineHypBodies",
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
  "slug": "combinehypbodies--1d183baded2b80491833d907",
  "source": {
    "blob": "cb1fc0135b990529c36be31792860c19cce68cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variantf959e6fa10e66adb47625cfa85ba6601481489f3c07b7399e6599f3106455690.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d183baded2b80491833d907036153d326e278de87c79900e2ec5cdfe7002c44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variantf959e6fa10e66adb47625cfa85ba6601481489f3c07b7399e6599f3106455690.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76b6dc37458874d4ba047deb9c0d763e0cdf8fbc3202e8d2040cf216172e4c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combineHypBodies (iExpr : IExpr) (bodies : Array ExprInclusionBody) :
    MetaM ExprInclusionBody := do
  if bodies.isEmpty then
    return ← mkUniversalHypBody iExpr
  let first := bodies[0]!
  if bodies.size = 1 then
    return first
  let refiner ← iExpr.iType.synthRefine
  let mut set := first.inclusionBody
  let mut proof := first.proofBody
  for h : i in [1:bodies.size] do
    let next := bodies[i]
    set ← iExpr.iType.mkRefine refiner set next.inclusionBody
    proof ← mkAppM ``Refine.mem_refine #[proof, next.proofBody]
  return ⟨set, proof⟩

/-- Given an `output : IExpr` and a `body : ExprInclusionBody`, construct an `ExprInclusion` for
`output.expr` by collecting inclusion hypotheses from the local context and closing the body. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variantf959e6fa10e66adb47625cfa85ba6601481489f3c07b7399e6599f3106455690.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variantf959e6fa10e66adb47625cfa85ba6601481489f3c07b7399e6599f3106455690.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fc0135b990529c36be31792860c19cce68cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
