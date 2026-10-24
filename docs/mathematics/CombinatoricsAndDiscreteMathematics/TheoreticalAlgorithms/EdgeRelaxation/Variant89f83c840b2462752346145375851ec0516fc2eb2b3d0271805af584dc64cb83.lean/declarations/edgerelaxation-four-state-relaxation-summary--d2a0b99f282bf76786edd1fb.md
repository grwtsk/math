# EdgeRelaxation.four_state_relaxation_summary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c14d047-fc64-6dec-365c-6d49eb4eb434",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.four_state_relaxation_summary",
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
  "slug": "edgerelaxation-four-state-relaxation-summary--d2a0b99f282bf76786edd1fb",
  "source": {
    "blob": "13e86a394e68c0fd97d3424f93e69f2dbc11d9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 778,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2a0b99f282bf76786edd1fbd0babdcf79aac05ef1b48e674923a9375a8c6bb4",
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

Occurrence: `result:2c14d047-fc64-6dec-365c-6d49eb4eb434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.four_state_relaxation_summary :
    EdgeRelaxation.BooleanComplementPair
        EdgeRelaxation.centeredPole
        EdgeRelaxation.boundaryShell ∧
      EdgeRelaxation.relax EdgeRelaxation.bottomBoundary =
        EdgeRelaxation.densityBottom ∧
      EdgeRelaxation.relax EdgeRelaxation.topBoundary =
        EdgeRelaxation.densityTop ∧
      EdgeRelaxation.addDensityVec
        (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
        (EdgeRelaxation.relax EdgeRelaxation.boundaryShell) =
        EdgeRelaxation.densityTop ∧
      (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relax EdgeRelaxation.centeredPole p)) ∧
      (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relax EdgeRelaxation.boundaryShell p)) := by
  exact
    ⟨ EdgeRelaxation.centeredPole_boundaryShell_complementPair
    , EdgeRelaxation.relax_bottomBoundary
    , EdgeRelaxation.relax_topBoundary
    , EdgeRelaxation.relaxed_pole_shell_superpose_to_top
    , EdgeRelaxation.relaxed_centeredPole_not_crisp
    , EdgeRelaxation.relaxed_boundaryShell_not_crisp
    ⟩

end Surface.Boolean.Cube
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e86a394e68c0fd97d3424f93e69f2dbc11d9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
