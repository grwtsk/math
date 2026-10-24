# three_stage_localError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28fb2a0b-27d4-d914-f70f-c03763b52731",
  "kind": "theorem",
  "lexical_name": "three_stage_localError",
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
  "slug": "three-stage-localerror--133fce90e3f26e3ac1b2a360",
  "source": {
    "blob": "8cbcf2e346fe7844abd71515eac2408847a97df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variant0333a604dcfbf65762b28221fd3d70fa56161c2c3f4ec51ec348a03b61ff2cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:133fce90e3f26e3ac1b2a36098d9ca73ada5d21e5b8d1f00dda9bec24fa2ccfb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variant0333a604dcfbf65762b28221fd3d70fa56161c2c3f4ec51ec348a03b61ff2cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28fb2a0b-27d4-d914-f70f-c03763b52731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_stage_localError
    {W : MetricCarrier.{u}}
    (first : ControlledArrow W X)
    (second : ControlledArrow X Y)
    (third : ControlledArrow Y Z) :
    (collapse
      (.cons first
        (.cons second
          (.cons third (.nil Z))))).localError =
      first.localError * second.lipschitz * third.lipschitz +
        second.localError * third.lipschitz +
        third.localError := by
  simp [collapse, ControlledApproximation.comp,
    ControlledApproximation.id]
  ring

/-- End-to-end soundness for a common exact input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variant0333a604dcfbf65762b28221fd3d70fa56161c2c3f4ec51ec348a03b61ff2cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variant0333a604dcfbf65762b28221fd3d70fa56161c2c3f4ec51ec348a03b61ff2cad.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cbcf2e346fe7844abd71515eac2408847a97df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
