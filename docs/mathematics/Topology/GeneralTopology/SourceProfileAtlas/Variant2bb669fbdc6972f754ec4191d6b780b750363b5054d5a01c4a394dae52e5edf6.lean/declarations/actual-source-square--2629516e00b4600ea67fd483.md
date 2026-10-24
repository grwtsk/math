# actual_source_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8041fc7-8e0c-8c84-5036-67938e9adc72",
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
  "slug": "actual-source-square--2629516e00b4600ea67fd483",
  "source": {
    "blob": "de0aea05ed30c89ef42fd91de2f6eff63e59cd6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant2bb669fbdc6972f754ec4191d6b780b750363b5054d5a01c4a394dae52e5edf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2629516e00b4600ea67fd483a3ae91517def1b699d1f7cb390e1cf4ee14907ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceProfileAtlas/Variant2bb669fbdc6972f754ec4191d6b780b750363b5054d5a01c4a394dae52e5edf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8041fc7-8e0c-8c84-5036-67938e9adc72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–200.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceProfileAtlas/Variant2bb669fbdc6972f754ec4191d6b780b750363b5054d5a01c4a394dae52e5edf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant2bb669fbdc6972f754ec4191d6b780b750363b5054d5a01c4a394dae52e5edf6.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0aea05ed30c89ef42fd91de2f6eff63e59cd6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
