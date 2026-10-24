# normalizedOperator_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8114596-b94a-f324-de13-64e6e3f2e755",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_continuous",
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
  "slug": "normalizedoperator-continuous--91add2e4c57eca341aae6488",
  "source": {
    "blob": "6db8ae53708139ec792306a735e8d99b5d0a8dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91add2e4c57eca341aae648828b78a79ad386cbffc115a126316ba7db5421fe7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8114596-b94a-f324-de13-64e6e3f2e755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_continuous {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h) (A : ℝ) :
    Continuous (normalizedOperator h A) := by
  have hφ : ContDiff ℝ 2 (scaledProfile h A) :=
    (hc.comp (contDiff_id.div_const A)).div_const (Real.sqrt A)
  have hd : ContDiff ℝ 1 (deriv (scaledProfile h A)) := hφ.deriv'
  exact (hd.continuous_deriv_one.sub (hφ.continuous.div_const 4)).div_const _

/-- The normalized source has compact support of radius `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db8ae53708139ec792306a735e8d99b5d0a8dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
