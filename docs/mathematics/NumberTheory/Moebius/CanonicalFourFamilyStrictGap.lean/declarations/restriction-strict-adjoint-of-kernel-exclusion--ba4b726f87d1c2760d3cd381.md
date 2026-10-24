# restriction_strict_adjoint_of_kernel_exclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d5a55f7-c130-8ac1-b2ea-e6fab43cc20a",
  "kind": "theorem",
  "lexical_name": "restriction_strict_adjoint_of_kernel_exclusion",
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
  "slug": "restriction-strict-adjoint-of-kernel-exclusion--ba4b726f87d1c2760d3cd381",
  "source": {
    "blob": "16ccf57a581b3835d7b8f0756f23243d7b9511dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 31,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4b726f87d1c2760d3cd381ca334f8897eabcdff49a56b569bfb2bdc8b846aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d5a55f7-c130-8ac1-b2ea-e6fab43cc20a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restriction_strict_adjoint_of_kernel_exclusion (X : ℕ)
    (hker : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      0 < canonicalFourFamilyAmbientSourceEnergy X v →
      0 < canonicalFourFamilyWindowOutputEnergy X v) :
    ∃ q : ℝ, 0 ≤ q ∧ q < 1 ∧
      ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      canonicalFourFamilyAmbientSourceEnergy X
        (fun F c => v F c - fullAdjointReconstruction X
          (fun n => canonicalFourFamilyGreenMatrixApply X n v) F c) ≤
      q * canonicalFourFamilyAmbientSourceEnergy X v := by
  have hE (v : CanonicalFourFamilyRealPacket) : 0 ≤ canonicalFourFamilyAmbientSourceEnergy X v :=
    Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hO (v : CanonicalFourFamilyRealPacket) : 0 ≤ canonicalFourFamilyWindowOutputEnergy X v :=
    Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  obtain ⟨a, ha, hab⟩ := GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap.finite_gap
    (restrictionDifferenceSet_finite X) _ _ hE hO hker
  let d := min (fullAdjointDamping X * a) (1 / 2)
  have hd : 0 < d := lt_min (mul_pos (fullAdjointDamping_pos X) ha) (by norm_num)
  refine ⟨1-d, by have := min_le_right (fullAdjointDamping X*a) (1/2:ℝ); dsimp [d]; linarith,
    by linarith, ?_⟩
  intro v hv
  have h1 := fullAdjointResidual_descent X v
  have h2 := mul_le_mul_of_nonneg_left (hab v hv) (fullAdjointDamping_pos X).le
  have h3 := mul_le_mul_of_nonneg_right (min_le_left (fullAdjointDamping X*a) (1/2:ℝ)) (hE v)
  change d * canonicalFourFamilyAmbientSourceEnergy X v ≤ _ at h3
  nlinarith only [h1,h2,h3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ccf57a581b3835d7b8f0756f23243d7b9511dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
