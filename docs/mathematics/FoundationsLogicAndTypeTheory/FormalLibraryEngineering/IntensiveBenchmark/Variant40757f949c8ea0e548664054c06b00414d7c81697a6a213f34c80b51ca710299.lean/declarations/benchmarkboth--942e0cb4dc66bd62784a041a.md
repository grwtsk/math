# benchmarkBoth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:026f244ab9374b4a5952b1a83b030f3ffb0a213f7045b74db3ae9c049f434df4",
  "kind": "def",
  "lexical_name": "benchmarkBoth",
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
  "slug": "benchmarkboth--942e0cb4dc66bd62784a041a",
  "source": {
    "blob": "454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:942e0cb4dc66bd62784a041a199047b57b0a03f76b7c45c41a34de25715479e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:026f244ab9374b4a5952b1a83b030f3ffb0a213f7045b74db3ae9c049f434df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def benchmarkBoth (name : String) (e : Expr) (Irat : IntervalRat) (Idyad : IntervalDyadic)
    (iterations : Nat) : IO Unit := do
  -- Rational benchmark - force evaluation
  let ratAction : IO Unit := do
    let result := evalRational e Irat
    if result.lo > result.hi then panic! "impossible" else pure ()

  -- Dyadic benchmark - force evaluation
  let dyadAction : IO Unit := do
    let result := evalDyadic e Idyad
    if result.lo.toRat > result.hi.toRat then panic! "impossible" else pure ()

  let ratTime ← timeAction iterations ratAction
  let dyadTime ← timeAction iterations dyadAction

  let speedup := if dyadTime > 0 then (ratTime.toFloat / dyadTime.toFloat) else 0.0

  IO.println s!"  {name}:"
  IO.println s!"    Rational: {formatTime ratTime}"
  IO.println s!"    Dyadic:   {formatTime dyadTime}"
  IO.println s!"    Speedup:  {speedup.toString.take 6}x"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
