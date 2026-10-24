# actualTiltBandState_moving_energy_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40df8c7-67dc-eef0-8b95-7ddcbf8e386c",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_moving_energy_eventually_lower",
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
  "slug": "actualtiltbandstate-moving-energy-eventually-lower--6f7e6af01bb38b764e21feca",
  "source": {
    "blob": "125c391b12486ccb1f098e66a0857e73a1c6854e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f7e6af01bb38b764e21feca14b0e3ce920f861c1cb20a17d9c4e7921ea66f5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40df8c7-67dc-eef0-8b95-7ddcbf8e386c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_moving_energy_eventually_lower :
    ∀ᶠ A : ℝ in atTop, actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 ≤
      actualRightLineMass (3 / 2) *
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    actualCentralFrequencyMass_eventually_lower] with A hA hh
  exact hh.trans ((actualCentralFrequencyMass_le_band_energy hA).trans
    (mul_le_mul_of_nonneg_left (actualTiltBandState_norm_sq_mono hA
      (actualCentralFrequencyRadius_le_height hA)) (actualRightLineMass_nonneg _)))

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedGrowth
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125c391b12486ccb1f098e66a0857e73a1c6854e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
