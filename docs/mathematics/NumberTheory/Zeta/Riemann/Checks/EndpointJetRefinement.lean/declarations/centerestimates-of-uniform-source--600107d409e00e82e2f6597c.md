# centerEstimates_of_uniform_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178c1338-3bc3-ada5-177b-13ee4310612d",
  "kind": "theorem",
  "lexical_name": "centerEstimates_of_uniform_source",
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
  "slug": "centerestimates-of-uniform-source--600107d409e00e82e2f6597c",
  "source": {
    "blob": "b59d65b5e9fca8da9eacfd75f2d7d295a04ffc06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 110,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:600107d409e00e82e2f6597c9dc6c04adb55f8ce7a1716ea01cf0e67848d91b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178c1338-3bc3-ada5-177b-13ee4310612d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centerEstimates_of_uniform_source
    (hsource : ∀ z ∈ closedBall (toComplex center) (outerRadius : ℝ),
      ‖riemannZeta z - EndpointCorrectedJet.model 81 8 z‖ ≤ (1 / 10 ^ 16 : ℝ)) :
    CauchyNewtonWitness.CenterEstimates center centerData := by
  have hS : (0 : ℝ) < outerRadius := by norm_num [outerRadius]
  have hcenter : toComplex center ∈ closedBall (toComplex center) (outerRadius : ℝ) :=
    mem_closedBall_self hS.le
  have hv := hsource (toComplex center) hcenter
  have hd := EndpointCorrectedJet.derivative_error_of_uniform_source
    (by decide : 1 ≤ 81) hS outer_avoids_pole
    (fun z hz => hsource z (sphere_subset_closedBall hz))
  rw [← EndpointCorrectedJet.deriv_model (by decide : 1 ≤ 81) 8
    (outer_avoids_pole _ hcenter)] at hd
  constructor
  · calc
      _ ≤ ‖riemannZeta (toComplex center) - EndpointCorrectedJet.model 81 8 (toComplex center)‖ +
          ‖EndpointCorrectedJet.model 81 8 (toComplex center) - toComplex centerData.value‖ := by
        simpa only [dist_eq_norm] using dist_triangle (riemannZeta (toComplex center))
          (EndpointCorrectedJet.model 81 8 (toComplex center)) (toComplex centerData.value)
      _ ≤ (1 / 10 ^ 16 : ℝ) + 1 / 10 ^ 17 := add_le_add hv finite_presented_errors.1
      _ ≤ _ := by norm_num [centerData]
  · calc
      _ ≤ ‖deriv riemannZeta (toComplex center) - deriv (EndpointCorrectedJet.model 81 8) (toComplex center)‖ +
          ‖deriv (EndpointCorrectedJet.model 81 8) (toComplex center) - toComplex centerData.derivative‖ := by
        simpa only [dist_eq_norm] using dist_triangle (deriv riemannZeta (toComplex center))
          (deriv (EndpointCorrectedJet.model 81 8) (toComplex center)) (toComplex centerData.derivative)
      _ ≤ (1 / 10 ^ 16 : ℝ) / (outerRadius : ℝ) + 1 / 10 ^ 17 :=
        add_le_add hd finite_presented_errors.2
      _ ≤ _ := by norm_num [outerRadius, centerData]

/-- A conditional local result only, with the unchanged source, radius and Newton target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59d65b5e9fca8da9eacfd75f2d7d295a04ffc06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
