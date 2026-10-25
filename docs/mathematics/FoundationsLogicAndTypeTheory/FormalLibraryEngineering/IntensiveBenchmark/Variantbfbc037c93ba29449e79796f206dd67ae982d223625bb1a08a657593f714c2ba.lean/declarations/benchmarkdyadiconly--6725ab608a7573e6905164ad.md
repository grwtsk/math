# benchmarkDyadicOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9df1ac5b6f56f05dfca43b3a29bd97d6b2ff38ec62b6d4cf1b2dfe75f449720",
  "kind": "def",
  "lexical_name": "benchmarkDyadicOnly",
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
  "slug": "benchmarkdyadiconly--6725ab608a7573e6905164ad",
  "source": {
    "blob": "1ca14cb7db7a127bdb658f72f221803fbe759a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6725ab608a7573e6905164adf29a47eca4c81d83353be5f77ceaff593d28451d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9df1ac5b6f56f05dfca43b3a29bd97d6b2ff38ec62b6d4cf1b2dfe75f449720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def benchmarkDyadicOnly (name : String) (e : Expr) (I : IntervalDyadic)
    (iterations : Nat) : IO Unit := do
  let action : IO Unit := do
    let result := evalDyadic e I
    if result.lo.toRat > result.hi.toRat then panic! "impossible" else pure ()

  let time ← timeAction iterations action
  IO.println s!"  {name}:"
  IO.println s!"    Dyadic:   {formatTime time}"
  IO.println s!"    (Rational backend too slow to measure)"

/-! ### Main Benchmark Suite -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca14cb7db7a127bdb658f72f221803fbe759a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
