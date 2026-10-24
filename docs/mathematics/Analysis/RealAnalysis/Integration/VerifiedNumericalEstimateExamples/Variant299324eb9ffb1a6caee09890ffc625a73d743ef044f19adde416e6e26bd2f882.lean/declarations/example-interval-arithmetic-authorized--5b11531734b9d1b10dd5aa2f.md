# example_interval_arithmetic_authorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea36fee80690e33e42699494395b09773b0dee1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5e39545-3d42-bf08-255a-899a92c65779",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45bfc624-9a14-30c5-9842-02b5b8b34d0e",
  "kind": "theorem",
  "lexical_name": "example_interval_arithmetic_authorized",
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
  "slug": "example-interval-arithmetic-authorized--5b11531734b9d1b10dd5aa2f",
  "source": {
    "blob": "ea36fee80690e33e42699494395b09773b0dee1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 329,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b11531734b9d1b10dd5aa2f020146a108f37cfc42bc464e6784c96932206d4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45bfc624-9a14-30c5-9842-02b5b8b34d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_interval_arithmetic_authorized :
    exampleIntervalArithmeticAuthority.schema.enclosureSound ∧
      exampleIntervalArithmeticAuthority.schema.theoremInterpretation ∧
      exampleIntervalArithmeticAuthority.intervalArithmeticSound :=
  VerifiedNumericalEstimate.interval_arithmetic_authorized
    exampleIntervalArithmeticAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Variant299324eb9ffb1a6caee09890ffc625a73d743ef044f19adde416e6e26bd2f882.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea36fee80690e33e42699494395b09773b0dee1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
