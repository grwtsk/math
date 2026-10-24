# EdgeRelaxation.relaxedAndNodeOutput_not_crisp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa5ae0fe-9fe2-90d5-e814-677dec30c1cc",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.relaxedAndNodeOutput_not_crisp",
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
  "slug": "edgerelaxation-relaxedandnodeoutput-not-crisp--73abc912210c6854e188abf5",
  "source": {
    "blob": "13e86a394e68c0fd97d3424f93e69f2dbc11d9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 750,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73abc912210c6854e188abf5ce85ff6a62b4a7dc10a0aef62596fe539da477bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa5ae0fe-9fe2-90d5-e814-677dec30c1cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.relaxedAndNodeOutput_not_crisp :
    ∀ p : EdgeRelaxation.Line3,
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.relaxedAndNodeOutput p) := by
  intro p
  cases p <;>
    simp [EdgeRelaxation.relaxedAndNodeOutput,
      EdgeRelaxation.evalFuzzyTreeOverVectors,
      EdgeRelaxation.fuzzyWireValuation,
      EdgeRelaxation.andNode,
      EdgeRelaxation.FuzzyTree.eval,
      EdgeRelaxation.DensityExpr.IsCrisp]

/-- The relaxed OR-node output is no longer syntactically crisp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e86a394e68c0fd97d3424f93e69f2dbc11d9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
