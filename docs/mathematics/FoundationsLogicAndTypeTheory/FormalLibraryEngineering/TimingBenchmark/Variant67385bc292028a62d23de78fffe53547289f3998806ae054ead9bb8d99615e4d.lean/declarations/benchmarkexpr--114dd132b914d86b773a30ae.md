# benchmarkExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cf23cd209594f2a163286bb258afa776aa77aaaa484a717b726b3795e9e8ea9",
  "kind": "def",
  "lexical_name": "benchmarkExpr",
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
  "slug": "benchmarkexpr--114dd132b914d86b773a30ae",
  "source": {
    "blob": "5584caf4b78c80e432f3c3b8fa789df0cc8219fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:114dd132b914d86b773a30aeb15404ea49a43402ad22f0116505d8ba332c6409",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cf23cd209594f2a163286bb258afa776aa77aaaa484a717b726b3795e9e8ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def benchmarkExpr (name : String) (e : Expr) (Irat : IntervalRat) (Idyad : IntervalDyadic)
    (iterations : Nat := 100) : IO Unit := do
  -- Force evaluation to avoid lazy evaluation effects
  let ratAction : IO Unit := do
    let result := evalRational e Irat
    if result.lo > result.hi then panic! "impossible" else pure ()

  let dyadAction : IO Unit := do
    let result := evalDyadic e Idyad
    if result.lo.toRat > result.hi.toRat then panic! "impossible" else pure ()

  let ratTime ← timeAction iterations ratAction
  let dyadTime ← timeAction iterations dyadAction

  let speedup := if dyadTime > 0 then (ratTime.toFloat / dyadTime.toFloat) else 0.0

  IO.println s!"  {name}: Rational={formatNanos ratTime}ms, Dyadic={formatNanos dyadTime}ms, Speedup={speedup.toString.take 5}x"

/-- Benchmark dyadic only (for expressions too slow with rational) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5584caf4b78c80e432f3c3b8fa789df0cc8219fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
