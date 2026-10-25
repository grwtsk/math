# packet_to_discrepancy_squareRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50909b66-545e-a956-ea58-63fcf3f38f03",
  "kind": "theorem",
  "lexical_name": "packet_to_discrepancy_squareRoot",
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
  "slug": "packet-to-discrepancy-squareroot--2cd227d048a199add469bb8d",
  "source": {
    "blob": "95848cac57fc451b2c33897a3fe7e5b41341ec90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variant31cc191181bdf4fe81955560a0794600175d6e5ffe3d2b873c7c26d58f90d8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cd227d048a199add469bb8d4eda3890c06a225e610294fef9ce7a73a4394250",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variant31cc191181bdf4fe81955560a0794600175d6e5ffe3d2b873c7c26d58f90d8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50909b66-545e-a956-ea58-63fcf3f38f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packet_to_discrepancy_squareRoot
    {Scale : Type uScale}
    {Test : Type uTest}
    {problem :
      SquareRootScaleProblem Scale Test}
    (components :
      PacketSquareRootComponents problem) :
    SquareRootNormFinite problem := by
  refine ⟨components.packetConstant +
      components.arithmeticConstant +
      components.operatorConstant, ?_, ?_⟩
  · exact add_nonneg
      (add_nonneg
        components.packetConstant_nonnegative
        components.arithmeticConstant_nonnegative)
      components.operatorConstant_nonnegative
  · intro scale test
    rw [components.exactSplit]
    calc
      |components.packetTerm scale test +
          components.arithmeticTail scale test +
          components.operatorResidual scale test|
          ≤
        |components.packetTerm scale test| +
          |components.arithmeticTail scale test| +
          |components.operatorResidual scale test| := by
            exact abs_add_three _ _ _
      _ ≤
        components.packetConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.arithmeticConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.operatorConstant *
              problem.scaleWeight scale *
              problem.testWeight test :=
        add_le_add
          (add_le_add
            (components.packetBound scale test)
            (components.arithmeticBound scale test))
          (components.operatorBound scale test)
      _ =
        (components.packetConstant +
            components.arithmeticConstant +
            components.operatorConstant) *
          problem.scaleWeight scale *
          problem.testWeight test := by ring

end Mathematics.SemiLocalDefect.Trace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variant31cc191181bdf4fe81955560a0794600175d6e5ffe3d2b873c7c26d58f90d8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variant31cc191181bdf4fe81955560a0794600175d6e5ffe3d2b873c7c26d58f90d8f9.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95848cac57fc451b2c33897a3fe7e5b41341ec90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
