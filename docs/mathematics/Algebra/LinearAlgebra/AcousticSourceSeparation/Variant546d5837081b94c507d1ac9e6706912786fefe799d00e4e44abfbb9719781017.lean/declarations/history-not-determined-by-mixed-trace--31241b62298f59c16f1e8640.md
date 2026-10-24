# history_not_determined_by_mixed_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:122a4fe0-0f18-5369-955c-c99a23a65c8e",
  "kind": "theorem",
  "lexical_name": "history_not_determined_by_mixed_trace",
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
  "slug": "history-not-determined-by-mixed-trace--31241b62298f59c16f1e8640",
  "source": {
    "blob": "007139266dfb082d9fe9791e75c2dd4868366cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31241b62298f59c16f1e8640e8b0d899459fbfb6ed295393893e14a6c12b81bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:122a4fe0-0f18-5369-955c-c99a23a65c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem history_not_determined_by_mixed_trace (density distance : ℝ) :
    ¬DescendsThrough (mixedHistoryCarrier density distance)
      (fun state : MixedHistory => state.1.val) :=
  descent_obstruction_not_descends (mixedHistoryObstruction density distance)

end BubbleAcoustics
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007139266dfb082d9fe9791e75c2dd4868366cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
