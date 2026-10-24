# arithmeticTrace_squareRoot_transport_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:184e539f-1bc5-9277-eb21-5f7bdaf0a1c6",
  "kind": "theorem",
  "lexical_name": "arithmeticTrace_squareRoot_transport_bound",
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
  "slug": "arithmetictrace-squareroot-transport-bound--30eaf41215813ad544f2a7fb",
  "source": {
    "blob": "6a24a481ccaae1ab6a020d5260854cb806ab348a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 152,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30eaf41215813ad544f2a7fb2594923d6c7b93bae6aa54776cb107b63e695a3f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:184e539f-1bc5-9277-eb21-5f7bdaf0a1c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticTrace_squareRoot_transport_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (traceBudget :
      Trace.TraceCompensationBudget system)
    (budget :
      ArithmeticTransportBudget
        correspondence traceBudget)
    (packetScale :
      PacketSquareRootScale correspondence)
    (residualScale :
      ArithmeticResidualSquareRootScale
        budget packetScale)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    abs
        (correspondence.arithmeticDisplacement
          arc test) ≤
      (residualScale.constant +
          traceBudget.budget arc *
            packetScale.constant) *
        packetScale.weight arc.tail test := by
  have localBound :=
    arithmeticTrace_transport_bound
      system correspondence traceBudget
      budget arc test safe
  have packetBound :
      system.packet.packetNormSq arc.tail
          (correspondence.packetCode
            arc.tail test) ≤
        packetScale.constant *
          packetScale.weight arc.tail test := by
    simpa [PacketSquareRootScale.weight,
      mul_assoc] using
      packetScale.packetBound arc.tail test
  have weightedPacketBound :=
    mul_le_mul_of_nonneg_left
      packetBound
      (traceBudget.budget_nonnegative arc)
  have scalarBound :=
    residualScale.scalarBudgetBound arc test
  calc
    abs
        (correspondence.arithmeticDisplacement
          arc test) ≤
      budget.mainBudget arc test +
        traceBudget.budget arc *
          system.packet.packetNormSq
            arc.tail
            (correspondence.packetCode
              arc.tail test) +
        budget.regularizationBudget arc test +
        budget.bitfieldBudget arc test +
        budget.correspondenceBudget arc test :=
      localBound
    _ ≤
      residualScale.constant *
          packetScale.weight arc.tail test +
        traceBudget.budget arc *
          (packetScale.constant *
            packetScale.weight arc.tail test) := by
      linarith
    _ =
      (residualScale.constant +
          traceBudget.budget arc *
            packetScale.constant) *
        packetScale.weight arc.tail test := by
      ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SquareRootScale/Variant20137f2d1dbcbbf3517e685881dafd2ff2d35aaab33de6401f9fcee3ceeedcec.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a24a481ccaae1ab6a020d5260854cb806ab348a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
