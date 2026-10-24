# spectral_stability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8172d4f7-a73f-6faa-9a3d-1c4a9713334e",
  "kind": "theorem",
  "lexical_name": "spectral_stability",
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
  "slug": "spectral-stability--1b04f7c48f3a5c5a3f0bfe1d",
  "source": {
    "blob": "33ab02a9f186315555e9122ecf5bf2c5f10804cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 191,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b04f7c48f3a5c5a3f0bfe1dcf903be47b102aaf28debe5723892f455232db2a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8172d4f7-a73f-6faa-9a3d-1c4a9713334e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_stability
    (layer : AnalyticLayer A B algebra diffuser transport)
    (x y : B) :
    diffuser.graphNorm (layer.candidate x - layer.candidate y) ≤
      layer.stabilityFactor * diffuser.graphNorm (x - y) := by
  have hnonlinear :=
    layer.nonlinearity.lipschitz
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel x))
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel y))
  have hdiff :
      diffuser.step layer.diffusionTime
          (transport.paired layer.kernel x) -
        diffuser.step layer.diffusionTime
          (transport.paired layer.kernel y) =
      diffuser.step layer.diffusionTime
        (transport.paired layer.kernel (x - y)) := by
    simp
  rw [hdiff] at hnonlinear
  have hdiffuser :=
    diffuser.analytic_bound layer.diffusionTime
      layer.diffusionTime_nonnegative
      (transport.paired layer.kernel (x - y))
  have htransport :=
    transport.paired_graph_bound layer.kernel (x - y)
  calc
    diffuser.graphNorm (layer.candidate x - layer.candidate y)
        ≤ layer.nonlinearity.lipschitzConstant *
            diffuser.graphNorm
              (diffuser.step layer.diffusionTime
                (transport.paired layer.kernel (x - y))) := hnonlinear
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            diffuser.graphNorm (transport.paired layer.kernel (x - y))) := by
          exact mul_le_mul_of_nonneg_left hdiffuser
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            (transport.transportSize layer.kernel *
              diffuser.graphNorm (x - y))) := by
          exact mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_left htransport
              (diffuser.factor_nonnegative layer.diffusionTime))
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ = layer.stabilityFactor * diffuser.graphNorm (x - y) := by
          simp [LinearDiffuser.factor, stabilityFactor]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant844ba43d6a34c55ea4c0307609dd0efda54422601c8bfb54660feee2b1a63be2.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ab02a9f186315555e9122ecf5bf2c5f10804cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
