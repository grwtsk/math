# actualTiltBandState_norm_sq_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ddc79fe-26e1-f916-4ab8-1946b2fcc0e7",
  "kind": "theorem",
  "lexical_name": "actualTiltBandState_norm_sq_mono",
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
  "slug": "actualtiltbandstate-norm-sq-mono--5f6f49d4f0170cb61cd1a466",
  "source": {
    "blob": "125c391b12486ccb1f098e66a0857e73a1c6854e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f6f49d4f0170cb61cd1a46615bb5ae1e4ef8e0e2a0c518988e939377f0edab7",
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

Occurrence: `result:7ddc79fe-26e1-f916-4ab8-1946b2fcc0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandState_norm_sq_mono {A T U : ℝ} (hA : 1 ≤ A) (hTU : T ≤ U) :
    ‖actualTiltBandState A T‖ ^ 2 ≤ ‖actualTiltBandState A U‖ ^ 2 := by
  rw [actualTiltBandState_norm_sq hA, actualTiltBandState_norm_sq hA]
  apply setIntegral_mono_set (actualTiltStandardSpectrum_norm_sq_integrable hA).integrableOn
    (Eventually.of_forall fun ξ => sq_nonneg _) ?_
  apply Eventually.of_forall
  intro ξ hξ
  exact ⟨(div_le_div_of_nonneg_right (neg_le_neg hTU) (by positivity)).trans hξ.1,
    hξ.2.trans (div_le_div_of_nonneg_right hTU (by positivity))⟩

/-- The true moving-height band carries the exponential central growth, with its norm retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125c391b12486ccb1f098e66a0857e73a1c6854e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
