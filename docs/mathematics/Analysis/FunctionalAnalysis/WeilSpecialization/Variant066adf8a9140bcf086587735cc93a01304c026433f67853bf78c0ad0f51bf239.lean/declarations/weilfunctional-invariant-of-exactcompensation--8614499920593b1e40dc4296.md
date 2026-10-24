# weilFunctional_invariant_of_exactCompensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd616e8bb7e63f6cd4b06d1ca015c97529e5fe3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:931347d3-6990-7437-2ab8-72237bfbf181",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3b4eea3-2de7-05fa-0aff-4fa0dc9a8cc6",
  "kind": "theorem",
  "lexical_name": "weilFunctional_invariant_of_exactCompensation",
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
  "slug": "weilfunctional-invariant-of-exactcompensation--8614499920593b1e40dc4296",
  "source": {
    "blob": "cd616e8bb7e63f6cd4b06d1ca015c97529e5fe3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 49,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeilSpecialization/Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8614499920593b1e40dc429690d7470ef57be6ddd98a523aea69f4141abb8def",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeilSpecialization/Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b4eea3-2de7-05fa-0aff-4fa0dc9a8cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weilFunctional_invariant_of_exactCompensation
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
    (arithmetic :
      ArithmeticTraceCorrespondence system)
    (correspondence :
      WeilTraceCorrespondence arithmetic)
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport
        arithmetic)
    (arc : Arc graph)
    (test :
      arithmetic.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.weilFunctional arc.head
        (arithmetic.transportTest
          arc test) =
      correspondence.weilFunctional
        arc.tail test := by
  rw [
    ← correspondence.arithmeticTrace_eq_weil,
    ← correspondence.arithmeticTrace_eq_weil
  ]
  exact
    arithmeticTrace_invariant_of_exactCompensation
      system arithmetic
      traceExact arithmeticExact arc test safe

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeilSpecialization/Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeilSpecialization/Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd616e8bb7e63f6cd4b06d1ca015c97529e5fe3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
