# AnalogyReport.Matches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a2ed77b2d8e0863a91515e5a7cc58b85aad729497768af940a9a26ca3f25ddd",
  "kind": "def",
  "lexical_name": "AnalogyReport.Matches",
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
  "slug": "analogyreport-matches--6a4a4ea237a1b46a5cfe9ccd",
  "source": {
    "blob": "470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 923,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a4a4ea237a1b46a5cfe9ccd83144f6c222be4a02d59868e4d56cdbdf5ce6deb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a2ed77b2d8e0863a91515e5a7cc58b85aad729497768af940a9a26ca3f25ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AnalogyReport.Matches (trace : RuntimeTrace)
    (report : AnalogyReport) : Prop :=
  report.sourceLeft < trace.gram.dimension ∧
  report.sourceRight < trace.gram.dimension ∧
  report.targetLeft < trace.gram.dimension ∧
  report.targetRight < trace.gram.dimension ∧
  trace.hasRole report.sourceLeft 5 ∧ trace.hasRole report.sourceRight 6 ∧
  trace.hasRole report.targetLeft 5 ∧ trace.hasRole report.targetRight 6 ∧
  let sourceNorm := trace.gram.displacementNormSquared
    report.sourceLeft report.sourceRight
  let targetNorm := trace.gram.displacementNormSquared
    report.targetLeft report.targetRight
  let inner := trace.gram.displacementInner report.sourceLeft report.sourceRight
    report.targetLeft report.targetRight
  report.equalDisplacements = decide (trace.gram.equalDisplacements
    report.sourceLeft report.sourceRight report.targetLeft report.targetRight) ∧
  report.displacementResidualSquared = trace.gram.displacementResidualSquared
    report.sourceLeft report.sourceRight report.targetLeft report.targetRight ∧
  0 ≤ sourceNorm ∧ 0 ≤ targetNorm ∧
  AnalogyAffinityMatches inner sourceNorm targetNorm report.normalizedAffinity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
