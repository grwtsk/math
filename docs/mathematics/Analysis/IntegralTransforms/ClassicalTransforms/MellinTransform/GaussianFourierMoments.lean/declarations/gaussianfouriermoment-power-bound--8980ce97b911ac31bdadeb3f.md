# gaussianFourierMoment_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3689f1cb-0809-ef7d-3ea6-9cc9fa2eb8a0",
  "kind": "theorem",
  "lexical_name": "gaussianFourierMoment_power_bound",
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
  "slug": "gaussianfouriermoment-power-bound--8980ce97b911ac31bdadeb3f",
  "source": {
    "blob": "7901715642750976156e50ca331fe3a1e25d541f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8980ce97b911ac31bdadeb3ff234788aa9127716f43ed71bbee40c11dc9df364",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3689f1cb-0809-ef7d-3ea6-9cc9fa2eb8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianFourierMoment_power_bound (a : ℝ) (J : ℕ) :
    ∃ C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianFourierMoment J Z hZ j≤C*((2:ℝ)^j/Z)^(-a) := by
  obtain ⟨B,hB,hsource⟩ := gaussianFourier_source_pair a J
  let D := (2:ℝ)^J*(coefficientMomentBound 0 B+coefficientMomentBound J B)
  have hD : 0≤D := mul_nonneg (by positivity)
    (add_nonneg (coefficientMomentBound_nonneg _ _ hB.le) (coefficientMomentBound_nonneg _ _ hB.le))
  refine ⟨D+1,by positivity,?_⟩
  intro Z hZ j
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  have hh := uniform_fourier_one_plus_moment (gaussianDyadicSchwartz Z hZ j) J
    (((2:ℝ)^j/Z)^a) B (Real.rpow_nonneg hr.le a) hB.le (hsource Z hZ j)
  change ((2:ℝ)^j/Z)^a*gaussianFourierMoment J Z hZ j≤D at hh
  have hp := mul_le_mul_of_nonneg_left hh (Real.rpow_pos_of_pos hr (-a)).le
  have hc : ((2:ℝ)^j/Z)^(-a)*((2:ℝ)^j/Z)^a=1 := by
    rw [mul_comm,scale_rpow_cancel _ a hr]
  rw [←mul_assoc,hc,one_mul] at hp
  exact hp.trans (by nlinarith [Real.rpow_pos_of_pos hr (-a)])

end
end GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianFourierMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianFourierMoments.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7901715642750976156e50ca331fe3a1e25d541f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
