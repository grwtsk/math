# arithmeticTrace_invariant_of_exactCompensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "092aa4b54093126582836851a613fae294f489b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:827566e4-d257-7d92-d789-3df048a0f528",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2141a772-8e4b-f352-0e60-0b2f37723740",
  "kind": "theorem",
  "lexical_name": "arithmeticTrace_invariant_of_exactCompensation",
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
  "slug": "arithmetictrace-invariant-of-exactcompensation--c2abb1f0a0f81c85b76d62e5",
  "source": {
    "blob": "092aa4b54093126582836851a613fae294f489b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceInvariance/Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2abb1f0a0f81c85b76d62e50d149b8082653a5d59ebec3c3894f1584c806f8d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TraceInvariance/Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2141a772-8e4b-f352-0e60-0b2f37723740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticTrace_invariant_of_exactCompensation
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
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport correspondence)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticTrace arc.head
        (correspondence.transportTest arc test) =
      correspondence.arithmeticTrace
        arc.tail test := by
  apply sub_eq_zero.mp
  change
    correspondence.arithmeticDisplacement
      arc test = 0
  rw [arithmeticDisplacement_eq
    system correspondence arc test safe]
  have mainZero :
      correspondence.transportDifference
          correspondence.mainTerm arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.mainInvariant
        arc test safe)
  have regularizationZero :
      correspondence.transportDifference
          correspondence.regularizationResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.regularizationInvariant
        arc test safe)
  have bitfieldZero :
      correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.bitfieldInvariant
        arc test safe)
  have correspondenceZero :
      correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test = 0 := by
    unfold ArithmeticTraceCorrespondence.transportDifference
    rw [
      arithmeticExact.correspondenceExact,
      arithmeticExact.correspondenceExact,
      sub_self
    ]
  rw [
    mainZero,
    regularizationZero,
    bitfieldZero,
    correspondenceZero,
    traceExact.exact arc safe,
    system.packet.energy_zero
  ]
  simp

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TraceInvariance/Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceInvariance/Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092aa4b54093126582836851a613fae294f489b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
