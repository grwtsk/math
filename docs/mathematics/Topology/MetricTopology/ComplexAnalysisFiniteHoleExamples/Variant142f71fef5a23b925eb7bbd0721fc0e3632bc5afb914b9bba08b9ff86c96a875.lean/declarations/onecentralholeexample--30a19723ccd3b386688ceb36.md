# oneCentralHoleExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e14f7c7e0f0dd847c1f6adcdcc2c198e4d8e7db997753e72e0276c3822191e20",
  "kind": "def",
  "lexical_name": "oneCentralHoleExample",
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
  "slug": "onecentralholeexample--30a19723ccd3b386688ceb36",
  "source": {
    "blob": "9786a7a2b67ccd0bc664a6e357c52778c9e5ecfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 25,
    "path": "GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a19723ccd3b386688ceb367eacf6586120221294b2fea5fb7c75d0c1f3f14b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e14f7c7e0f0dd847c1f6adcdcc2c198e4d8e7db997753e72e0276c3822191e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oneCentralHoleExample :
    RectangleHoleConfiguration ((-3 : ℂ) - 3 * I) (3 + 3 * I) :=
  RectangleHoleConfiguration.singleton _ _ 0 1 (by norm_num) (by
    apply closedBall_subset_openRectangle_of_coordinateMargin <;> norm_num)

/-- Two separated radius-one-half disks centered at `-1` and `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9786a7a2b67ccd0bc664a6e357c52778c9e5ecfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
