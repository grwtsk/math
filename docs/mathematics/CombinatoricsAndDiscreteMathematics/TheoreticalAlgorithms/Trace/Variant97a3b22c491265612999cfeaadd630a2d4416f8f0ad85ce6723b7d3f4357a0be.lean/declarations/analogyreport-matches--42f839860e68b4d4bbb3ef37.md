# AnalogyReport.Matches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:413039805326eed02cd9b63f5f2ab6144cb3dbd3f75ce4ddc45b2541807025ff",
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
  "slug": "analogyreport-matches--42f839860e68b4d4bbb3ef37",
  "source": {
    "blob": "712d1f5bbead423413b1ce63df8a5673b7c33af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 931,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42f839860e68b4d4bbb3ef371fd53f1e89b99533fb2535509c325896aca379d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:413039805326eed02cd9b63f5f2ab6144cb3dbd3f75ce4ddc45b2541807025ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–951.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712d1f5bbead423413b1ce63df8a5673b7c33af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
