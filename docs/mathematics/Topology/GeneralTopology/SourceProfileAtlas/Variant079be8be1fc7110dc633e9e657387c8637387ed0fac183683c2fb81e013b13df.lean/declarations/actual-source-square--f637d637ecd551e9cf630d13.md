# actual_source_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35cf1727-d782-331b-71cd-4a3089bbd3d4",
  "kind": "theorem",
  "lexical_name": "actual_source_square",
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
  "slug": "actual-source-square--f637d637ecd551e9cf630d13",
  "source": {
    "blob": "f41b5f29b389b342130ef09f976470361597083e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant079be8be1fc7110dc633e9e657387c8637387ed0fac183683c2fb81e013b13df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f637d637ecd551e9cf630d13b5dbe8bd317cccb54275df427c003322037bca1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceProfileAtlas/Variant079be8be1fc7110dc633e9e657387c8637387ed0fac183683c2fb81e013b13df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35cf1727-d782-331b-71cd-4a3089bbd3d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_square {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (normalizedTest explicitSecondDerivative A x) ^ 2 =
      squareReadout (normalizedCoefficients (sChart (sourceCoordinate A)))
        (deriv (deriv sourceBump) (x / A)) (sourceBump (x / A)) / A := by
  rw [← scaleProfile_eq_source hA x]
  unfold scaleProfile squareReadout normalizedCoefficients sChart
  dsimp only
  have hn := sourceCoordinate_normalization hA
  have hZ := sourceNormalization_pos hA
  unfold sourceCoordinate at hn ⊢
  dsimp [sChart] at hn
  rw [hn]
  rw [div_pow, div_pow, Real.sq_sqrt hZ.le, Real.sq_sqrt hA.le]
  field_simp
  ring

/-- The finite coefficient limit does exist; no arithmetic limit is inferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceProfileAtlas/Variant079be8be1fc7110dc633e9e657387c8637387ed0fac183683c2fb81e013b13df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant079be8be1fc7110dc633e9e657387c8637387ed0fac183683c2fb81e013b13df.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41b5f29b389b342130ef09f976470361597083e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
