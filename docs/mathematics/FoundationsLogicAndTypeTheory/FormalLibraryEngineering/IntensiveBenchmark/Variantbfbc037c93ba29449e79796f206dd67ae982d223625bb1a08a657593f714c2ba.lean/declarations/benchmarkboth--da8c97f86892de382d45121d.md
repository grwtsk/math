# benchmarkBoth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bc4848d1f9d3cf4eeb2e3a945d363b32afc334803bb0ae4ce9df1cb6561e3b8",
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
  "slug": "benchmarkboth--da8c97f86892de382d45121d",
  "source": {
    "blob": "1ca14cb7db7a127bdb658f72f221803fbe759a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da8c97f86892de382d45121d355d28f583347d4a894729de81073608819b93a4",
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

Occurrence: `declaration:4bc4848d1f9d3cf4eeb2e3a945d363b32afc334803bb0ae4ce9df1cb6561e3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–124.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca14cb7db7a127bdb658f72f221803fbe759a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
