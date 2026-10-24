# arithmeticDisplacement_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bbbf033-dcd5-e497-877f-cde980755f0d",
  "kind": "theorem",
  "lexical_name": "arithmeticDisplacement_eq",
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
  "slug": "arithmeticdisplacement-eq--7591ac0aebe56cb1edc4f506",
  "source": {
    "blob": "8d0ac3dc6c4cc8a2d1dc4d3ee5be9c34ba183a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 69,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TransportDifference/Variant69fb890bb5a14e15b889ea68750ca5d4e5d4b02d063269d1638e84a31371a289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7591ac0aebe56cb1edc4f506a008d5b74dc18a4fb6f2568996d28d11e6a01f41",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TransportDifference/Variant69fb890bb5a14e15b889ea68750ca5d4e5d4b02d063269d1638e84a31371a289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bbbf033-dcd5-e497-877f-cde980755f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticDisplacement_eq
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
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticDisplacement
        arc test =
      correspondence.transportDifference
          correspondence.mainTerm arc test +
        system.packet.energy arc.tail
          (system.compensationDefect arc)
          (correspondence.packetCode
            arc.tail test) +
        correspondence.transportDifference
          correspondence.regularizationResidual
          arc test +
        correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test +
        correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test := by
  unfold ArithmeticTraceCorrespondence.arithmeticDisplacement
  rw [
    correspondence.traceIdentity
      arc.head
      (correspondence.transportTest arc test),
    correspondence.traceIdentity arc.tail test,
    correspondence.packetCode_transport arc test
  ]
  have packetDifference :=
    Trace.packetEnergy_difference_eq_compensationDefect
      system arc
      (correspondence.packetCode arc.tail test)
      safe
  rw [← packetDifference]
  unfold ArithmeticTraceCorrespondence.transportDifference
  ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TransportDifference/Variant69fb890bb5a14e15b889ea68750ca5d4e5d4b02d063269d1638e84a31371a289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TransportDifference/Variant69fb890bb5a14e15b889ea68750ca5d4e5d4b02d063269d1638e84a31371a289.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0ac3dc6c4cc8a2d1dc4d3ee5be9c34ba183a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
