# map_matrix_volume_pi_eq_smul_volume_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d2f5ada-f835-ff8b-32b3-f0e15fdb8ad1",
  "kind": "theorem",
  "lexical_name": "map_matrix_volume_pi_eq_smul_volume_pi",
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
  "slug": "map-matrix-volume-pi-eq-smul-volume-pi--c41f1cbda30ea7c1048c5b6d",
  "source": {
    "blob": "32e2e27d3ad83cbf3121d52b39c5b809de993d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 401,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c41f1cbda30ea7c1048c5b6dcdb898b61d997bdae79d39d3024026bdad2d8486",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2f5ada-f835-ff8b-32b3-f0e15fdb8ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_matrix_volume_pi_eq_smul_volume_pi [DecidableEq ι] {M : Matrix ι ι ℝ} (hM : det M ≠ 0) :
    Measure.map (toLin' M) volume = ENNReal.ofReal (abs (det M)⁻¹) • volume := by
  -- This follows from the cases we have already proved, of diagonal matrices and transvections,
  -- as these matrices generate all invertible matrices.
  apply diagonal_transvection_induction_of_det_ne_zero _ M hM
  · intro D hD
    conv_rhs => rw [← smul_map_diagonal_volume_pi hD]
    rw [smul_smul, ← ENNReal.ofReal_mul (abs_nonneg _), ← abs_mul, inv_mul_cancel₀ hD, abs_one,
      ENNReal.ofReal_one, one_smul]
  · intro t
    simp_rw [Matrix.TransvectionStruct.det, _root_.inv_one, abs_one, ENNReal.ofReal_one, one_smul,
      (volume_preserving_transvectionStruct _).map_eq]
  · intro A B _ _ IHA IHB
    rw [toLin'_mul, det_mul, LinearMap.coe_comp, ← Measure.map_map, IHB, Measure.map_smul, IHA,
      smul_smul, ← ENNReal.ofReal_mul (abs_nonneg _), ← abs_mul, mul_comm, mul_inv]
    · apply Continuous.measurable
      apply LinearMap.continuous_on_pi
    · apply Continuous.measurable
      apply LinearMap.continuous_on_pi

/-- Any invertible linear map rescales Lebesgue measure through the absolute value of its
determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e2e27d3ad83cbf3121d52b39c5b809de993d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
